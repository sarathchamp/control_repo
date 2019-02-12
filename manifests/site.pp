node default{
 }
node 'fedora'{
include role::master_server
file{ '/root/README1':
     ensure=> file,
     content=>$fqdn
}
node /^web/{
include role::app_server
}
node /^db/{
include role::db_server
}
