#!/bin/bash
cd ~
git clone https://github.com/CasJ/burn-in-tests-poc
pip install -e burn-in-tests-poc/

cd /opt/stack/new/tempest
ostestr --regex burn-in 
