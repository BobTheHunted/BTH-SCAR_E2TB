/*
    Author: _SCAR

    Description:
    Export all 3DEN entities to clipboard.

    Parameter(s):
    0: BOOLEAN - true for absolute positioning, false for relative.

    Return:
    true

    Example:
    [false] call SCAR_E2TB_fnc_exportFrom3DEN
*/

params ["_isAbsolute"];

// get entities
private _entities = all3DENEntities select 0;

// remove eden scale from object and assign it as a variable
{
	private _scale = _x get3DENAttribute "ENH_objectScaling" select 0;
	_x setVariable ["BTH_ENH_objectScaling", _scale, true];
    _x set3DENAttribute ["ENH_objectScaling", 1.000000];
	_x setObjectScale 1.0; // Force scale change to rendered object just in case
} forEach _entities;

// copy to clip
[_entities, _isAbsolute] call SCAR_E2TB_fnc_exportToClipboard;

// re-apply eden scale
{
	private _scale = _x getVariable "BTH_ENH_objectScaling";
    _x set3DENAttribute ["ENH_objectScaling", _scale];
	_x setObjectScale _scale;  // Force scale change
} forEach _entities;

// message
disableSerialization;
["SCAR_E2TB_exportDone", 5] call BIS_fnc_3DENNotification;

// return
true
