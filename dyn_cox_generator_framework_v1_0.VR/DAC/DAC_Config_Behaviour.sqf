//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Behaviour  //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private [
			"_array","_setSkill","_setCombat","_setBehav","_setSpeed","_setForm","_setPatrol","_setSearch",
			"_setFleeing","_setHeliVal","_setPause","_setBldgBeh","_setSupport","_setJoin","_setEmpVeh","_setSupTime","_setHidTime"
		];

switch (_this select 0) do
{
//-------------------------------------------------------------------------------------------------------------------------
	case 0: //main patrol
	{
		//_setSkill = ["aimingAccuracy","aimingShake","aimingSpeed","Endurance","spotDistance","spotTime","courage","reloadSpeed","commanding","general"];
		_setSkill   = [[0.1,0.2],[0.1,0.2],[0.1,0.2],[0.2,0.4],[0.5,0.8],[0.2,0.4],[0.2,0.4],[0.2,0.4],[0.2,0.4],[0.2,0.4]];
		_setCombat  = ["red"];
		_setBehav   = ["safe"];
		_setSpeed   = ["limited"];
		_setForm    = ["stag column"];
		_setFleeing = [0.1,20];
		_setHeliVal = [50,100,0.7,1];
		_setPause   = [[5,10],[5,10],[5,10],[20,30,5,5],[1,3],[0,0]];
		_setBldgBeh = [10,50,300,600,2];
		_setPatrol  = ["45 + (20 * (skill _leader))","(60 + (random 60)) + ((skill _leader) * 50)"];
		_setSearch  = ["40 + ((skill _leader) * 150)","50 + ((skill _leader) * 50)"];
		_setSupport = [1,1];//support for other zones //opfor arti
		_setJoin    = 2;
		_setEmpVeh  = [[150,100],[150,100]];
		_setSupTime = ["5 + ((skill _unit) * (5 * DAC_AI_Level))",2,5];
		_setHidTime = ["(((10 * DAC_AI_Level) + ((skill _leader) * 50)) / ((count units _group) + 1))"];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 1: //qrf
	{
		//_setSkill = ["aimingAccuracy","aimingShake","aimingSpeed","Endurance","spotDistance","spotTime","courage","reloadSpeed","commanding","general"];
		_setSkill   = [[0.1,0.2],[0.1,0.2],[0.1,0.2],[0.2,0.4],[0.5,0.8],[0.2,0.4],[0.2,0.4],[0.2,0.4],[0.2,0.4],[0.2,0.4]];
		_setCombat  = ["yellow"];
		_setBehav   = ["safe"];
		_setSpeed   = ["normal"];
		_setForm    = ["stag column"];
		_setFleeing = [0.1,20];
		_setHeliVal = [50,100,0.7,1];
		_setPause   = [[5,10],[5,10],[5,10],[20,30,5,5],[1,3],[0,0]];
		_setBldgBeh = [10,50,300,60,2];
		_setPatrol  = ["45 + (20 * (skill _leader))","(60 + (random 60)) + ((skill _leader) * 50)"];
		_setSearch  = ["40 + ((skill _leader) * 150)","50 + ((skill _leader) * 50)"];
		_setSupport = [1,1];//support for other zones //opfor arti
		_setJoin    = 2;
		_setEmpVeh  = [[150,100],[150,100]];
		_setSupTime = ["5 + ((skill _unit) * (5 * DAC_AI_Level))",2,5];
		_setHidTime = ["(((10 * DAC_AI_Level) + ((skill _leader) * 50)) / ((count units _group) + 1))"];
	};
//-------------------------------------------------------------------------------------------------------------------------
	Default {
				if(DAC_Basic_Value != 5) then
				{
					DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
					hintc "Error: DAC_Config_Behaviour > No valid config number";
				};
				if(true) exitwith {};
			};
};

_array =	[
				_setSkill,_setCombat,_setBehav,_setSpeed,_setForm,_setFleeing,
				_setHeliVal,_setPause,_setBldgBeh,_setPatrol,_setSearch,
				_setSupport,_setJoin,_setEmpVeh,_setSupTime,_setHidTime
			];
_array