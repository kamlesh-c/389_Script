#this for modifing the entry   

#! /bin/bash
for ((  i=0 ; i<50 ; i++ ))
do
ldapmodify -D "cn=Directory Manager" -p 389 -h localhost -w test1234 << EOF
dn: uid=test329,ou=People,dc=example,dc=com
changetype: modify
replace: sn
sn: change$i
EOF
done
