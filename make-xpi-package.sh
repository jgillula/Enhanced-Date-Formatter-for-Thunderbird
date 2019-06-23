#!/bin/bash

# First get the version number directly from the install.rdf file
version_number=`sed -n -e 's|.*<em:version>\(.*\)</em:version>|\1|p' src/install.rdf`

# Go into the source directory...
cd src

# Delete any extraneous files
find . -name *~ -delete

# And make the xpi file by zipping stuff up!
zip -r ../enhanced_date_formatter-$version_number-tb.xpi *
