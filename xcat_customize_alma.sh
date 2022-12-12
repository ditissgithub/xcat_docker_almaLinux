#!/bin/bash
dnf install initscripts -y
dnf install chkconfig -y
systemctl restart httpd
systemctl restart tftp
systemctl restart xcatd 
systemctl enable xcatd
