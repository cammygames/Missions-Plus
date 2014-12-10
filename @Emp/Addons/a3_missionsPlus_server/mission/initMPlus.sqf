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
			execVM "\a3_missionsPlus_server\mission\bHeliCrash.sqf";
		};
	case 1:
		{
			execVM "\a3_missionsPlus_server\mission\supplyVanCrash.sqf";
		};
	case 2:
		{
			execVM "\a3_missionsPlus_server\mission\bPlaneCrash.sqf";
		};
	case 3:
		{
			execVM "\a3_missionsPlus_server\mission\bCamp.sqf";
		};
	case 4:
		{
			execVM "\a3_missionsPlus_server\mission\bDevice.sqf";
		};
	case 5:
		{
			execVM "\a3_missionsPlus_server\mission\bHeliCrash.sqf";
		};
};


