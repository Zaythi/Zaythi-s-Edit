local E, C, L, DB = unpack(select(2, ...)) -- Import Functions/Constants, Config, Locales

DB["media"] = {
	-- fonts
	["font"] = "ElvUI Font",				-- general font of ElvUI
	["uffont"] = "ElvUI Font",				-- general font of unitframes
	["dmgfont"] = "ElvUI Combat",			-- general font of dmg / sct
		
	-- textures
	["normTex"] = "Aluminum",				-- normal texture used for ElvUI healthbar/powerbar/etc
	["glossTex"] = "Aluminum",				-- glossy texture used for ElvUI healthbar/powerbar/etc
	["glowTex"] = "ElvUI GlowBorder",		-- glow border texture used for ElvUI healthbar/powerbar/etc
	["blank"] = "ElvUI Blank",
	
	["raidicons"] = [[Interface\AddOns\ElvUI\media\textures\raidicons.blp]],	-- new raid icon textures by hankthetank
	
	-- sound
	["whisper"] = "ElvUI Whisper",			-- soundfile played upon receiving whisper
	["warning"] = "ElvUI Warning",			-- soundfile from missing self buff warning
	["glossyTexture"] = false,				-- use a glossy texture for all frames
	
	-- colors
	["bordercolor"] = { r = .16,g = .16,b = .16 },					-- border color of ElvUI panels
	["backdropcolor"] = { r = .07,g = .07,b = .07 },				-- background color of ElvUI panels
	["backdropfadecolor"] = { r = .07,g = .07,b = .07, a = 0.8 },	-- this is always the same as the backdrop color with an alpha of 0.8, see colors.lua
	["valuecolor"] = {r = 23/255,g = 132/255,b = 209/255},			-- color for values of datatexts
}

DB["general"] = {
	["autoscale"] = false,					-- mainly enabled for users that don't want to mess with the config file
	["uiscale"] = 0.66,						-- set your value (between 0.64 and 1) of your uiscale if autoscale is off
	["multisampleprotect"] = false,			-- I don't recommend this because of shitty border but, voila!
	["classcolortheme"] = false,			-- class colored theme for panels
	["fontscale"] = 12,						-- master font size
	["resolutionoverride"] = "Low",			-- override (Low, High)
	["layoutoverride"] = "NONE",			-- override layout (DPS, Healer, NONE)
	["sharpborders"] = true,				-- sharp borders
	["upperpanel"] = false,					-- upper panel
	["lowerpanel"] = true,					-- lower panel
}

DB["skin"] = {
	["enable"] = true,						-- enable skinning of blizzard frames
		["bags"] = true,						-- Individual bags
		["reforge"] = true,						-- DK Reforging frame
		["calendar"] = true,					-- Calendar frame
		["achievement"] = true,					-- Achievement frame
		["lfguild"] = true,						-- Looking For Guild frame
		["inspect"] = true,						-- Inspect frame
		["binding"] = true,						-- Keybind frame
		["gbank"] = true,						-- Guild Bank frame
		["archaeology"] = true,					-- Archaeology frame
		["guildcontrol"] = true,				-- Guild Control frame
		["guild"] = true,						-- Guild (Social) frame
		["tradeskill"] = true,					-- Tradeskill menu
		["raid"] = true,						-- Raid menu
		["talent"] = true,						-- Talent frame
		["glyph"] = true,						-- Glyph menu
		["auctionhouse"] = true,				-- Auction House
		["barber"] = true,						-- Barbershop window
		["macro"] = true,						-- Macro menu
		["debug"] = true,
		["trainer"] = true,						-- Trainder menu
		["socket"] = true,						-- Socket (Gemming)
		["achievement_popup"] = true,			-- Achievement Popup window
		["bgscore"] = true,						-- Battleground Score frame
		["merchant"] = true,					-- Vendor frame
		["mail"] = true,						-- Mail frame
		["help"] = true,						-- Help menu
		["trade"] = true,						-- Trade window
		["gossip"] = true,						-- Gossip window
		["greeting"] = true,
		["worldmap"] = true,					-- World Map window
		["taxi"] = true,						-- Gryphon Master taxi window
		["lfd"] = true,							-- Looking For Dungeon
		["quest"] = true,						-- Quest frame
		["petition"] = true,					-- GM Petition menu
		["dressingroom"] = true,				-- Dressing Room
		["pvp"] = true,							-- PvP menu
		["nonraid"] = true,
		["friends"] = true,						-- Friends (Social) window
		["spellbook"] = true,					-- Spellbook
		["character"] = true,					-- Character frame
		["misc"] = true,
		["lfr"] = true,							-- Looking For Raid menu
		["tabard"] = true,						-- Tabard menu
		["guildregistrar"] = true,				-- Guild Registrat frame
		["timemanager"] = true,
	["recount"] = true,						-- enable skinning of Recount addon
	["skada"] = true,						-- enable skinning of Skada addon
	["omen"] = true,						-- enable skinning of Omen addon
	["kle"] = true,							-- enable skinning of KLE addon
	["dxe"] = true,							-- enable skinning of DXE addon
	["dbm"] = true,							-- enable skinning of DBM addon
	["bigwigs"] = true,						-- enable skinning of BigWigs addon
	["auctionator"] = true,					-- enable skinning of Auctionator addon
	["clcret"] = true,						-- enable skinning of CLCRet addon
	["clcprot"] = true,						-- enable skinning of CLCProt addon
	["hookkleright"] = false,				-- force KLE's top bar anchor to be hooked onto the right chat window
	["hookbwright"] = false,				-- force BigWig's bar anchor to be hooked onto the right chat window
	["hookdxeright"] = false,				-- force DXE's top bar anchor to be hooked onto the right chat window
	["embedright"] = "NONE",				-- addon to embed to the right frame ("Omen", "Recount", "Skada")
	["embedrighttoggle"] = false,
}

DB["unitframes"] = {
	-- general options
	["enable"] = true,					-- enable unit frames
	["fontsize"] = 13,						-- default font size for unitframes
	["lowThreshold"] = 20,					-- global low mana threshold, for warning
	["targetpowerplayeronly"] = true,		-- enable power text on pvp target only
	["showfocustarget"] = false,			-- show focus's target
	["pettarget"] = true,					-- show player's pet's target (DPS Layout Only)
	["showtotalhpmp"] = false,				-- change the display of info text on player and target with XXXX/Total
	["showsmooth"] = true,					-- enable smooth bar
	["charportrait"] = false,				-- enable character portrait
	["charportraithealth"] = false,			-- enable character portrait to overlay on healthbar
	["classcolor"] = false,					-- color unitframes by class
	["classcolorpower"] = false,			-- color powerbar by class
	["classcolorbackdrop"] = false,			-- enable class colored backdrop
	["healthcolor"] = DB["media"].bordercolor,	--color of the unitframe
	["healthcolorbyvalue"] = false,			-- color health by current health remaining
	["healthbackdrop"] = false,				-- enable using custom healthbackdrop color
	["healthbackdropcolor"] = DB["media"].backdropcolor,
	["combatfeedback"] = true,				-- enable combattext on player and target
	["debuffhighlight"] = true,				-- highlight frame with the debuff color if the frame is dispellable
	["classbar"] = true,					-- enable classbar (totem bar, holy power, runes, etc)
	["combat"] = false,						-- only show main unitframes when in combat/havetarget/mouseover
	["mini_powerbar"] = false,				-- small power bar (mana, rage, energy, focus, etc)
	["powerbar_offset"] = 0,				-- offset of the small power bar
	["mini_classbar"] = true,				-- small class bar
	["showboss"] = true,					-- enable boss unit frames for PVE encounters
	["arena"] = true,						-- enable ElvUI arena unitframes
	["swing"] = false,						-- enable swing timer (melee)
	["displayaggro"] = true,				-- display aggro on unitframe
	["powerbar_height"] = 10,				-- height of powerbar
	["classbar_height"] = 10,				-- height of class bar
	
	--frame sizes
	["playtarwidth"] = 275,					-- width of player/target frame
	["playtarheight"] = 55,					-- height of player/target frame
	["smallwidth"] = 130,					-- width of TargetTarget, Focus, FocusTarget, Player's Pet frames
	["smallheight"] = 35,					-- height of TargetTarget, Focus, FocusTarget, Player's Pet frames
	["arenabosswidth"] = 212,				-- width of Arena/Boss Frames
	["arenabossheight"] = 43,				-- height of Arena/Boss Frames
	["assisttankwidth"] = 120,				-- width of MainTank/MainAssist frames
	["assisttankheight"] = 27,				-- height of MainTank/MainAssist frames
	
	-- auras
	["auratimer"] = true,					-- enable timers on buffs/debuffs
	["auratextscale"] = 11,					-- the font size of buffs/debuffs timers on unitframes
	["playerbuffs"] = false,				-- player buffs above player unitframe
	["playerdebuffs"] = true,				-- player debuffs above player unitframe
	["targetbuffs"] = true,					-- target buffs above target unitframe
	["targetdebuffs"] = false,				-- target debuffs above target unitframe
	["arenabuffs"] = true,					-- enable buffs on arena unitframes
	["arenadebuffs"] = true,				-- enable debuffs on arena unitframes
	["bossbuffs"] = true,					-- enable buffs on boss unitframes
	["bossdebuffs"] = false,				-- enable debuffs on boss unitframes
	["playershowonlydebuffs"] = true,		-- only show the players debuffs over the player frame, not buffs (playerauras must be true)
	["playerdebuffsonly"] = true,			-- show the players debuffs on target, and any debuff in the whitelist (see DebuffFilter.lua)
	["totdebuffs"] = true,					-- enable tot debuffs (high res only)
	["focusdebuffs"] = true,				-- enable focus debuffs
	["playeraurasperrow"] = 8,				-- number of player auras per row
	["targetaurasperrow"] = 8,				-- number of target auras per row
	["smallaurasperrow"] = 5,				-- number of small auras per row
	["playernumbuffrows"] = 1,				-- how many rows of player buffs shown on unit frame
	["playernumdebuffrows"] = 1,			-- how many rows of player debuffs shown on unit frame
	["targetnumbuffrows"] = 1,				-- how many rows of target buffs shown on unit frame
	["targetnumdebuffrows"] = 1,			-- how many rows of target debuffs shown on unit frame
	
	-- castbar
	["unitcastbar"] = true,					-- enable ElvUI castbar
	["cblatency"] = true,					-- enable castbar latency
	["cbicons"] = true, 					-- enable icons on castbar
	["cbticks"] = true,						-- enable cast bar ticks
	["castplayerwidth"] = 276,				-- width of player castbar
	["castplayerheight"] = 20,				-- height of player castbar
	["casttargetwidth"] = 276,				-- width of target castbar
	["casttargetheight"] = 20,				-- height of target castbar
	["castfocuswidth"] = 350,				-- width of focus castbar
	["castfocusheight"] = 25,				-- height of focus castbar
	["castbarcolor"] = DB["media"].bordercolor,					-- color of player castbar
	["nointerruptcolor"] = {r = 0.78, g = 0.25, b = 0.25},		-- color of target castbar
	
	["POWER_MANA"] = {r = 0.31, g = 0.45, b = 0.63},			-- color of mana
	["POWER_RAGE"] = {r = 0.78, g = 0.25, b = 0.25},			-- color of rage
	["POWER_FOCUS"] = {r = 0.71, g = 0.43, b = 0.27},			-- color of focus
	["POWER_ENERGY"] = {r = 0.65, g = 0.63, b = 0.35},			-- color of energy
	["POWER_RUNICPOWER"] = {r = 0, g = 0.82, b = 1},			-- color of runic power

}

DB["raidframes"] = {
	["enable"] = true,					-- enable raid frames (grid)
	["fontsize"] = 12,						-- default font height for raidframes
	["scale"] = 1,							-- scale of raid frame (for smaller, use < 0.99 // for larger, use > 1.00)
	["showrange"] = true,					-- show range opacity on raidframes
	["healcomm"] = true,					-- enable healcomm support on healer layout
	["raidalphaoor"] = 0.3,					-- alpha of raidframes when unit is out of range
	["gridhealthvertical"] = true,			-- enable vertical grow on health bar for healer layout
	["showplayerinparty"] = true,			-- show my player frame in party
	["maintank"] = true,					-- enable MainTank
	["mainassist"] = true,					-- enable MainAssist
	["partypets"] = true,					-- enable party pets for the healer layout
	["disableblizz"] = true,				-- fuck fuck fuckin' fuck!!!!
	["healthdeficit"] = false,				-- show the number health deficit on the raidframes
	["griddps"] = true,						-- show dps layout in grid style
	["role"] = false,						-- display role on raidframe
	["partytarget"]	= false,				-- display party members targets (DPS Layout Only)
	["mouseglow"] = true,					-- glow the class/reaction color of the unit that you mouseover
	["raidunitbuffwatch"] = true,			-- track important spell to watch in pve for grid mode
	["buffindicatorsize"] = 6,				-- size of the buff indicator on raid/party frames
	["buffindicatorcoloricons"] = true,		-- shows colored borders for buffs/debuffs
	["debuffs"] = true,						-- raid debuffs
	["displayaggro"] = true,				-- show aggro
	["mini_powerbar"] = true,				-- mini powerbar (rage, mana, focus, etc)
	["gridonly"] = true,					-- grid always (raids, 5 mans, etc)
}

DB["classtimer"] = {
	["enable"] = true,					-- enable class timers (buff bars above player/target frame)
	["bar_height"] = 17,					-- class timer bar height
	["bar_spacing"] = 5,					-- spacing between bars
	["icon_position"] = 2,					-- icon position (read below for options)
--	0 = left
--	1 = right
--	2 = outside left
--	3 = outside right
	["layout"] = 4, 						-- layout (read below for options)
--	1 - both player and target auras in one frame right above player frame
--	2 - player and target auras separated into two frames above player frame
--	3 - player, target and trinket auras separated into three frames above player frame
--	4 - player and trinket auras are shown above player frame and target auras are shown above target frame
--	5 - everything above player frame, no target debuffs
	["showspark"] = true,								-- show spark
	["cast_suparator"] = true,
	["classcolor"] = false,								-- class color timers
	["buffcolor"] = DB["media"].bordercolor,			-- if classcolor isn't true
	["debuffcolor"] = {r = 0.78, g = 0.25, b = 0.25},	-- debuff color for timers
	["proccolor"] = {r = 0.84, g = 0.75, b = 0.65},		-- proc color for timers
}

DB["actionbar"] = {
	["enable"] = true,
	["hotkey"] = false,						-- enable hotkey display
	["rightbarmouseover"] = true,			-- enable right bars on mouseover
	["shapeshiftmouseover"] = false,		-- enable shapeshift or totembar on mouseover
	["hideshapeshift"] = false,				-- hide shapeshift or totembar
	["showgrid"] = true,					-- show grid on empty button
	["bottompetbar"] = false,				-- position petbar below the actionbars instead of the right side
	["buttonsize"] = 30,					-- size of action buttons
	["buttonspacing"] = 4,					-- spacing of action buttons
	["petbuttonsize"] = 30,					-- size of pet/stance buttons
	["swaptopbottombar"] = false,			-- swap the main actionbar position with the bottom actionbar
	["macrotext"] = false,					-- show macro text on actionbuttons
	["verticalstance"] = false,				-- make stance bar vertical
	["microbar"] = false,					-- enable microbar display
	["mousemicro"] = false,					-- only show microbar on mouseover
	["enablecd"] = true,					-- enable cooldown on buttons
	["treshold"] = 3,						-- show decimal under X seconds and text turn red
	["expiringcolor"] = { r = 1, g = 0, b = 0 },		-- color of expiring seconds turns to
	["secondscolor"] = { r = 1, g = 1, b = 0 },			-- seconds color
	["minutescolor"] = { r = 1, g = 1, b = 1 },			-- minutes color
	["hourscolor"] = { r = 0.4, g = 1, b = 1 },			-- hours color
	["dayscolor"] = { r = 0.4, g = 0.4, b = 1 },		-- days color
}

DB["nameplate"] = {
	["enable"] = true,
	["showlevel"] = true,					-- show level next to nameplate
	["width"] = 105,						-- default width of nameplate
	["showhealth"] = false,					-- show health text on nameplate
	["enhancethreat"] = true,				-- threat features based on if your a tank or not
	["combat"] = false,						-- only show enemy nameplates in-combat
	["goodcolor"] = {r = 75/255,  g = 175/255, b = 76/255},			-- good threat color (tank shows this with threat, everyone else without)
	["badcolor"] = {r = 0.78, g = 0.25, b = 0.25},					-- bad threat color (opposite of above)
	["goodtransitioncolor"] = {r = 218/255, g = 197/255, b = 92/255},	-- threat color when gaining threat
	["badtransitioncolor"] = {r = 240/255, g = 154/255, b = 17/255}, 	-- threat color when losing threat
	["trackauras"] = false,					-- track players debuffs only (debuff list derived from classtimer spell list)
	["trackccauras"] = true,				-- track all CC debuffs
}

DB["datatext"] = {
	["stat1"] = 10,							-- stat based on your role (avoidance = tank // AP = melee // SP/HP = caster)
	["dur"] = 2,							-- show your equipment durability
	["stat2"] = 0,							-- stat based on your role (armor = tank // crit = melee // crit = caster)
	["system"] = 4,							-- show fps and ms, and total addon memory in tooltip
	["wowtime"] = 8,						-- show time
	["gold"] = 6,							-- show your current gold
	["guild"] = 1,							-- show number on guildmates online
	["friends"] = 3,						-- show number of friends online
	["calltoarms"] = 0,						-- show current call to arms 
	["bags"] = 7,							-- show amount of bag space available
	["dps_text"] = 11,						-- show current dps
	["hps_text"] = 0,						-- show current hps
	["currency"] = 0,						-- show watched items in backpack
	["specswitch"] = 5,						-- show current spec
	["hit"] = 0,							-- show hit
	["expertise"] = 0,						-- show expertise
	["haste"] = 0,							-- show haste
	["mastery"] = 0,						-- show mastery
	["crit"] = 0,							-- show crit
	["manaregen"] = 0,						-- show mana regen
	["masteryspell"] = false,				-- show mastery spell
	["battleground"] = true,				-- enable stats in battleground
	["time24"] = false,						-- set time to 24h format
	["localtime"] = false,					-- set time to local time instead of server time
	["fontsize"] = 12,						-- font size for panels
	["classcolor"] = true,					-- class color data texts
}

DB["chat"] = {
	["enable"] = true,					-- enable ElvUI chat
	["style"] = "ElvUI",					-- sets style of chat to various available styles
	["whispersound"] = true,				-- play a sound when receiving whisper
	["showbackdrop"] = true,				-- show a backdrop on the chat panels
	["chatwidth"] = 450,					-- width of chat frame
	["chatheight"] = 120,					-- height of chat frame
	["fadeoutofuse"] = true,				-- fade chat text when out of use
	["sticky"] = true,						-- when opening the chat edit box resort to previous channel
	["combathide"] = "NONE",				-- set to "Left", "Right", "Both", or "NONE"
	["bubbles"] = true,						-- skin blizzard chat bubbles
}

DB["tooltip"] = {
	["enable"] = true,					-- enable ElvUI tooltip
	["hidecombat"] = true,					-- hide docked tooltip when in combat
	["hidecombatraid"] = true,				-- only hide in combat in a raid instance
	["hidebuttons"] = false,				-- always hide actionbar buttons tooltip
	["hideuf"] = false,						-- hide tooltip on unitframes
	["cursor"] = false,						-- show anchored to cursor
	["colorreaction"] = false,				-- always color border of tooltip by unit reaction
	["itemid"] = false,						-- display itemid on item tooltips
	["whotargetting"] = true,				-- show who is targetting the unit (in raid or party)
}

DB["others"] = {
	["pvpautorelease"] = true,				-- enable auto-release in bg or wintergrasp
	["errorenable"] = true,					-- red error text on screen (true = hide // false = show)
	["autoacceptinv"] = true,				-- auto-accept invite from guildmate and friends
	["enablebag"] = true,					-- enable an all-in-one bag mod
	["bagbar"] = false,						-- enable bag bar
	["bagbardirection"] = "VERTICAL",		-- bag bar direction
	["bagbarmouseover"] = true,				-- bar bar shown on mouseover only
	
	["lootframe"] = true,					-- reskin the loot frame
	["rolllootframe"] = true,				-- reskin the roll frame
	["autogreed"] = true,					-- auto-DE or auto-greed item at max level
	["sellgrays"] = true,					-- automatically sell grays
	["autorepair"] = true,					-- auto repair
	["guildbankrepair"] = true,				-- use guildbank for auto repair (when available)
	
	["buffreminder"] = true,				-- buff reminder on the middle of screen about self buffs/weapon imbues
	["remindersound"] = true,				-- enable warning sound notification for reminder
	["raidbuffreminder"] = true,			-- buffbar next to the minimap
	["announceinterrupt"] = "NONE",			-- announce in party/raid when you interrupt
	["showthreat"] = true,					-- enable the threat bar anchored to right info panel
	["minimapauras"] = true,				-- enable minimap auras
}