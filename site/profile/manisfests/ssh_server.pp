class profile::ssh_server{
package{'openssh-server':
        ensure=>present,
        }
service{'sshd':
        ensure=>'running',
        enable=>'true',
        }
ssh_authorized_key{'root@fedora':
        ensure=>present,
        user=>'root',
        type=>'ssh-rsa',
        key=>'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQDOlJ5yhO+ZrdLl2CXLtyPlnYE6e5dkaSY/ouCSz75iQCz1mSgQVpqbWlRWnYtqqBqYRLaq5S9+5E9+hnfLLB+KuuoQXx1gw/y/oRHv2mj3xmJzdcQ53FjgutP9oA7C5KCcrQWACaFnrpyZLqq0vYqSN5deEvRPTPNMcbOGbeOjsvefkKlcoO0bGTmcfQ7jYsYeAfA2Hgk3dPNWo+Ca7gLGv6LyAY0Zwy0wSSVoZCxgQY1LgoU6Pv/5qCTH6g8PNutfd0fe0PU57zW7OlAxoiIdfswDsLE42SQ1TTEEbLnPFvu/aGxpR7e5n5/Dfdqbqs+lVJUzHEU7Bqvp3HER0L'
        }
}
