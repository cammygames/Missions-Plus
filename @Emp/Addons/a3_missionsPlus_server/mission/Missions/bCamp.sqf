/*
	Based Of drsubo Mission Scripts
	File: bCamp.sqf
	Author: Cammygames, drsubo
*/
["Mission: Bandit Plane Crash","BIS_fnc_log"] call BIS_fnc_MP;
_mPos = getMarkerPos "center";
_pos = [_mPos,0,-1,20,0,4000,0]call BIS_fnc_findSafePos; 
_marker = createMarker ["MarkerC",_pos];  
_marker setMarkerType "mil_objective";  
"MarkerC" setMarkerText "Bandit Camp";  
"MarkerC" setMarkerColor "Colorred";
sleep 5;
[_pos] execVM "\a3_missionsPlus_server\mission\scripts\ai.sqf";


hintSilent parseText format["<t size='3' color='#ff0000' underline='true'>Missions+</t><hr/><br/><t size='1.25' color='#ffff00'>A Bandit Camp Has Been Setup! Go Evict Them!</t>"];

_centerpos = getmarkerpos "MarkerC";
_box1 = createVehicle ["Pelican_EPOCH", _pos, [], 0, "NONE"];
[_box1,"food"] execVM "\a3_missionsPlus_server\mission\scripts\genBox.sqf";

_wreck = createVehicle ["Land_BagBunker_Large_F",_pos,[], 0, "NONE"];

sleep 1500;
deleteMarker "MarkerC"; 
deleteVehicle  _wreck;
 
sleep 10;
[]execVM "\a3_missionsPlus_server\mission\initMPlus.sqf";
