[[_this select 0],{gamemaster addCuratorEditableObjects[[_this select 0]];}] remoteExecCall ["bis_fnc_call",2];
if (isClass(configFile >> "CfgPatches" >> "ace_hearing")) then {
	if ([_this select 1] call ace_hearing_fnc_hasEarPlugsIn) then {[_this select 0] call ace_hearing_fnc_putInEarplugs;};
};
deleteVehicle (_this select 1);
[player, [missionNamespace, format["%1_inventory_var",player]]] call BIS_fnc_loadInventory;
