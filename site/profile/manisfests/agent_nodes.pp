class profile::agent_nodes{
include dockeragent:
dockeragentnode::{'web.puppet.vm'}
dockeragentnode::{'db.puppet.vm'}
}
