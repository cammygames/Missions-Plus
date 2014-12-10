/*
	File: ai.sqf
	Author: drsubo
	usage : [_uLoc] execVM
*/
_centerpos = _this select 0;
_unit = objNull;
_unitGroup = createGroup RESISTANCE;
_unitGroup setBehaviour "AWARE";
_unitGroup setCombatMode "RED";
_unit1 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
_unit1 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
_unit1 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
_unit1 = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];

_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];

_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];
_unit = _unitGroup createUnit ["I_Soldier_EPOCH", _centerpos, [], 0, "FORM"];

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
