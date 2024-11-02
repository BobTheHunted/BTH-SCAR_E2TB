/*
    Author: _SCAR

    Description:
    Gets the scale of the model as reported from most popular editing tools.

    Parameter(s);
    0: OBJECT
    1: BOOLEAN - true to use eden enhanced scale attribute, false to not.

    Return:
    SCALAR

    Example:
    [_object,false] call SCAR_E2TB_fnc_getScale
*/

private _obj = _this select 0;
private _enh = _this select 1;

// scale
private _scale = _obj getVariable ["xCamScaleVal", objNull];                                                    // XCam
if (_scale isEqualTo objNull) then { _scale = _obj getVariable ["Sp_var_scale", objNull]; };                    // Surface Painter
if (_scale isEqualTo objNull) then { _scale = _obj getVariable ["MB_ObjVar_Scale", objNull]; };                 // Map Builder
if ((_scale isEqualTo objNull) && _enh) then { _scale = _obj getVariable ["BTH_ENH_objectScaling", objNull]; }; // Eden Enhanced
if (_scale isEqualTo objNull) then { _scale = 1; };
if ((typeName _scale) == "STRING") then { _scale = parseNumber(_scale); };

// return
_scale
