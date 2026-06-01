# MariaDB serveri paigaldus ja seadistamine

## 1. Linuxi paigalduskeskkond
Valisin paigalduskeskkonnaks **Ubuntu Server Proxmox virtuaalmasinas**.

Ligipääs serverile:
- Proxmox konsool
- SSH ühendus:
```bash
ssh karl@serveri_ip
```

Kasutajanimi sisaldab minu nime: `karl`

---

## 2. MariaDB serveri paigaldamine

### Kasutatud käsud
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install mariadb-server -y
sudo systemctl enable mariadb
sudo systemctl start mariadb
```

### MariaDB versioon
```bash
mariadb --version
```

Näide väljundist:
```bash
mariadb  Ver 15.1 Distrib 10.11.6-MariaDB
```

### Kas teenus käivitub automaatselt?
Jah.

Kontroll:
```bash
systemctl is-enabled mariadb
```

Väljund:
```bash
enabled
```

---

## 3. Esmane turvaseadistus

Käivitasin:
```bash
sudo mysql_secure_installation
```

Valikud:
- unix_socket autentimine: **Jah**
- anonüümsed kasutajad eemaldatud: **Jah**
- testandmebaas eemaldatud: **Jah**
- root remote login keelatud: **Jah**

---

## 4. Võrguturve

Muutsin faili:
```bash
sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf
```

Lisatud / kontrollitud read:
```ini
bind-address = 127.0.0.1
local-infile = 0
skip-name-resolve
skip-networking = 1
```

Muudatuste eesmärk:
- ainult localhost ühendused
- failist import keelatud
- DNS lookup keelatud
- võrk täielikult suletud

---

## 5. Teenuse taaskäivitus ja kontroll

Taaskäivitus:
```bash
sudo systemctl restart mariadb
```

Pordi kontroll:
```bash
ss -tlnp | grep mariadb
```

Tulemus:
- port **3306 EI OLE avatud**, sest `skip-networking = 1`

MariaDB seadete kontroll:
```bash
sudo mariadb -u root
SHOW VARIABLES LIKE 'bind_address';
EXIT;
```

Tulemus:
```sql
127.0.0.1
```

---

## 6. Andmebaasi varukoopia lisamine GitHubist

### Repo kloonimine
```bash
git clone https://github.com/karl95/Mario_auto_projekt.git
cd Mario_auto_projekt/autorent
```

### SQL varukoopia import
```bash
sudo mariadb -u root
CREATE DATABASE autorent;
EXIT;
```

```bash
mariadb -u root autorent < database/backup.sql
```

Apache2 seadistamine ja leht oleks võrgus saadaval 

Mario Auto Projekt — Apache2 seadistamise dokumentatsioon
See dokumentatsioon kirjeldab täpselt, kuidas seadistada Apache2 nii, et projekt autorent töötaks portil 9000 ja oleks kättesaadav võrgust aadressil:

Kood
http://10.0.22.104:9000/index.php

1. Apache2 teenusefaili parandamine (kriitiline)
Kui Apache ei käivitu ja annab vead:

Config variable ${APACHE_RUN_USER} is not defined

bad user name ${APACHE_RUN_USER}

could not log pid to file /var/run/apache2/apache2.pid

start operation timed out

siis on teenusefail rikutud.
✔ Lahendus: taastada /etc/systemd/system/apache2.service
Faili kogu sisu peab olema järgmine:

Kood
[Unit]
Description=Apache Web Server
After=network.target
[Service]
Type=forking
Environment="APACHE_RUN_USER=www-data"
Environment="APACHE_RUN_GROUP=www-data"
Environment="APACHE_PID_FILE=/run/apache2/apache2.pid"
Environment="APACHE_RUN_DIR=/run/apache2"
Environment="APACHE_LOCK_DIR=/var/lock/apache2"
Environment="APACHE_LOG_DIR=/var/log/apache2"
ExecStart=/usr/sbin/apache2 -k start
ExecReload=/usr/sbin/apache2 -k graceful
ExecStop=/usr/sbin/apache2 -k stop
[Install]
WantedBy=multi-user.target
```
Seejärel:
Kood
sudo mkdir -p /run/apache2
sudo chown -R www-data:www-data /run/apache2
sudo systemctl daemon-reload
sudo systemctl restart apache2

Fail: /etc/apache2/ports.conf

Kood
Listen 0.0.0.0:9000
Kõik teised Listen read kustutada.

🏠 3. VirtualHost seadistus
Fail: /etc/apache2/sites-enabled/000-default.conf

Kogu sisu peab olema ainult see:

Kood
<VirtualHost *:9000>
    ServerName 10.0.22.104
    DocumentRoot /var/www/html/autorent

    <Directory /var/www/html/autorent>
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

Kontrolli, et DocumentRoot kaust eksisteerib:
Kood
/var/www/html/autorent/index.php

🔍 4. Kontroll: kas Apache kasutab õiget VirtualHosti?
Kood
apache2ctl -S
Oodatav tulemus:

Kood
*:9000 10.0.22.104 (/etc/apache2/sites-enabled/000-default.conf:1)
Kui see rida on olemas → VirtualHost töötab.

🌍 5. Õige URL projekti avamiseks
Kuna DocumentRoot on /autorent, siis URL EI OLE:
Kood
/autorent/index.php
Õige URL on:
Kood
http://10.0.22.104:9000/index.php

curl -v http://10.0.22.104:9000

