# Setting up a VPS on Oracle Free Tier

## Update
```bash
apt update
apt upgrade
```

## Firewall
```bash
sudo apt install firewalld
sudo firewall-cmd --zone=public --permanent --add-port=8000/tcp
sudo firewall-cmd --reload
sudo firewall-cmd --info-zone=public
```
https://stackoverflow.com/questions/65005814/opening-a-specific-port-in-oracle-cloud-ubuntu-18

https://oracle-base.com/articles/vm/oracle-cloud-infrastructure-oci-amend-firewall-rules

## Sabnzbd
```bash
-- Accessing the web-interface
Needed to set host on Oracle VPS to 0.0.0.0
After starting SABnzbd, access the web-interface by browsing to http://127.0.0.1:8080.
SABnzbd can only be accessed on the running computer. Change host = 127.0.0.1 in /var/lib/sabnzbd/sabnzbd.ini to host = 0.0.0.0 to allow access from another computer.
SABnzbd listens on port 8080. Change port = 8080 in /var/lib/sabnzbd/sabnzbd.ini to the preferred port.

-- inet_exposure
Setting in sabnzbd.ini
The relevant setting in sabnzbd.ini is inet_exposure, with these values:

    0 = No access (default)
    1 = Add NZB files
    2 = API (no Config)
    3 = Full API
    4 = Full Web interface
    5 = Full Web interface - Only external access requires login
```

https://wiki.archlinux.org/title/SABnzbd

https://sabnzbd.org/wiki/extra/access-denied.html






