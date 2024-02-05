	fx_version 'adamant'
	lua54 'on'
	game 'gta5'

	author 'Niknock HD'
	description 'Money Command'
	version '3.0'

	dependencies {
		'es_extended'
	}

	server_scripts {
		'@es_extended/locale.lua',
		'config.lua',
		'locales/*.lua',
		'server.lua',
	}

	client_scripts {
		'@es_extended/locale.lua',
		'config.lua',
		'locales/*.lua',
	}

	shared_script '@es_extended/imports.lua'