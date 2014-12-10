/*
	Based Of drsubo Mission Scripts
	File: bPlaneCrash.sqf
	Author: Cammygames, drsubo
*/
["Mission: Bandit Plane Crash","BIS_fnc_log"] call BIS_fnc_MP;
_mPos = getMarkerPos "center";
_pos = [_mPos,0,-1,20,0,4000,0]call BIS_fnc_findSafePos; 
_marker = createMarker ["MarkerP",_pos];  
_marker setMarkerType "mil_objective";  
"MarkerP" setMarkerText "Bandit Plane Crash";  
"MarkerP" setMarkerColor "Colorgreen";
sleep 5;
[_pos] execVM "\a3_missionsPlus_server\scripts\ai.sqf";

hintSilent parseText format["<t size='3' color='#ff0000' underline='true'>Missions+</t><hr/><br/><t size='1.25' color='#ffff00'>A Bandit Supply Plane Has Crashed! Go Secure The Loot!</t>"];

_centerpos = getmarkerpos "MarkerP";
_box1 = createVehicle ["Pelican_EPOCH", _pos, [], 0, "NONE"];
[_box1,"food"] execVM "\a3_missionsPlus_server\scripts\genBox.sqf";

_wreck = createVehicle ["Land_UWreck_MV22_F",_pos,[], 0, "NONE"];

sleep 1500;
deleteMarker "MarkerP"; 
deleteVehicle  _wreck; 
sleep 10;
execVM "mission\initMPlus.sqf";
