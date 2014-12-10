/*
	Based Of drsubo Mission Scripts
	File: supplyVanCrash.sqf
	Author: Cammygames, drsubo
*/
["Mission: Supply Van Crash","BIS_fnc_log"] call BIS_fnc_MP;
_mPos = getMarkerPos "center";
_pos = [_mPos,0,-1,20,0,4000,0]call BIS_fnc_findSafePos; 
_marker = createMarker ["Marker1",_pos];  
_marker setMarkerType "mil_objective";  
"Marker1" setMarkerText "Supply Van Crash";  
"Marker1" setMarkerColor "Colororange";
sleep 5;
execVM "mission\scripts\ai.sqf";


hintSilent parseText format["<t size='3' color='#ff0000' underline='true'>Missions+</t><hr/><br/><t size='1.25' color='#ffff00'>A Bandit Supply Truck Has Crashed! Go And Secure The Loot!</t>"];

_centerpos = getmarkerpos "Marker1";
_box1 = createVehicle ["Pelican_EPOCH", _pos, [], 0, "NONE"];
[_box1,"building"] execVM "mission\scripts\genBox.sqf";

_wreck = createVehicle ["Land_Wreck_Van_F",_pos,[], 0, "NONE"];
_wreck1 = createVehicle ["Land_Wreck_Ural_F",_pos,[], 0, "NONE"];

sleep 1500;
deleteMarker "Marker1"; 
deleteVehicle  _wreck; 
deleteVehicle  _wreck1;

sleep 10;
execVM "mission\initMPlus.sqf";
