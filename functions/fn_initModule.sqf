/*
    Author: _SCAR

    Description:
    Add actions to current player, if in SP.

    Return:
    true

    Example:
    [] call SCAR_E2TB_fnc_initModule
*/

private _activated = param [2, true, [true]];

if (_activated) then {
    if (hasInterface && !isMultiplayer) then {
        // wait
        waitUntil {!isNull player};
        // add action
        player addAction [(localize "STR_SCAR_E2TB_CopyToClipboard"), {
            [] call SCAR_E2TB_fnc_exportFromMission;
        }];
    };
};

// return
true