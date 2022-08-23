["LEO_FFF_enableMod", "CHECKBOX", "Enable Freefall Fix", "Freefall Fix", true, 0, {}, true] call CBA_fnc_addSetting;
["LEO_FFF_minHeight", "SLIDER", ["Minimum Freefall Height", "Minimum AGLS height (height above objects/terrain) to trigger the freefall (halo) pose"], "Freefall Fix" ,[100, 1000, 100, 0], 0] call CBA_fnc_addSetting;


if (isNil "LEO_FFF_enableMod" || {!LEO_FFF_enableMod || {missionNamespace getVariable ["LEO_FFF_perFrameEH", -1] >= 0}}) exitWith {};

LEO_FFF_perFrameEH = addMissionEventHandler ["EachFrame", {call LEO_FFF_fnc_perFrameEH;}];