resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

author "twitch.tv/livesdorafinha#3506"

ui_page "ui/index.html"

client_scripts {
	"@vrp/lib/utils.lua",
	"client/*.lua"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"server/*.lua",
	"config/*.lua"
}

files {
	"ui/**/*.png",
	"ui/*.html",
	"ui/*.js",
	"ui/*.css",
	'config/*.lua'
}                            