#!/usr/bin/bash

for i in Perseus\:text\:2011.01.*; do xsltproc -o html/$i.html transform.xsl $i; done
