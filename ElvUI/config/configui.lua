----------------------------------------------------------------------------
-- This Module loads new user settings if ElvUI_ConfigUI is loaded
----------------------------------------------------------------------------
local E, C, L, DB = unpack(select(2, ...)) -- Import Functions/Constants, Config, Locales

<<<<<<< HEAD
local myPlayerRealm = GetCVar("realmName")
local myPlayerName  = UnitName("player")


=======
--Convert default database
>>>>>>> upstream/master
for group,options in pairs(DB) do
	if not C[group] then C[group] = {} end
	for option, value in pairs(options) do
		C[group][option] = value
	end
end

<<<<<<< HEAD

if IsAddOnLoaded("ElvUI_Config") and ElvConfig then
	local profile = ElvConfig["profileKeys"][myPlayerName.." - "..myPlayerRealm]
	local path = ElvConfig["profiles"][profile]
	if path then
		for group,options in pairs(path) do
			if C[group] then
				for option, value in pairs(options) do
					if C[group][option] ~= nil then
						C[group][option] = value
					end
				end
=======
if IsAddOnLoaded("ElvUI_Config") then
	local ElvuiConfig = LibStub("AceAddon-3.0"):GetAddon("ElvuiConfig")
	ElvuiConfig:Load()

	--Load settings from ElvuiConfig database
	for group, options in pairs(ElvuiConfig.db.profile) do
		if C[group] then
			for option, value in pairs(options) do
				C[group][option] = value
>>>>>>> upstream/master
			end
		end
	end
	
<<<<<<< HEAD
	--Raid Debuffs
	do
		local list = E.RaidDebuffs
		E.RaidDebuffsList = {}
		for spell, value in pairs(list) do
			if value == true then
				tinsert(E.RaidDebuffsList, spell)
			end
		end
		
		if path and path["spellfilter"] and path["spellfilter"]["RaidDebuffs"] then
			for spell, value in pairs(path["spellfilter"]["RaidDebuffs"]) do
				if value == true then
					tinsert(E.RaidDebuffsList, spell)
				end			
			end
		end
	end
	
	--Debuff Blacklist
	do
		local list = E.DebuffBlacklist
		if path and path["spellfilter"] and path["spellfilter"]["DebuffBlacklist"] then
			for spell, value in pairs(path["spellfilter"]["DebuffBlacklist"]) do
				E.DebuffBlacklist[spell] = value			
			end
		end	
	end
	
	--Target PVP Only
	do
		local list = E.TargetPVPOnly
		if path and path["spellfilter"] and path["spellfilter"]["TargetPVPOnly"] then
			for spell, value in pairs(path["spellfilter"]["TargetPVPOnly"]) do
				E.TargetPVPOnly[spell] = value			
			end
		end		
	end
	
	--DebuffWhiteList
	do
		local list = E.DebuffWhiteList
		if path and path["spellfilter"] and path["spellfilter"]["DebuffWhiteList"] then
			for spell, value in pairs(path["spellfilter"]["DebuffWhiteList"]) do
				E.DebuffWhiteList[spell] = value			
			end
		end			
	end
	
	--ArenaBuffs
	do
		local list = E.ArenaBuffWhiteList
		if path and path["spellfilter"] and path["spellfilter"]["ArenaBuffWhiteList"] then
			for spell, value in pairs(path["spellfilter"]["ArenaBuffWhiteList"]) do
				E.ArenaBuffWhiteList[spell] = value			
			end
		end			
	end
	
	--Nameplate Filter
	do
		local list = E.PlateBlacklist
		if path and path["spellfilter"] and path["spellfilter"]["PlateBlacklist"] then
			for name, value in pairs(path["spellfilter"]["PlateBlacklist"]) do
				E.PlateBlacklist[name] = value			
			end
		end	
	end
=======
	--Load other lists from ElvuiConfig
		--Raid Debuffs
		E.RaidDebuffs = ElvuiConfig.db.profile.spellfilter.RaidDebuffs
		
		--Debuff Blacklist
		E.DebuffBlacklist = ElvuiConfig.db.profile.spellfilter.DebuffBlacklist
		
		--Target PvP
		E.TargetPVPOnly = ElvuiConfig.db.profile.spellfilter.TargetPVPOnly
		
		--Debuff Whitelist
		E.DebuffWhiteList = ElvuiConfig.db.profile.spellfilter.DebuffWhiteList
		
		--Arena Buffs
		E.ArenaBuffWhiteList = ElvuiConfig.db.profile.spellfilter.ArenaBuffWhiteList
		
		--Nameplate Filter
		E.PlateBlacklist = ElvuiConfig.db.profile.spellfilter.PlateBlacklist
		
		--HealerBuffIDs
		E.HealerBuffIDs = ElvuiConfig.db.profile.spellfilter.HealerBuffIDs
		
		--DPSBuffIDs
		E.DPSBuffIDs = ElvuiConfig.db.profile.spellfilter.DPSBuffIDs
		
		--PetBuffIDs
		E.PetBuffs = ElvuiConfig.db.profile.spellfilter.PetBuffs
		
		--ClassTimers
		TRINKET_FILTER = ElvuiConfig.db.profile.spellfilter.TRINKET_FILTER
		CLASS_FILTERS = ElvuiConfig.db.profile.spellfilter.CLASS_FILTERS
>>>>>>> upstream/master
end




