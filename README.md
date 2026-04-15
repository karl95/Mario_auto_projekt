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

---

## 7. Ekraanitõmmised
Lisa kausta:

```bash
database/screenshots/
```

Näiteks:
- `mariadb-login.png`
- `port-check.png`

README sisse:
```md
![MariaDB login](database/screenshots/mariadb-login.png)
![Port check](database/screenshots/port-check.png)
```
