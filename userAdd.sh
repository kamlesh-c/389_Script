#! /bin/bash
for ((  i=0 ; i<5005 ; i++ ))
do
ldapmodify -a -D 'cn=directory manager' -p 389 -h test.example.com -w test1234 -x << EOF
dn: uid=33$i,ou=People,dc=example,dc=com
objectClass: top
objectclass: person
objectClass: organizationalPerson
objectClass: inetorgperson
objectClass: posixAccount
objectClass: shadowAccount
sn: testnew$i
cn: testnew$i
uid: testnew$i
givenName: testnew$i
description: description$i
userPassword: test1234
mail: testnew$i@redhat.com
uidNumber: 33$i
gidNumber: 44$i
shadowMin: 0
shadowMax: 99999
shadowInactive: 30
shadowWarning: 7
homeDirectory: /home/uid$i
EOF
done


