PrintChat("Skarner by TSM loaded.")

Config = scriptConfig("Skarner", "Skarner")
Config.addParam("Q", "Use Q", SCRIPT_PARAM_ONOFF, true)
Config.addParam("W", "Use W", SCRIPT_PARAM_ONOFF, true)
Config.addParam("E", "Use E", SCRIPT_PARAM_ONOFF, true)
    
myIAC = IAC()

	
OnLoop(function(myHero)
	local unit = GetTarget(1000, DAMAGE_PHYSICAL)
	if ValidTarget(unit, 1000) then
		if IWalkConfig.Combo then
			local uPos = GetOrigin(unit)
			if CanUseSpell(myHero, _Q) == READY and Config.Q and IsInDistance(unit, 350) then
				   CastSpell(_Q)
			end
			if CanUseSpell(myHero, _W) == READY and Config.W and IsInDistance(unit, 600) then
				   CastSpell(_W)
			end
			if CanUseSpell(myHero, _E) == READY and Config.E and IsInDistance(unit, 1000) then
				PredCast(_E, unit, 1500, 250, 1000, 70, false)
			end
		end
	end
end
)
