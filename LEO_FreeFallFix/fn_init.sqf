LEO_FFF_minHeight = 100; //change this as desired

if (missionNamespace getVariable ["LEO_FFF_perFrameEH", -1] >= 0) exitWith {};

LEO_FFF_perFrameEH = addMissionEventHandler ["EachFrame", {call LEO_FFF_fnc_perFrameEH;}];
