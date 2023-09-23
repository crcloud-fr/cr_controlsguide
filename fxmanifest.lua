---
--- @Author CriticalR, crcloud-fr
--- @Copyright (c) CriticalR & crcloud-fr - All Rights Reserved
--- @DateTime: 23/09/2023 16:52:42
---

fx_version("cerulean")
games { "rdr3", "gta5" }
lua54("yes")

shared_scripts {
	'shared/language.lua',
    'shared/config.lua',
}

client_scripts {
    'client/lib/RageUI/RMenu.lua',
    'client/lib/RageUI/Menu/RageUI.lua',
    'client/lib/RageUI/Menu/Menu.lua',
    'client/lib/RageUI/Menu/MenuController.lua',
    'client/lib/RageUI/components/*.lua',
    'client/lib/RageUI/Menu/elements/*.lua',
    'client/lib/RageUI/Menu/items/*.lua',
    'client/lib/RageUI/Menu/panels/*.lua',
    'client/lib/RageUI/Menu/windows/*.lua',
    'client/cl_main.lua',
}

export 'OpenControlsGuideMenu'