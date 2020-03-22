#! /bin/bash
git clone https://github.com/podorozniy/infra.git --branch podorozny-startup-script
cd infra/
chmod u+x 1install_ruby.sh 2install_mongodb.sh 3deploy.sh
./1install_ruby.sh
./2install_mongodb.sh
./3deploy.sh