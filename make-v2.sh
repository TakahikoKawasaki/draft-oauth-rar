#!/bin/bash

FILENAME=`grep value main.md | head -1 | cut -d'"' -f2`

mmark -2 main.md > $FILENAME.xml
`which xml2rfc` --legacy --html $FILENAME.xml
`which xml2rfc` --legacy --text $FILENAME.xml

