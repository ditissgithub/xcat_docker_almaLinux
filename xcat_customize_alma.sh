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


