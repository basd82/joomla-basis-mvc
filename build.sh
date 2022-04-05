#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "Naam component ontbreekt"
fi
NAAM=$(echo "$1"|awk '{print tolower($0)}')
UPNAAM="$(tr '[:lower:]' '[:upper:]' <<< ${NAAM:0:1})${NAAM:1}"
UPFULLNAAM=${NAAM^^}
MAAND=$(date +%B)
JAAR=$(date +%Y)
CREATE="$MAAND $JAAR"
echo "normaal: $NAAM UPPER: $UPNAAM FULL = $UPFULLNAAM $CREATE"
mkdir -p ../$NAAM/admin/language/en-GB
mkdir -p ../$NAAM/admin/language/nl-NL
mkdir -p ../$NAAM/admin/services
mkdir -p ../$NAAM/admin/src/Controller
mkdir -p ../$NAAM/admin/src/View
mkdir -p ../$NAAM/admin/src/View/$UPNAAM
mkdir -p ../$NAAM/admin/tmpl/$NAAM
mkdir -p ../$NAAM/site/language/en-GB
mkdir -p ../$NAAM/site/language/nl-NL
mkdir -p ../$NAAM/site/src/Controller
mkdir -p ../$NAAM/site/src/View/$UPNAAM
mkdir -p ../$NAAM/site/tmpl/$NAAM
cp ./basis.xml ../$NAAM/$NAAM.xml
# zet create datum goed
sed -i "s/datum/$CREATE/g" ../$NAAM/$NAAM.xml
#zet namen goed
sed -i "s/BASIS/$UPFULLNAAM/g" ../$NAAM/$NAAM.xml
sed -i "s/Basis/$UPNAAM/g" ../$NAAM/$NAAM.xml
sed -i "s/basis/$NAAM/g" ../$NAAM/$NAAM.xml
#kopieer lang files
cp admin/language/en-GB/com_basis.ini ../$NAAM/admin/language/en-GB/com_$NAAM.ini
cp admin/language/en-GB/com_basis.sys.ini ../$NAAM/admin/language/en-GB/com_$NAAM.sys.ini
cp admin/services/provider.php ../$NAAM/admin/services/provider.php
cp admin/src/Controller/DisplayController.php ../$NAAM/admin/src/Controller/DisplayController.php
cp admin/src/View/Basis/HtmlView.php ../$NAAM/admin/src/View/$UPNAAM/HtmlView.php
cp admin/tmpl/basis/default.php ../$NAAM/admin/tmpl/$NAAM/default.php
cp site/language/en-GB/com_basis.ini ../$NAAM/site/language/en-GB/com_$NAAM.ini
cp site/src/Controller/DisplayController.php ../$NAAM/site/src/Controller/DisplayController.php
cp site/src/View/basis/HtmlView.php ../$NAAM/site/src/View/$UPNAAM/HtmlView.php
cp site/tmpl/basis/default.php ../$NAAM/site/tmpl/$NAAM/default.php
cp site/tmpl/basis/default.xml ../$NAAM/site/tmpl/$NAAM/default.xml

for f in ../$NAAM/admin/language/en-GB/com_$NAAM.ini ../$NAAM/admin/language/en-GB/com_$NAAM.sys.ini ../$NAAM/admin/services/provider.php ../$NAAM/admin/src/Controller/DisplayController.php ../$NAAM/admin/src/View/$UPNAAM/HtmlView.php ../$NAAM/admin/tmpl/$NAAM/default.php ../$NAAM/site/language/en-GB/com_$NAAM.ini ../$NAAM/site/src/Controller/DisplayController.php ../$NAAM/site/src/View/$UPNAAM/HtmlView.php ../$NAAM/site/tmpl/$NAAM/default.php ../$NAAM/site/tmpl/$NAAM/default.xml
do
sed -i "s/BASIS/$UPFULLNAAM/g" $f
sed -i "s/Basis/$UPNAAM/g" $f
sed -i "s/basis/$NAAM/g" $f
done
cp ../$NAAM/admin/language/en-GB/* ../$NAAM/admin/language/nl-NL/
cp ../$NAAM/site/language/en-GB/* ../$NAAM/site/language/nl-NL/
cd ../$NAAM
zip $NAAM.zip * -r
cd ..
