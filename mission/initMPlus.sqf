/*
	Based Of drsubo Mission Scripts
	File: initMplus.sqf
	Author: Cammygames, drsubo, drsubo
*/

_minTime = 1*60; //5 minutes 
_maxTime = 2*60; //30 minutes

_sleepTime = (random (_maxTime - _minTime)) + _minTime;
sleep _sleepTime;

_n1 = floor(random 5);		

switch (_n1) do
{
	case 0:
		{
			execVM "mission\Missions\bHeliCrash.sqf";
		};
	case 1:
		{
			execVM "mission\Missions\supplyVanCrash.sqf";
		};
	case 2:
		{
			execVM "mission\Missions\bPlaneCrash.sqf";
		};
	case 3:
		{
			execVM "mission\Missions\bCamp.sqf";
		};
	case 4:
		{
			execVM "mission\Missions\bDevice.sqf";
		};
	case 5:
		{
			execVM "mission\Missions\bHeliCrash.sqf";
		};
};


