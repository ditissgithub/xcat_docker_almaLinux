#!/bin/bash
dnf install initscripts -y
dnf install chkconfig -y
systemctl restart httpd
systemctl restart tftp
systemctl restart xcatd 
systemctl enable xcatd
systemctl enable tftp
sed -i 's/rocky/alma/g' /opt/xcat/lib/perl/xCAT_plugin/geninitrd.pm
sed -i 's/rocky/alma/g' /opt/xcat/lib/perl/xCAT_plugin/imgcapture.pm
sed -i 's/rocky/alma/g' /opt/xcat/lib/perl/xCAT_plugin/imgport.pm
sed -i 's/rocky/alma/g' /opt/xcat/lib/perl/xCAT_plugin/ontap.pm
sed -i 's/rocky/alma/g' /opt/xcat/lib/perl/xCAT_plugin/route.pm
sed -i 's/rocky/alma/g' /opt/xcat/lib/perl/xCAT/Postage.pm
sed -i 's/rocky/alma/g' /opt/xcat/lib/perl/xCAT/SvrUtils.pm
sed -i 's/rocky/alma/g' /opt/xcat/lib/perl/xCAT/Template.pm
sed -i 's/rocky/alma/g' /opt/xcat/lib/perl/xCAT/Schema.pm
sed -i 's/rocky/alma/g' /opt/xcat/lib/perl/xCAT/Utils.pm
sed -i 's/rocky/alma/g' /opt/xcat/lib/perl/xCAT_plugin/anaconda.pm
sed -i 's/Rocky/Alma/g' /opt/xcat/lib/perl/xCAT_plugin/anaconda.pm
sed -i 's/rocky8.5/alma8.6/g' /opt/xcat/lib/perl/xCAT/data/discinfo.pm
sed -i 's/1636882174.934804/1652294731.711015' /opt/xcat/lib/perl/xCAT/data/discinfo.pm    #dvd.iso
sed -i 's/rocky8.4/alma8.6/g' /opt/xcat/lib/perl/xCAT/data/discinfo.pm   
sed -i 's/1624205633.869423/1652294731.711601' /opt/xcat/lib/perl/xCAT/data/discinfo.pm    #minimal.iso

# add some files related to xcat

mkdir -p xCAT-server/share/xcat/install/alma/
mv compute.alma8.pkglist xCAT-server/share/xcat/install/alma/compute.alma8.pkglist
mv compute.alma8.tmpl xCAT-server/share/xcat/install/alma/compute.alma8.tmpl
mv service.alma8.pkglist xCAT-server/share/xcat/install/alma/service.alma8.pkglist
mv service.alma8.tmpl xCAT-server/share/xcat/install/alma/service.alma8.tmpl
mv service.alma8.x86_64.otherpkgs.pkglist xCAT-server/share/xcat/install/alma/service.alma8.x86_64.otherpkgs.pkglist


mkdir -p xCAT-server/share/xcat/netboot/alma/
mv compute.alma8.x86_64.exlist xCAT-server/share/xcat/netboot/alma/compute.alma8.x86_64.exlist
mv compute.alma8.x86_64.pkglist xCAT-server/share/xcat/netboot/alma/compute.alma8.x86_64.pkglist
mv compute.alma8.x86_64.postinstall  xCAT-server/share/xcat/netboot/alma/compute.alma8.x86_64.postinstall

mv dracut_047 xCAT-server/share/xcat/netboot/alma/dracut_047
touch xCAT-server/share/xcat/netboot/alma/genimage
mv geninitrd xCAT-server/share/xcat/netboot/alma/geninitrd

