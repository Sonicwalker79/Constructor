if [ -f $1/ISO/casper/filesystem.manifest ]
then
cat > /tmp/$$.control <<FOO
/casper/d
/libdebian-installer4/d
/ubiquity/d
/ubuntu-live/d
/user-setup/d
/gparted/d
FOO
sed -f /tmp/$$.control < $1/ISO/casper/filesystem.manifest > $1/ISO/casper/filesystem.manifest-desktop
rm /tmp/$$.control
cat $1/ISO/casper/filesystem.manifest | wc -l
cat $1/ISO/casper/filesystem.manifest-desktop | wc -l
else
echo "Usage: updateManifest.sh project"
fi
