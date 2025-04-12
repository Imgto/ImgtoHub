--This script is in alpha 
--If u see bugs in source
--Pls report them
local MacLib = loadstring(game:HttpGet("https://github.com/biggaboy212/Maclib/releases/latest/download/maclib.txt"))()

local Window = MacLib:Window({
    Title = "Imgto ✝️🕊️",
    Subtitle = "Rank: Dev",
--Why did u read this? Nah i didn't give u chance to change your rank
--And i know you're a free user that want to flex
    print("Imgto 🕊️✝️ is loaded"),
    Size = UDim2.fromOffset(700, 500),
    DragStyle = 2,
    DisabledWindowControls = {},
    ShowUserInfo = true,
    Keybind = Enum.KeyCode.LeftAlt,
    AcrylicBlur = true,
})

local globalSettings = {
    UIBlurToggle = Window:GlobalSetting({
        Name = "UI Blur",
        Default = Window:GetAcrylicBlurState(),
        Callback = function(bool)
            Window:SetAcrylicBlurState(bool)
            Window:Notify({
                Title = Window.Settings.Title,
                Description = (bool and "Enabled" or "Disabled") .. " UI Blur",
                Lifetime = 5
            })
        end,
    }),
    NotificationToggler = Window:GlobalSetting({
        Name = "Notifications",
        Default = Window:GetNotificationsState(),
        Callback = function(bool)
            Window:SetNotificationsState(bool)
            Window:Notify({
                Title = Window.Settings.Title,
                Description = (bool and "Enabled" or "Disabled") .. " Notifications",
                Lifetime = 5
            })
        end,
    }),
    ShowUserInfo = Window:GlobalSetting({
        Name = "Show User Info",
        Default = Window:GetUserInfoState(),
        Callback = function(bool)
            Window:SetUserInfoState(bool)
            Window:Notify({
                Title = Window.Settings.Title,
                Description = (bool and "Showing" or "Redacted") .. " User Info",
                Lifetime = 5
            })
        end,
    })
}

local tabGroups = {
    TabGroup3 = Window:TabGroup(),
    TabGroup1 = Window:TabGroup(),
    TabGroup2 = Window:TabGroup(),
}

local tabs = {
    Welcome = tabGroups.TabGroup3:Tab({ Name = "Welcome", Image = "rbxassetid://10709812311" }),
    Universal = tabGroups.TabGroup1:Tab({ Name = "Universal", Image = "rbxassetid://10709751939" }),
    Main = tabGroups.TabGroup3:Tab({ Name = "Executor Check", Image = "rbxassetid://10723356210" }),
    Beaks = tabGroups.TabGroup1:Tab({ Name = "Beaks", Image = "rbxassetid://99275039709063" }),
    Fisch = tabGroups.TabGroup1:Tab({ Name = "Fisch", Image = "rbxassetid://10709761530" }),
    DeadRails = tabGroups.TabGroup1:Tab({ Name = "Dead Rails", Image = "rbxassetid://10709811365" }),
    Strongest = tabGroups.TabGroup1:Tab({ Name = "Strongest Battlegrounds", Image = "rbxassetid://10709806859" }),
    Bf = tabGroups.TabGroup1:Tab({ Name = "Blox Fruits", Image = "rbxassetid://10709805942" }), 
    Settings = tabGroups.TabGroup2:Tab({ Name = "Settings", Image = "rbxassetid://10734950309" })
}

local sections = {
BfSection1 = tabs.Bf:Section({ Side = "Left" }),
BfSection2 = tabs.Bf:Section({ Side = "Right" }),

BeaksSection1 = tabs.Beaks:Section({ Side = "Left" }),
BeaksSection2 = tabs.Beaks:Section({ Side = "Right" }),

DeadRailsSection1 = tabs.DeadRails:Section({ Side = "Left" }),
DeadRailsSection2 = tabs.DeadRails:Section({ Side = "Right" }),

FischSection1 = tabs.Fisch:Section({ Side = "Left" }),
FischSection2 = tabs.Fisch:Section({ Side = "Right" }),

MainSection1 = tabs.Main:Section({ Side = "Left" }),
MainSection2 = tabs.Main:Section({ Side = "Right" }),

StrongestSection1 = tabs.Strongest:Section({ Side = "Left" }),
StrongestSection2 = tabs.Strongest:Section({ Side = "Right" }),

UniversalSection1 = tabs.Universal:Section({ Side = "Left" }),
UniversalSection2 = tabs.Universal:Section({ Side = "Right" }),

WelcomeSection1 = tabs.Welcome:Section({ Side = "Left" }),
WelcomeSection2 = tabs.Welcome:Section({ Side = "Right" }),
WelcomeSection3 = tabs.Welcome:Section({ Side = "Left" }),
WelcomeSection4 = tabs.Welcome:Section({ Side = "Right" }),
}

-- Welcome Tab
sections.WelcomeSection1:Header({ Name = "Welcome to Imgto ✝️🕊️" })
sections.WelcomeSection1:Divider()
sections.WelcomeSection1:Header({ Name = "Our telegram t.me/??? Our discord .gg/???" })
sections.WelcomeSection1:Divider()
sections.WelcomeSection2:Header({ Name = "<Credits>" })
sections.WelcomeSection2:Divider()
sections.WelcomeSection2:Paragraph({
    Header = "Made by Imgto",
    Body = "This is a universal script hub that can be used daily. Credits to others who made scripts for us."
})
sections.WelcomeSection2:Divider()
sections.WelcomeSection4:Header({ Name = "<Support>" })
sections.WelcomeSection4:Divider()
sections.WelcomeSection4:Paragraph({
    Header = "Send us bugs and we'll find out what needs to be changed",
    Body = "With your help, we will improve the script."
})
sections.WelcomeSection4:Divider()
sections.WelcomeSection3:Header({ Name = "<Changelog>" })
sections.WelcomeSection3:Divider()
sections.WelcomeSection3:Paragraph({
    Header = "+ Beaks Tab , Blox Fruits Tab, Night script , SaveInstance Script, New icons",
    Body = "- RSpy (Because OctoSpy better), eUNC (Don't work on all executors), Toji Moveset (Too weak)"
})
sections.WelcomeSection3:Divider()
--Beaks Tab
sections.BeaksSection1:Header({ Name = "<Beaks>" })
sections.BeaksSection1:Header({ Name = "This tab will not work" })
sections.BeaksSection2:Header({ Name = "It's because beaks still not released" })
sections.BeaksSection1:Divider()
sections.BeaksSection2:Divider()
sections.BeaksSection2:Paragraph({
    Header = "Beaks gonna release on april 18th",
    Body = "Wait till this day. (i don't think someone will see this but for sure i will write this)",
})
--Blox Fruits Tab
sections.BfSection1:Header({ Name = "<Blox Fruits>" })
sections.BfSection2:Header({ Name = "<Bounty Farm>" })
sections.BfSection1:Divider()
sections.BfSection1:Button({
    Name = "HohoHub",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Best script on bloxfruits.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()  
                  loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
                    end
                }
            }
        })
    end
})
--The Strongest Battlegrounds Tab
sections.StrongestSection1:Header({ Name = "<Strongest battlegrounds>" })
sections.StrongestSection2:Header({ Name = "<Movesets>" })

sections.StrongestSection2:Divider()
sections.StrongestSection2:Button({
    Name = "Gojo",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Gojo Moveset from Jujutsu Kaisen.",
            Buttons = {
                {
                    Name = "No Morph",
                    Callback = function()
                        getgenv().morph = false
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/BaldyToSorcerer/refs/heads/main/LatestV2.lua"))()
                    end
                },
                {
                    Name = "With Morph",
                    Callback = function()
                        getgenv().morph = true
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/BaldyToSorcerer/refs/heads/main/LatestV2.lua"))()
                    end
                }
            }
        })
    end
})
sections.StrongestSection2:Divider()
sections.StrongestSection2:Button({
    Name = "JinWoo",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "SungJinWoo moveset from Solo Leveling.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()  
                  loadstring(game:HttpGet("https://raw.githubusercontent.com/hamletirl/sunjingwoo/refs/heads/main/sunjingwoo"))()

                    end
                }
            }
        })
    end
})
--DeadRails Tab
sections.DeadRailsSection1:Header({ Name = "<Dead Rails>" })
sections.DeadRailsSection2:Header({ Name = "<Misc>" })

sections.DeadRailsSection1:Divider()
sections.DeadRailsSection1:Button({
    Name = "Lunor",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Second best script on dead rails.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/Catto-YFCN/Lunor_Dependencies/refs/heads/main/Loader"))()
                    end
                }
            }
        })
    end
})
sections.DeadRailsSection1:Divider()
sections.DeadRailsSection1:Button({
    Name = "Elysium",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Best script on dead rails ever.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function() 
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/cool83birdcarfly02six/ElysiumFree/refs/heads/main/README.md'))()
                    end
                }
            }
        })
    end
})
-- Fisch Tab
sections.FischSection1:Header({ Name = "<Fisch>" })
sections.FischSection2:Header({ Name = "<Tools>" })

sections.FischSection2:Divider()
sections.FischSection2:Button({
    Name = "Old Server finder",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Can help u find old server on fisch.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/triquqd717/main/refs/heads/main/Server%20Tools"))()
                    end
                }
            }
        })
    end
})

sections.FischSection1:Divider()
sections.FischSection1:Button({
    Name = "Lunor",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Best script for fisch.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/Catto-YFCN/Lunor_Dependencies/refs/heads/main/Loader"))()
                    end
                }
            }
        })
    end
})

sections.FischSection1:Divider()
sections.FischSection1:Button({
    Name = "Zenith",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Best keyless script on fisch.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/ZenithHub/refs/heads/main/Loader"))()
                    end
                }
            }
        })
    end
})

sections.FischSection1:Divider()
sections.FischSection1:Button({
    Name = "Nebura",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "One of the worst scripts on fisch. But sometimes good",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/499fa8eaaae391c6c3c77f2640811357.lua"))()
                    end
                }
            }
        })
    end
})

-- Universal Tab
sections.UniversalSection1:Header({ Name = "<Universal>" })
sections.UniversalSection2:Header({ Name = "<Misc>" })

sections.UniversalSection2:Divider()
sections.UniversalSection2:Button({
    Name = "OctoSpy",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Better version of SimpleSpy.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Octo-Spy/refs/heads/main/Main.lua", true))()
                    end
                }
            }
        })
    end
})
sections.UniversalSection2:Divider()
sections.UniversalSection2:Button({
    Name = "SaveInstance",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Saves a place. Sexy ui",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/24rr/tmpignore/refs/heads/main/32423sadf133"))()
                    end
                }
            }
        })
    end
})
sections.UniversalSection2:Divider()
sections.UniversalSection2:Button({
    Name = "Esp",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Powerful Esp by Imgto. With ChinaHat",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/Imgto/Incognito-Internal/main/EspLoader"))()
                    end
                }
            }
        })
    end
})

sections.UniversalSection1:Divider()
sections.UniversalSection1:Button({
    Name = "Inf Yield",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Infinite Yield is a powerful FE admin script.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
                    end
                }
            }
        })
    end
})

sections.UniversalSection1:Divider()
sections.UniversalSection1:Button({
    Name = "Sirius",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Sirius. Most powerful king of scripts.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://sirius.menu/sirius"))()
                    end
                }
            }
        })
    end
})
sections.UniversalSection1:Divider()
sections.UniversalSection1:Button({
    Name = "Night",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Night. Best ui and cool admin features.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/warprbx/Night/refs/heads/main/src/uilib.lua"))()
                    end
                }
            }
        })
    end
})

-- Executor Check Tab
sections.MainSection1:Header({ Name = "<UNC Check>" })
sections.MainSection2:Header({ Name = "<Misc Check>" })

sections.MainSection1:Divider()
sections.MainSection1:Button({
    Name = "Default UNC",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "This script contains UNC Check, some executors can't execute it.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://github.com/ltseverydayyou/uuuuuuu/blob/main/UNC%20test?raw=true"))()
                    end
                }
            }
        })
    end
})

sections.MainSection1:Divider()
sections.MainSection1:Button({
    Name = "sUNC",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Revamped UNC test made by me. Detects fake exploits like MantiWPF, Zorara, Celery.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://gitlab.com/sens3/nebunu/-/raw/main/HummingBird8's_sUNC_yes_i_moved_to_gitlab_because_my_github_acc_got_brickedd/sUNCm0m3n7.lua"))()
                    end
                }
            }
        })
    end
})

sections.MainSection1:Divider()
sections.MainSection1:Button({
    Name = "CET",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Another UNC test, but better. Has stronger checks.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Executor-Tests/refs/heads/main/Environment/Test.lua"))()
                    end
                }
            }
        })
    end
})

sections.MainSection2:Divider()
sections.MainSection2:Button({
    Name = "Identity Check",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "This script contains Identity Check.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Executor-Tests/main/Identity/Test.lua"))()
                    end
                }
            }
        })
    end
})
sections.MainSection2:Divider()
sections.MainSection2:Button({
    Name = "Require Support",
    Callback = function()
        Window:Dialog({
            Title = Window.Settings.Title,
            Description = "Idk what is this.",
            Buttons = {
                {
                    Name = "Execute Script",
                    Callback = function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/RealBatu20/AI-Scripts-2025/refs/heads/main/RequireChecker.lua"))()
                    end
                }
            }
        })
    end
})

--Creating folder
MacLib:SetFolder("Imgto🕊️")
--Insert Configs into Settings Tab
tabs.Settings:InsertConfigSection("Left")

--AutoLoad
tabs.Welcome:Select()
MacLib:LoadAutoLoadConfig()
--Made by Imgto