#!/usr/bin/env python
# Jonas Schnelli, 2013
<<<<<<< HEAD
# make sure the RoseOnlycoin-Qt.app contains the right plist (including the right version)
=======
# make sure the Hirocoin-Qt.app contains the right plist (including the right version)
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
# fix made because of serval bugs in Qt mac deployment (https://bugreports.qt-project.org/browse/QTBUG-21267)

from string import Template
from datetime import date

bitcoinDir = "./";

inFile     = bitcoinDir+"/share/qt/Info.plist"
<<<<<<< HEAD
outFile    = "RoseOnlycoin-Qt.app/Contents/Info.plist"
=======
outFile    = "Hirocoin-Qt.app/Contents/Info.plist"
>>>>>>> 4e4ef7e73515f26174f9ca9d15fdcb46b1890589
version    = "unknown";

fileForGrabbingVersion = bitcoinDir+"bitcoin-qt.pro"
for line in open(fileForGrabbingVersion):
	lineArr = line.replace(" ", "").split("=");
	if lineArr[0].startswith("VERSION"):
		version = lineArr[1].replace("\n", "");

fIn = open(inFile, "r")
fileContent = fIn.read()
s = Template(fileContent)
newFileContent = s.substitute(VERSION=version,YEAR=date.today().year)

fOut = open(outFile, "w");
fOut.write(newFileContent);

print "Info.plist fresh created"
