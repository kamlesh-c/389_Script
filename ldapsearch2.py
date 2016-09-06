import ldap
try:
    l = ldap.initialize('ldap://localhost:389')

except ldap.LDAPError, e:
    print e
baseDN = "dc=example,dc=com"
searchScope = ldap.SCOPE_SUBTREE
retrieveAttributes = None
searchFilter = "cn=*"

try:
    ldap_result_id = l.search(baseDN, searchScope, searchFilter, retrieveAttributes)
    result_set = []
    while 1:
        result_type, result_data = l.result(ldap_result_id, 0)
        if (result_data == []):
            break
        else:
            if result_type == ldap.RES_SEARCH_ENTRY:
                result_set.append(result_data)
    print (result_set)
except ldap.LDAPError, e:
    print e
