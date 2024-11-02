class ctrlMenuStrip;
class display3DEN
{
    class Controls
    {
        class MenuStrip: ctrlMenuStrip
        {
            class Items
            {
                class MissionExport {
                    items[] += {"E2TBMissionTerrainBuilder", "E2TBMissionTerrainBuilderAbsolute", "E2TBMissionTerrainBuilderEnh", "E2TBMissionTerrainBuilderEnhAbsolute"};
                };

                class E2TBMissionTerrainBuilder
                {
                    text   = "$STR_SCAR_E2TB_3DEN_MenuBar";
                    data   = "E2TBMissionTerrainBuilder";
                    action = "[false,false] spawn SCAR_E2TB_fnc_exportFrom3DEN;";
                };
                
                class E2TBMissionTerrainBuilderAbsolute
                {
                    text   = "$STR_SCAR_E2TB_3DEN_MenuBarAbsolute";
                    data   = "E2TBMissionTerrainBuilder";
                    action = "[true,false] spawn SCAR_E2TB_fnc_exportFrom3DEN;";
                };
                
                class E2TBMissionTerrainBuilderEnh
                {
                    text   = "$STR_SCAR_E2TB_3DEN_MenuBarEnh";
                    data   = "E2TBMissionTerrainBuilder";
                    action = "[false,true] spawn SCAR_E2TB_fnc_exportFrom3DEN;";
                };

                class E2TBMissionTerrainBuilderEnhAbsolute
                {
                    text   = "$STR_SCAR_E2TB_3DEN_MenuBarEnhAbsolute";
                    data   = "E2TBMissionTerrainBuilder";
                    action = "[true,true] spawn SCAR_E2TB_fnc_exportFrom3DEN;";
                };
            };
        };
    };
};

class Cfg3DEN {
    class Notifications {
        class SCAR_E2TB_exportDone {
            text = "$STR_SCAR_E2TB_CopiedToClipboard";
            isWarning = 0;
        };
    };
};
