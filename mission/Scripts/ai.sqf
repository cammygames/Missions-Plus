/*
	File: ai.sqf
	Author: drsubo
	Editied By: Cammygames
	usage = [_grpCnt] execVM "mission\Scripts\ai.sqf"
*/

_grpCnt = _this select 0;
_unit = objNull;
_centerpos = getmarkerpos "Marker1";
_unitGroup = createGroup RESISTANCE;
_unitGroup setBehaviour "AWARE";
_unitGroup setCombatMode "RED";

switch (_grpCnt) do
{
	case 1:
	    {
		_unit1 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"]; //Group Leader
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
	    };
	case 2:
	    {
		_unit1 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"]; //Group Leader
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];	    
		
		_unit1 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"]; //Group Leader
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];	    
	    };
	    
	case 3:
	    {
		_unit1 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"]; //Group Leader
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];	    
		
		_unit1 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"]; //Group Leader
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		
		_unit1 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"]; //Group Leader
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
		_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];	   
	    };
};

_unit setSkill 0.6;
_unit setRank "Private";
_unit enableAI "TARGET";

_unit enableAI "AUTOTARGET";

_unit enableAI "MOVE";

_unit enableAI "ANIM";

_unit enableAI "FSM";


_unit1 setSkill 0.6;
_unit1 setRank "Private";
_unit1 enableAI "TARGET";

_unit1 enableAI "AUTOTARGET";

_unit1 enableAI "MOVE";

_unit1 enableAI "ANIM";

_unit1 enableAI "FSM";

//_unit call EPOCH_server_save_vehicle;
_unit call EPOCH_server_savePlayer;
//_unit call EPOCH_server_setVToken;
//EPOCH_pushPlayer_PVS = _unit1;
//publicVariableServer "EPOCH_pushPlayer_PVS";

_unitGroup selectLeader _unit1;
