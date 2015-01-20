#!/bin/bash
wget -r --no-parent --reject "index.html*" http://www-itec.uni-klu.ac.at/ftp/datasets/DASHDataset2014/BigBuckBunny/
mv http://www-itec.uni-klu.ac.at/ftp /var/www/ftp
