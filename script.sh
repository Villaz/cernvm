# !/bin/bash
mkdir -p /var/spool/checkout
cd /var/spool/checkout
git clone https://github.com/Villaz/testvcycle.git
chmod u+x /var/spool/checkout/testvcycle/bootstrap_docker
/var/spool/checkout/testvcycle/bootstrap_docker HELIX_NEBULA_EGI srm://srm-atlas.cern.ch BIFI http://%f/
