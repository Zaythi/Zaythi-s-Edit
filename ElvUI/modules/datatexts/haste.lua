-----------------------------------------
-- Haste Rating
-----------------------------------------
local E, C, L, DB = unpack(select(2, ...)) -- Import Functions/Constants, Config, Locales

if not C["datatext"].haste or C["datatext"].haste == 0 then return end

local Stat = CreateFrame("Frame")
<<<<<<< HEAD
Stat:SetFrameStrata("BACKGROUND")
=======
Stat:SetFrameStrata("MEDIUM")
>>>>>>> upstream/master
Stat:SetFrameLevel(3)

local Text  = ElvuiInfoLeft:CreateFontString(nil, "LOW")
Text:SetFont(C["media"].font, C["datatext"].fontsize, "THINOUTLINE")
Text:SetShadowOffset(E.mult, -E.mult)
E.PP(C["datatext"].haste, Text)

local _G = getfenv(0)
local format = string.format
local displayNumberString = string.join("", "%s", E.ValColor, "%d|r")
local displayFloatString = string.join("", "%s", E.ValColor, "%.2f%%|r")
local displayModifierString = string.join("", "%s", E.ValColor, "%d (+%.2f%%)|r")

-- initial delay for update (let the ui load)
local int = 5
local function Update(self, t)
	int = int - t
	if int > 0 then return end

	local hasteRating, hasteRatingBonus
	if E.Role == "Caster" then
		hasteRating = GetCombatRating(CR_HASTE_SPELL)
		hasteRatingBonus = GetCombatRatingBonus(CR_HASTE_SPELL)
	else
		if E.myclass == "HUNTER" then
			hasteRating = GetCombatRating(CR_HASTE_RANGED)
			hasteRatingBonus = GetCombatRatingBonus(CR_HASTE_RANGED)
		else
			hasteRating = GetCombatRating(CR_HASTE_MELEE)
			hasteRatingBonus = GetCombatRatingBonus(CR_HASTE_MELEE)
		end
	end
	Text:SetFormattedText(displayModifierString, STAT_HASTE..": ", hasteRating, hasteRatingBonus)
	int = 2
end

Stat:SetScript("OnUpdate", Update)
Update(Stat, 6)