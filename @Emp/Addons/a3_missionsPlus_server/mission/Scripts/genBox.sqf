/*
	Based Of DZMS
	File: genBox.sqf
	Author: Cammygames
	Description: generates a box of loot at a mission
	Usage: [_crate,"type"] execVM "box/genBox.sqf";
*/
_crate = _this select 0;
_type = _this select 1;

//Clear out defaults
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

//Below are the lists of allowed weapons for the weapon crates.
pistolList = ["MultiGun","hgun_Rook40_F","hgun_P07_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_02_F","hgun_PDW2000_Holo_F"];
otherList = ["NVG_EPOCH","FirstAidKit","Rangefinder","optic_Arco","ItemRuby","meatballs_epoch","ItemSodaOrangeSherbet","optic_ACO_grn"];
clothesList = ["U_O_GhillieSuit","B_Carryall_cbr"];
primaryList = ["Rollins_F","m249_EPOCH","m107_EPOCH","m16_EPOCH","M14_EPOCH","m4a3_EPOCH","AKM_EPOCH","srifle_LRR_SOS_F","arifle_Katiba_C_F","arifle_TRG21_F","SMG_02_ACO_F","SMG_02_ACO_F"];
buildSupply = ["CinderBlocks","MortarBucket","ItemKiloHemp","KitStudWall","ItemCorrugated","CSGAS","PartPlankPack","EnergyPack","CircuitParts","KitTiPi","JackKit","ItemScraps","ChainSaw","Hatchet"];
foodList = ["meatballs_epoch","ItemSodaOrangeSherbet","ItemSodaRbull","ItemSodaOrangeSherbet","ItemSodaPurple","ItemSodaMocha","ItemSodaBurst","ItemTrout","ItemSeaBass","ItemTuna","ItemTroutCooked","ItemSeaBassCooked","ItemTunaCooked","FoodBioMeat","FoodMeeps","FoodSnooter","FoodWalkNSons"];

if (_type == "weapons") then 
{
	// load pistols
	_scount = count pistolList;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = pistolList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 8))];
		};
	};

	//load primary
	_scount = count primaryList;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = primaryList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 8))];
		};
	};
	_scount = count otherList;
	for "_x" from 0 to 5 do {
		_sSelect = floor(random _sCount);
		_item = otherList select _sSelect;
		_crate addMagazineCargoGlobal [_item,3];
	};
};
if (_type == "building") then 
{
	_scount = count buildSupply;
	for "_x" from 0 to 15 do {
		_sSelect = floor(random _sCount);
		_item = buildSupply select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};
	_scount = count otherList;
	for "_x" from 0 to 5 do {
		_sSelect = floor(random _sCount);
		_item = otherList select _sSelect;
		_crate addMagazineCargoGlobal [_item,5];
	};
};
if (_type == "food") then 
{
	_scount = count foodList;
	for "_x" from 0 to 20 do {
		_sSelect = floor(random _sCount);
		_item = foodList select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};
};