fx_version 'cerulean'
games { 'gta5' }



files {
    'assets/**.png',
}


client_script { "@vrp/client/Tunnel.lua", "@vrp/client/Proxy.lua", 'client.lua' }
server_scripts {
    "@vrp/lib/utils.lua",
    'server.lua'
}
