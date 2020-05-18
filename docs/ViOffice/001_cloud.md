# Cloud

## Table of Contents

1. [Prerequesists](#prerequesists)

	1.1 [PHP Configuration](#php-configuration)

	1.2 [Configure Database](#configure-database)

2. [Install Nextcloud](#install-nextcloud)

	2.1 [Setup Nextcloud](#setup-nextcloud)

	2.2 [Install Nextcloud Apps](#install-nextcloud-apps)

	2.3 [Configure Nextcloud](#configure-nextcloud)
	

## Prerequesists

Install required packages

```
apt install mariadb-server php-fpm php-gd php-mysql php-curl php-xml php-zip php-intl php-mbstring php-bz2 php-json php-apcu php-imagick
```

### PHP Configuration

File `/etc/php/7.2/fpm/pool.d/www.conf`

```
user = www-data
group = www-data

listen = /run/php/php7.2-fpm.sock

env[HOSTNAME] = $HOSTNAME
env[PATH] = /usr/local/bin:/usr/bin:/bin
env[TMP] = /tmp
env[TMPDIR] = /tmp
env[TEMP] = /tmp
```

File `/etc/php/7.2/fpm/php.ini`

```
cgi.fix_pathinfo = 0

open_basedir = /var/www/:/tmp/

memory_limit = 512M

opcache.enable = 1
opcache.enable_cli = 1
opcache.memory_consumption = 128
opcache.interned_strings_buffer = 8
opcache.max_accelerated_files = 10000
opcache.revalidate_freq = 1
opcache.save_comments = 1
```

File `/etc/php/7.2/cli/php.ini`

```
cgi.fix_pathinfo = 0

open_basedir = /var/www/:/tmp/:/var/nextcloud_data
```

### Create Database

Query Database as root user

```
mysql -u root -p
```

Create Database

```
CREATE USER nxuser@localhost IDENTIFIED BY 'MeInPasSw0rT';
CREATE DATABASE nextcloud_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
GRANT ALL PRIVILEGES on nextcloud_db.* to nxuser@localhost;
FLUSH privileges;
exit;
```

## Install Nextcloud

Download Nextcloud

```
mkdir -p /var/www/cloud/
wget https://download.nextcloud.com/server/installer/setup-nextcloud.php -O /var/www/cloud/setup-nextcloud.php

chown -R www-data:www-data /var/www/cloud
```

Call your server's domain via your webbrowser to proceed with the installation. Choose MariaDB as database.

### Setup Nextcloud

File `/var/www/nextcloud/config/config.php`

```
'memcache.local' => '\OC\Memcache\APCu',

'overwriteprotocol' => 'https',

'logtimezone' => 'Europe/Berlin',
```

Configure Nextcloud's Cron

```
crontab -u www-data -e
```

Every 5 minutes
```
*/5  *  *  *  * php -f /var/www/nextcloud/cron.php > /dev/null 2>&1
```

### Install Nextcloud Apps

Login to Nextcloud via your webbrowser, install following apps:

```
#Accessibility
#Activity
Announcement center
Appointments
AppOrder
#Brute-force settings
#Calendar
#Collaborative tags
#Comments
#Contacts
Deck
#Deleted files
Draw.io
DropIt
External sites
Extract
#File sharing
Files From Mail
#First Run Wizard
Group Folders
Group quota
#Log Reader
#Mail
#Monitoring
#Nextcloud Announcements
#Notifications
Notifications for calendar event updates
ONLYOFFICE
Password policy
Passwords
#PDF viewer
#Photos
Polls
Printer
#Privacy
Quota warning
#Recommendations
#Right click
#Share by mail
Side menu
#Support
Terms of service
#Text
Theming
#Update notification
Usage survey
#Versions
#Video player
```

### Configure Nextcloud

Basics:

- Configure SMTP (WIP)


Sharing:

- Sharing with group only: `enable`

- Federated Cloud Sharing: `disable`


Security:

- Serverside Encryption: `enable`


Design:

- Name: `VO-Cloud`

- URL: `use-url-here`

- Slogan: ` `

- Colour: `#354f6a`

- Logo: `vo_none.png`

- Loginscreen: ` `

- URL to Impressum: ` `

- URL to privacy declaration: ` `

- Header image: `vo_none.png`

- Favicon: `vo_darkblue.png`


OnlyOffice:

- Serveraddress: ` `

- Secret key: ` `

- standard extensions: all but `csv`, `epub`, `html`, `txt`

- Feedback & Support: `disable`

- Tabs: `enable`


External Sites:

- VirtualOffice, `url-here`, `vo_none64.png`, header, forward

- Chat, `url-here`, `chat_mono64.png`, header, forward

- Conference, `url-here`, `conference_mono64.png`, header, no-forward


Terms of Use:

- /


Sidemenu:

- Background Colour: `#354f6a`, `#354f6a`

- Background Colour of current app: `#5881AB`

- Text Colour: `#ffffff`

- Force light icons: `yes`

- Icon: `default`

- Position: `before the logo`

- Hidden logo: `no`

- Hide on public pages: `no`

- Open on mouse hover: `no`

- Enable Shortcuts: `yes`

- Icons and Text: `Big icons`, `normal text`


App-Order:

```
VirtualOffice
Chat
Conference
Dateien
Kalender
E-Mail
Kontakte
Notizen
Deck
Termine
Umfragen
DISABLE EVERYTHING ELSE
```


Additional Settings:

- Draw.io:

    - theme: `kennedy`

    - open XML: `yes`

