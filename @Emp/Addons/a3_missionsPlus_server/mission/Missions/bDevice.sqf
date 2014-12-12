/*
	Based Of drsubo Mission Scripts
	File: bCamp.sqf
	Author: Cammygames, drsubo
*/
["Mission: Bandit Plane Crash","BIS_fnc_log"] call BIS_fnc_MP;
_mPos = getMarkerPos "center";
_pos = [_mPos,0,-1,20,0,4000,0]call BIS_fnc_findSafePos; 
_marker = createMarker ["MarkerD",_pos];  
_marker setMarkerType "mil_objective";  
"MarkerD" setMarkerText "Strange Device";  
"MarkerD" setMarkerColor "Colorred";
sleep 5;
[_pos] execVM "\a3_missionsPlus_server\mission\scripts\ai.sqf";


[{hintSilent parseText format["<t size='3' color='#ff0000' underline='true'>Missions+</t><hr/><br/><t size='1.25' color='#ffff00'>A Strange Bandit Device has Been Spotted Go investigate It!</t>"];},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;

_centerpos = getmarkerpos "MarkerD";
_box1 = createVehicle ["Pelican_EPOCH", _pos, [], 0, "NONE"];
[_box1,"weapons"] execVM "\a3_missionsPlus_server\mission\scripts\genBox.sqf";

_wreck = createVehicle ["Land_Device_disassembled_F",_pos,[], 0, "NONE"];

sleep 1500;
deleteMarker "MarkerD"; 
deleteVehicle  _wreck;
 
sleep 10;
[]execVM "\a3_missionsPlus_server\mission\initMPlus.sqf";
