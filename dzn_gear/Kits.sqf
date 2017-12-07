// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 5 || daytime > 17) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 5 || daytime > 17) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************


//gamers
kit_police_medic = [
	["<EQUIPEMENT >>  ","CUP_U_C_Rescuer_01","","TRYK_B_Medbag_BK","H_Watchcap_cbr",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>   ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","acc_flashlight_pistol","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","tf_anprc152_4"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",2],["ACE_morphine",1],["SmokeShellOrange",1]]],
	["<VEST ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<BACKPACK ITEMS >> ",[["ACE_microDAGR",1],["ACE_plasmaIV_250",4],["ACE_quikclot",10],["ACE_bodyBag",2],["ACE_bloodIV_250",6],["ACE_CableTie",4],["ACE_personalAidKit",2],["ACE_Banana",2],["ACE_atropine",3],["ACE_SpraypaintRed",1],["ACE_morphine",7],["ACE_packingBandage",10],["ACE_Cellphone",1],["ACE_salineIV_250",4],["ACE_surgicalKit",1],["ACE_fieldDressing",10],["ACE_elasticBandage",10],["usm_fielddressing",2],["ACE_tourniquet",7],["ACE_adenosine",7],["ACE_epinephrine",7],["SmokeShellRed",2],["ACE_Chemlight_HiWhite",2]]]
];
kit_police_pl = [
	["<EQUIPEMENT >>  ","TRYK_SUITS_BLK_F","demian2435_police_vest","","","G_Aviator"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","acc_flashlight_pistol","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["ACE_CableTie",2],["ACE_Cellphone",1],["HANDGUN MAG",5],["ACE_M84",4],["SmokeShell",1],["rhs_mag_m7a3_cs",1],["ACE_Chemlight_HiRed",4],["rhsusf_mag_17Rnd_9x19_FMJ",4]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_police_sl = [
	["<EQUIPEMENT >>  ","TRYK_U_B_Denim_T_BG_WH","demian2435_police_vest","TRYK_B_Belt_BLK","H_Cap_police",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","acc_flashlight_pistol","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["ACE_CableTie",2],["ACE_Cellphone",1],["HANDGUN MAG",4],["ACE_M84",4],["SmokeShell",1],["rhs_mag_m7a3_cs",1],["ACE_Chemlight_HiRed",4],["rhsusf_mag_17Rnd_9x19_FMJ",4]]],
	["<BACKPACK ITEMS >> ",[["HANDGUN MAG",2]]]
];
kit_police_r = [
	["<EQUIPEMENT >>  ","demian2435_police_man_uniform","demian2435_police_vest","TRYK_B_Belt_BLK","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","acc_flashlight_pistol","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["ACE_CableTie",2],["ACE_Cellphone",1],["HANDGUN MAG",4],["ACE_M84",4],["SmokeShell",1],["rhs_mag_m7a3_cs",1],["ACE_Chemlight_HiRed",4],["rhsusf_mag_17Rnd_9x19_FMJ",4]]],
	["<BACKPACK ITEMS >> ",[["HANDGUN MAG",2]]]
];
kit_police_ar = [
	["<EQUIPEMENT >>  ","demian2435_police_man_uniform","demian2435_police_vest","TRYK_B_Belt_BLK","",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4_carryhandle_mstock","rhs_mag_30Rnd_556x45_M855_Stanag",["","","optic_Yorris",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","acc_flashlight_pistol","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["ACE_CableTie",2],["ACE_Cellphone",1],["HANDGUN MAG",2],["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Orange",4],["ACE_M84",2],["SmokeShell",1],["rhs_mag_m7a3_cs",1],["ACE_Chemlight_HiRed",4]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_police_gr = [
	["<EQUIPEMENT >>  ","demian2435_police_man_uniform","demian2435_police_vest","TRYK_B_Belt_BLK","",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_M590_8RD","rhsusf_8Rnd_00Buck",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_glock17g4","rhsusf_mag_17Rnd_9x19_JHP",["","acc_flashlight_pistol","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["ACE_CableTie",2],["ACE_Cellphone",1],["HANDGUN MAG",2],["ACE_M84",2],["SmokeShell",1],["rhs_mag_m7a3_cs",1],["ACE_Chemlight_HiRed",4],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[["rhsusf_8Rnd_doomsday_Buck",1],["HANDGUN MAG",2],["rhsusf_8Rnd_HE",2],["PRIMARY MAG",2]]]
];


//enemy

kit_suspectarrest = [
	["<EQUIPEMENT >>  ","CUP_I_B_PMC_Unit_24","CUP_V_OI_TKI_Jacket1_04","","CUP_H_TKI_Lungee_02",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_suspect_1 = [
	["<EQUIPEMENT >>  ","CUP_I_B_PMC_Unit_2","","","H_Bandanna_surfer_blk",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_TaurusTracker455","CUP_6Rnd_45ACP_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_suspect_2 = [
	["<EQUIPEMENT >>  ","CUP_I_B_PMC_Unit_1","","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_TaurusTracker455","CUP_6Rnd_45ACP_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[["ACE_elasticBandage",1],["ACE_fieldDressing",3],["ACE_morphine",1]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_suspect_3 = [
	["<EQUIPEMENT >>  ","CUP_I_B_PMC_Unit_1","","","","G_Aviator"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_SA61","CUP_10Rnd_B_765x17_Ball_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[["ACE_elasticBandage",1],["ACE_fieldDressing",3],["ACE_morphine",1],["CUP_HandGrenade_RGD5",1],["HANDGUN MAG",4],["CUP_20Rnd_B_765x17_Ball_M",1]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_suspect_4 = [
	["<EQUIPEMENT >>  ","CUP_I_B_PMC_Unit_5","","","H_Bandanna_surfer_blk","rhs_googles_black"],
	["<PRIMARY WEAPON >>  ","rhs_weap_M590_5RD","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[["ACE_elasticBandage",1],["ACE_fieldDressing",3],["ACE_morphine",1],["rhsusf_5Rnd_00Buck",8]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_suspect_random = [
	"kit_suspect_1"
	,"kit_suspect_2"
	,"kit_suspect_3"
	,"kit_suspect_4"
 ];
 
 //civilian
kit_civ_1 = [
	["<EQUIPEMENT >>  ","CUP_U_C_Mechanic_01","","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[["ACE_elasticBandage",1],["ACE_fieldDressing",3],["ACE_morphine",1]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_civ_2 = [
	["<EQUIPEMENT >>  ","CUP_U_C_Pilot_01","","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[["ACE_elasticBandage",1],["ACE_fieldDressing",3],["ACE_morphine",1]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_civ_3 = [
	["<EQUIPEMENT >>  ","U_OrestesBody","","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_civ_4 = [
	["<EQUIPEMENT >>  ","CUP_U_C_Citizen_02","","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_civ_5 = [
	["<EQUIPEMENT >>  ","CUP_O_TKI_Khet_Jeans_01","","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_civ_6 = [
	["<EQUIPEMENT >>  ","CUP_O_TKI_Khet_Jeans_02","","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_civ_7 = [
	["<EQUIPEMENT >>  ","CUP_O_TKI_Khet_Jeans_03","","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_civ_8  = [
	["<EQUIPEMENT >>  ","TRYK_U_B_BLK_T_WH","","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_civ_9 = [
	["<EQUIPEMENT >>  ","TRYK_U_B_Denim_T_BK","","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_civ_random = [
	"kit_civ_1"
	,"kit_civ_2"
	,"kit_civ_3"
	,"kit_civ_4"
	,"kit_civ_5"	
	,"kit_civ_6"
	,"kit_civ_7"
	,"kit_civ_8"
	,"kit_civ_9"
];
	