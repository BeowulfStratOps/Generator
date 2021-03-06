/////bmf-v1_5////
// ACRE Default Babel (off), Split Channels
[false, true] call acre_api_fnc_setupMission;

// AI can here players through ACRE
[true] call acre_api_fnc_setRevealToAI;

// Turns off antenna direction
[true] call acre_api_fnc_ignoreAntennaDirection; 

// Moved to mission/briefing.sqf
/*
	bso_acre_languages = [["en","English"],["gr","Greek"]];
	bso_acre_language_blufor = ["en"];
	bso_acre_language_opfor = ["gr"];
	bso_acre_language_indfor = ["gr","en"];
	bso_acre_language_civilian = ["gr"];
*/
waitUntil {alive player};
 
if (hasInterface) then {
    {
        _x call acre_api_fnc_babelAddLanguageType;
    } foreach bso_acre_languages;
 
    switch (side player) do {
        case blufor: {
            bso_acre_language_blufor call acre_api_fnc_babelSetSpokenLanguages;
            [bso_acre_language_blufor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
        };
        case opfor: {
            bso_acre_language_opfor call acre_api_fnc_babelSetSpokenLanguages;
            [bso_acre_language_opfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
        };
        case independent: {
            bso_acre_language_indfor call acre_api_fnc_babelSetSpokenLanguages;
            [bso_acre_language_indfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
        };
        case civilian: {
            bso_acre_language_civilian call acre_api_fnc_babelSetSpokenLanguages;
            [bso_acre_language_civilian select 0] call acre_api_fnc_babelSetSpeakingLanguage;
        };			
        default {
            bso_acre_language_blufor call acre_api_fnc_babelSetSpokenLanguages;
            [bso_acre_language_blufor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
        };
    };
};