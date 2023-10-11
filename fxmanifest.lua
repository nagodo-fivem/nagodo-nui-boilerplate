fx_version 'cerulean'
game 'gta5'

shared_scripts {
	'shared/config.lua',
	'shared/locale.lua'
}

server_scripts {
	'server/database.lua',
	'public/server.lua',
	'server/main.lua',
}

client_scripts {
	'public/client.lua',
	'client/main.lua',
}

escorw_ignore {
	'public/client.lua',
	'public/server.lua',
	'shared/config.lua',
	'shared/locale.lua'
}

ui_page 'web/build/index.html'

files {
	'web/build/index.html',
	'web/build/**/*'
}

lua54 'yes'