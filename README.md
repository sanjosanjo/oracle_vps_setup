# Oracle VPS setup
Setting up a VPS on Oracle Free Tier

## Update
```bash
apt update
apt upgrade
```

## byobu
```bash
opening firewall
https://stackoverflow.com/questions/65005814/opening-a-specific-port-in-oracle-cloud-ubuntu-18
https://oracle-base.com/articles/vm/oracle-cloud-infrastructure-oci-amend-firewall-rules
sudo apt install firewalld
sudo firewall-cmd --zone=public --permanent --add-port=8888/tcp
sudo firewall-cmd --reload
