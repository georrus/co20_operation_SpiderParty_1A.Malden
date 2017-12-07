/*
 * Name of trigger to represent players base;
 * If set, it's possible to use :
 *    call fnc_CheckPlayersReturned    - function to check if all player returned to base
 *    BaseLoc                          - location created at PlayersBaseTrigger position (can be used in (getPos _unit) in BaseLoc
 * Set - PlayersBaseTrigger = "" to disable
*/
PlayersBaseTrigger = if (!isNil "baseTrg") then { baseTrg } else { "" };

/*
 * Default sleep interval between Mission Conditions checks (seconds)
*/
tSF_MissionCondition_DefaultCheckTimer 			= 15;

// If you're Lim~, then you may need this. Uncomment to use.
// if (isNil "ts_tasks") then { ts_tasks = 0 };

/*
 * List of mission Ends and Conditions (up to 20 conditions allowed)
 * In format MissionCondition%1 = [ 
 * 			@EndingClassname(String)
 *			, @Condition(String)
 *			, @Note/Description(String)
 *			, @TimerInterval(Number,seconds, optional) 
 *		];
 *
 *	Примеры условий:
 *	MVP/Объект доставлен в зону: 						
 *			TGT inArea TRG_NAME
 *	MVP/Объект жив:										
 *			alive TGT
 *	MVP/Объект уничтожен:
 *			!alive TGT
 *	Все игроки добрались до зоны (триггер baseTrg):
 *			{call fnc_CheckPlayersReturned}
 *	Хоть один игрок добрался до зоны: 
 *			{ {_x inArea TRG_1} count (call BIS_fnc_listPlayers) > 0}
 *			или
 *			[TRG_1, "", "> 1"] call dzn_fnc_ccPlayers 	
 *	Игроков в зоне больше 3 (see https://github.com/10Dozen/dzn_commonFunctions/wiki/Area-Functions#dzn_fnc_ccplayers)
 *			[TRG_1, "", "> 3"] call dzn_fnc_ccPlayers 
 *	Все игроки умерли:
 *			{ {alive _x} count (call BIS_fnc_listPlayers) < 1}
 *	Юнитов красной стороны в зоне TRG_1 меньше 3 (see https://github.com/10Dozen/dzn_commonFunctions/wiki/Area-Functions#dzn_fnc_ccunits)
 *			[ TRG_1, "east", "", "< 3"] call dzn_fnc_ccUnits
 *	Вооруженных юнитов красной стороны в зонах TRG_1, TRG_2, TRG_3 меньше 3
 *			[ [TRG_1, TRG_2, TRG_3], "east", "primaryWeapon _x != ''", "< 3"] call dzn_fnc_ccUnits
 */

// Код условия может быть строкой или кодом в { }

MissionCondition1 = [ "WIN", { (mvp inArea trfinish) && (civ1 inArea trfinish) && (civ2 inArea trfinish) }, "all evac", 15 ];
MissionCondition2 = [ "WIPED", { {alive _x} count (call BIS_fnc_listPlayers) < 1 }, "all poiceman dead", 30 ];
MissionCondition3 = [ "FAIL", { (!alive mvp) && (civ1 inArea trfinish) OR (civ2 inArea trfinish) }, "all evac", 30 ];
MissionCondition4 = [ "WIN6", { (mvp inArea trfinish) && (!alive civ1) OR (!alive civ2) }, "all evac", 30 ];
