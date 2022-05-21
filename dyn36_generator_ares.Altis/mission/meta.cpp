/////bmf-v2_2////

///////// ======  Mission meta data
//
// This file contains meta data specific to you mission. It also has the includes for your custom loadouts, and the debriefing information.
//

/*
Use the fields below to set your mission attributes. For assistance speak to an admin or see the BI wiki for Description.ext
*/

overviewText = "1-36<br />DYN<br />Unlimited<br />Advanced Medical<br />Dynamic DAC Generator - Altian Rangers take on the FIA over Altis<br />JIP teleport to Leader<br /><br />Walker";

/*

The OverviewText string is used to easily edit your mission description that appears on the server when your mission is selected.
 Carefully edit each parameter as below, and then construct your string using "<br />" to break each line. YOU CANNOT USE RETURN OR ADDITIONAL SPACES IN THIS LINE, YOU MUST USE BREAK
 DO NOT FILL IN THE DESCRIPTION FIELD IN THE EDITOR'S MISSION INTEL WINDOW, THIS WILL OVERRIDE YOUR STRING


0-60 															// <!-- Suggested Minimum-Maximum players

COOP 															//<!-- Game type - COOP/TvT/Dynamic

Standard Length													//<!-- Expected Game Length - Short (30 Mins ) / Standard ( 1 - 1/2 Hour ) / Long ( 1 1/2 Hours + ) / Persistant (ALiVE Database Enabled)

Spectator														//<! -- Respawns - Spectator/Spectator box/Tickets/Limit/Unlimited

Advanced Medical												//<! -- Medical System - Standard/Advanced/Medevac

Brief description about the mission 							// <!-- A VERY brief overview

Author 															//<!--- This is you!!

*/

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

overviewPicture = "mission\gene_ares.jpg";								// <!-- Mission Picture (Use jpg at 1024x512 for quality/compression)
loadScreen = "mission\gene_ares.jpg";									// <!-- Loading Screen Picture (See above)
OnLoadName = "Generator - Ares";									// <!-- Mission Name (Just Text)
OnLoadMission = "AAF SF are unleashed on the FIA insurgents"; 	
author="Walker";												// <!-- This is you!!

class Header {
	maxPlayers = 36;						// <!-- CHANGE Where the number is the total playable slots
	minPlayers = 1;
	gameType = COOP;						// <!-- Mission Type
};

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//BSO Loadout System (Add custom loadouts to your mission)

class CfgBsoLoadouts {
	#include "loadouts\blufor.cpp"
  //#include "loadouts\opfor.cpp" //create this file by copying blufor.cpp and renaming
  //#include "loadouts\indep.cpp" //create this file by copying blufor.cpp and renaming
};


class Params
{
	class Daytime
	{
		title = "Time";
		texts[] = {"Morning","Day","Evening","Night"};
		values[] = {6,12,18,0};
		default = 12;
		function = "BIS_fnc_paramDaytime"; // (Optional) Function called when player joins, selected value is passed as an argument
 		isGlobal = 1; // (Optional) 1 to execute script / function locally for every player who joins, 0 to do it only on server
	};
	
	class Weather
	{
		title = "Weather";
		texts[] = {"Clear","Cloudy","Overcast"};
		values[] = {0,0.5,1};
		default = 0.2;
		function = "BIS_fnc_setOvercast"; // (Optional) Function called when player joins, selected value is passed as an argument
 		isGlobal = 1; // (Optional) 1 to execute script / function locally for every player who joins, 0 to do it only on server
	};
	
	class GroupTele
	{
		title = "Group Leader Teleport Flag";
		texts[] = {"Enabled","Disabled"};
		values[] = {1,0};
		default = 1;
	};	

	class LeaderTele
	{
		title = "Mission Leader Teleport Flag";
		texts[] = {"Enabled","Disabled"};
		values[] = {1,0};
		default = 1;
	};	
	
};

// Used for custom debriefing screens launched by the admin or triggers ingame. See briefing.sqf for admin interactions
class CfgDebriefing
{
	class End1
	{
		title = "Mission Completed";
		subtitle = "";
		description = "You have completed your objectives.";
		pictureBackground = "";
		picture = "b_inf";
		pictureColor[] = {0.0,0.3,0.6,1};
	};
	class loser
	{
		title = "Mission Failed";
		subtitle = "";
		description = "You have failed your objectives";
		pictureBackground = "";
		picture = "KIA";
		pictureColor[] = {0.0,0.3,0.6,1};
	};
};


#include "gene\vehcSpawn\MyDialog.hpp"