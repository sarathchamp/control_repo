node default{
 }
node 'fedora'{
include role::master_server
file{ '/root/README1':
     ensure=> file,
     content=>" Welcome to ${fqdn}\n"
}
node 'minetest.puppet.vm'{
include role::minecraft_server
}
node /^web/{
include role::app_server
}
node /^db/{
include role::db_server
}
