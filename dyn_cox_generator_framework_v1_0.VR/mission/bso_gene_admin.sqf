// Mission end conditions. By editing the "end" and "loser" configs in meta.cpp you can have the admin end the mission with a debrief.
// BSO Generator Admin Actions

_mainAction = ["bso_end_mission", "Mission End Conditions", "", {}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_mainAction1 = ["bso_gen_mission", "BSO Mission Board", "BSO\noti\bso_logo.paa", {}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_mainAction2 = ["bso_gen_obj", "Gene Obj.", "", {}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin"], _mainAction] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin"], _mainAction1] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission"], _mainAction2] call ace_interact_menu_fnc_addActionToClass;

_sub1 = ["bso_end_mission_1", "Mission Success", "", {[-2,{["end1",true,4] call BIS_fnc_endMission;},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_sub2 = ["bso_end_mission_2", "Mission Failed", "", {[-2,{["loser",false,4] call BIS_fnc_endMission;},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;


_sub3 = ["bso_start_mission_1", "Secure Area", "", {[0,{execVM "mission\gene\mission_secure.sqf"},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_sub3a = ["bso_start_mission_1a", "Secure Area - Large", "", {[0,{execVM "mission\gene\mission_secure_large.sqf"},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_sub4 = ["bso_start_mission_2", "Destroy Weapons Cache", "", {[0,{execVM "mission\gene\mission_cache.sqf"},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_sub5 = ["bso_start_mission_3", "Capture HVT", "", {[0,{execVM "mission\gene\mission_c_hvt.sqf"},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_sub6 = ["bso_start_mission_4", "Eliminate HVT", "", {[0,{execVM "mission\gene\mission_e_hvt.sqf"},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;

_subr = ["bso_start_mission_R", "Random Obj.", "", {[0,{execVM "mission\gene\mission_random.sqf"},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_subC = ["bso_start_mission_C", "Clear Obj.", "", {[0,{execVM "mission\gene\mission_clear.sqf"},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;


[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_end_mission"], _sub1] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_end_mission"], _sub2] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission","bso_gen_obj"], _sub3] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission","bso_gen_obj"], _sub3a] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission","bso_gen_obj"], _sub4] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission","bso_gen_obj"], _sub5] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission","bso_gen_obj"], _sub6] call ace_interact_menu_fnc_addActionToClass;

[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission"], _subR] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission"], _subC] call ace_interact_menu_fnc_addActionToClass;