--=======================================================================================================
-- SCRIPT
--
-- Purpose:     Realistic Refueling.
-- Author:      Robert Drygas (original script by D90023)
-- Changelog:
--  v1.0.0.0    22.05.2025  initial script
--=======================================================================================================

RealisticRefueling = {};

function RealisticRefueling:startLoadingModifier(fillType, fillableObject, fillUnitIndex)

	local fillTypeName = g_fillTypeManager.indexToName[fillType];
	if fillTypeName == "DIESEL" then
		self.fillLitersPerMS = 2.25/1000; -- 2.25 Liters per second / 135 Liters per minute
	end;
	if fillTypeName == "WATER" then
		self.fillLitersPerMS = 2.25/1000; -- 2.25 Liters per second / 135 Liters per minute
	end;
	if fillTypeName == "MILK" then
		self.fillLitersPerMS = 2.25/1000; -- 2.25 Liters per second / 135 Liters per minute
	end;
end;

LoadTrigger.startLoading = Utils.prependedFunction(LoadTrigger.startLoading, RealisticRefueling.startLoadingModifier);
