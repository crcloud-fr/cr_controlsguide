---
--- @Author CriticalR, crcloud-fr
--- @Copyright (c) CriticalR & crcloud-fr - All Rights Reserved
--- @DateTime: 23/09/2023 16:56:32
---

local ControlsMenu = RageUI.CreateMenu(ControlsGuide.Menu.Title, ControlsGuide.Menu.Description)
ControlsMenu:SetStyleSize(100)
ControlsMenu.Closed = function()
    ControlsGuide.Menu.isMenuOpen = false
    RageUI.Visible(ControlsMenu, false)
end

local function OpenControlsGuideMenu()
    if ControlsGuide.Menu.isMenuOpen == false then
        if ControlsGuide.Menu.isMenuOpen then
            ControlsGuide.Menu.isMenuOpen = false
            RageUI.Visible(ControlsMenu, false)
        else
            ControlsGuide.Menu.isMenuOpen = true
            RageUI.Visible(ControlsMenu, true)
            Citizen.CreateThread(function()
                while ControlsGuide.Menu.isMenuOpen do
                    RageUI.IsVisible(ControlsMenu, function()
                        for k, v in pairs(ControlsGuide.Controls) do
                            RageUI.Button(v.title, v.description, { RightLabel = v.control }, true, {})
                        end
                    end)
                    Wait(1)
                end
            end)
        end
    end
end exports("OpenControlsGuideMenu", OpenControlsGuideMenu)

Keys.Register(ControlsGuide.Key.Control, ControlsGuide.Key.Control, ControlsGuide.Key.Description, function()
    OpenControlsGuideMenu()
end)