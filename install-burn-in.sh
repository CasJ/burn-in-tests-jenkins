#!/bin/bash
cd ~
git clone https://github.com/CasJ/burn-in-tests-poc
pip install -e burn-in-tests-poc/

cd /opt/stack/new/tempest
python -m subunit.run discover -s burn_in_tests_poc_tempest_plugin.tests.api.compute | subunit-1to2 | subunit2csv > tempest_output
