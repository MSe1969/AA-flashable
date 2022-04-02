#!/bin/bash

rm lin18.1-microG-AA_*

cd install
zip -r ../lin18.1-microG-AA_install_V0.01.zip *
cd ../uninstall
zip -r ../lin18.1-microG-AA_remove_V0.01.zip *
cd ..

