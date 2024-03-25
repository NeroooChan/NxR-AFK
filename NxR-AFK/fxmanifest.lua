fx_version 'cerulean'
games { 'gta5' }
author 'NxR'
lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}
client_script 'client/cl_main.lua'
server_script 'server/sv_main.lua'