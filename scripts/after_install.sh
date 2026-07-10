#!/bin/bash
if systemctl list-unit-files | grep -q httpd.service; then
    systemctl restart httpd
    systemctl enable httpd
else
    systemctl restart apache2
    systemctl enable apache2
fi
