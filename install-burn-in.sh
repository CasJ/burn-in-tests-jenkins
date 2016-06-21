#!/bin/bash
git clone https://github.com/CasJ/burn-in-tests-poc
pip install burn-in-tests-poc/

cd /opt/stack/new/tempest
ostestr --regex burn-in 
