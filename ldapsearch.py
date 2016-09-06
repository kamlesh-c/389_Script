 #to search and display the dn from instance
 import ldap
l = ldap.initialize('ldap://localhost:389')
#l.search_s('dc=example,dc=com',ldap.SCOPE_SUBTREE)
r = l.search_s('dc=example,dc=com',ldap.SCOPE_SUBTREE,)
for dn,entry in r:
   print 'Processing',repr(dn)
