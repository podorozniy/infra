#! /bin/bash
git clone --single-branch --branch podorozny-startup-script https://github.com/podorozniy/infra.git
cd reddit && bundle install
puma -d
