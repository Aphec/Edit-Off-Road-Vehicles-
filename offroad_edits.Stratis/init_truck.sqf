/*
	Script by : Soolie *EvGaming*
	Email : MikeSulo@gmail.com
	YouTube : http://www.youtube.com/user/MikeSulo
	Date : 6/6/2013


	Put this in init.sqf and place an empty markers in the editor named truckspawn0, truckspawn1 etc
	[A,B,C,D,E,F,G,H,I] call compile preprocessFileLineNumbers "init_Truck.sqf";

 A is the marker where the truck will spawn. I have 11 set up already but you can add more below. (0 = truckspawn0, 1 = truckspawn1, 2 = truckspawn2 etc).
 B is the rear roll bars. Put 0 for nothing, Put 1 to add the bars.
 C is the lightbars. Put 0 for nothing, Put 1 for police, Put 2 for repair vehicle ( yellow lightbar, tools and parts in the back bed, front roll bar with winch, and rear roll bar.)
	When using the repair vehicle DO NOT equip the rollbar in slot -B- or the bumper in slot -G- because these attachments are already there. Using them twice results in texture problems.
 D are backpacks added to the sides Put 0 for nothing, Put 1 to add the bags
 E is the rear door Put 0 for a door, Put 1 to hide the door
 F is a flat metal front bumper. Put 0 for nothing, Put 1 to add the bumper
 G is a front bumper with a winch attached. Put 0 for nothing, Put 1 to add the bumper
 H is the main car color 0 = Tan, 1 = White, 2 = Red, 3 = Dark Red, 4 = Blue, 5 = Dark Blue, 6 = Light Purple, 7 = Hot Pink, 8 = Turquoise, 9 = Black, 10 = Camo, 11 = Soolie's Custom
 I is the secondary color. The numbers are the same
*/

private ['_rearcage', '_lightbar', '_backpack', '_backdoor', '_flatbumper', '_winchbumper', '_maincolor' ,'_secondcolor'];
	_obj = _this select 0;
	_rearcage = _this select 1;
	_lightbar = _this select 2;
	_backpack = _this select 3;
	_backdoor = _this select 4;
	_flatbumper = _this select 5;
	_winchbumper = _this select 6;
	_maincolor = _this select 7;
	_secondcolor = _this select 8;





	
	
	

	
	
	
	switch (_obj) do {
		case 0 : {_obj = "c_offroad" createVehicle (getMarkerPos "truckspawn0")};
		case 1 : {_obj = "c_offroad" createVehicle (getMarkerPos "truckspawn1")};
		case 2 : {_obj = "c_offroad" createVehicle (getMarkerPos "truckspawn2")};
		case 3 : {_obj = "c_offroad" createVehicle (getMarkerPos "truckspawn3")};
		case 4 : {_obj = "c_offroad" createVehicle (getMarkerPos "truckspawn4")};
		case 5 : {_obj = "c_offroad" createVehicle (getMarkerPos "truckspawn5")};
		case 6 : {_obj = "c_offroad" createVehicle (getMarkerPos "truckspawn6")};
		case 7 : {_obj = "c_offroad" createVehicle (getMarkerPos "truckspawn7")};
		case 8 : {_obj = "c_offroad" createVehicle (getMarkerPos "truckspawn8")};
		case 9 : {_obj = "c_offroad" createVehicle (getMarkerPos "truckspawn9")};
		case 10 : {_obj = "c_offroad" createVehicle (getMarkerPos "truckspawn10")};
		};
	sleep 0.01;
	switch (_rearcage) do {
		case 0 : {_obj animate ["HideConstruction", 1]};
		case 1 : {_obj animate ["HideConstruction", 0]};
		};
	switch (_lightbar) do {
		case 0 : {_obj animate ["HidePolice", 1]};
		case 1 : {_obj animate ["HidePolice", 0]};
		case 2 : {_obj animate ["HideServices", 0]};
		};
	switch (_backpack) do {
		case 0 : {_obj animate ["HideBackpacks", 1]};
		case 1 : {_obj animate ["HideBackpacks", 0]};
		};
	switch (_backdoor) do {
		case 0 : {_obj animate ["HideDoor3", 0]};
		case 1 : {_obj animate ["HideDoor3", 1]};
		};
	switch (_flatbumper) do {
		case 0 : {_obj animate ["HideBumper1", 1]};
		case 1 : {_obj animate ["HideBumper1", 0]};
		};
	switch (_winchbumper) do {
		case 0 : {_obj animate ["HideBumper2", 1]};
		case 1 : {_obj animate ["HideBumper2", 0]};
		};
	switch (_maincolor) do {
		case 0 : {_obj setObjectTexture [0, "\A3\soft_F\Offroad\Data\Offroad_ext_BASE01_CO.paa"]}; // Tan
		case 1 : {_obj setObjectTexture [0, "\A3\soft_F\Offroad\Data\Offroad_ext_BASE02_CO.paa"]}; // White
		case 2 : {_obj setObjectTexture [0, "\A3\soft_F\Offroad\Data\Offroad_ext_CO.paa"]}; // Red
		case 3 : {_obj setObjectTexture [0, "\A3\soft_F\Offroad\Data\Offroad_ext_BASE04_CO.paa"]}; // Dark Red
		case 4 : {_obj setObjectTexture [0, "\A3\soft_F\Offroad\Data\Offroad_ext_BASE03_CO.paa"]}; // Blue
		case 5 : {_obj setObjectTexture [0, "\A3\soft_F\Offroad\Data\Offroad_ext_BASE05_CO.paa"]}; // Dark Blue
		case 6 : {_obj setObjectTexture [0, "\A3\soft_F\Offroad\Data\Offroad_ext_as.paa"]}; // Light Purple
		case 7 : {_obj setObjectTexture [0, "\A3\soft_F\Offroad\Data\Offroad_ext_smdi.paa"]}; // Hot Pink
		case 8 : {_obj setObjectTexture [0, "\A3\soft_F\Offroad\Data\Offroad_ext_nohq.paa"]}; // Turquoise
		case 9 : {_obj setObjectTexture [0, "\A3\soft_F\Offroad\Data\Offroad_ext_ti_ca.paa"]}; // Black
		case 10 : {_obj setObjectTexture [0, "\A3\soft_F\Ifrit\Data\Ifrit_ext_01_co.paa"]}; // Camo
		case 11 : {_obj setObjectTexture [0, "crazy.jpg"]}; // Soolie Custom
		};
	switch (_secondcolor) do {
		case 0 : {_obj setObjectTexture [1, "\A3\soft_F\Offroad\Data\Offroad_ext_BASE01_CO.paa"]}; // Tan
		case 1 : {_obj setObjectTexture [1, "\A3\soft_F\Offroad\Data\Offroad_ext_BASE02_CO.paa"]}; // White
		case 2 : {_obj setObjectTexture [1, "\A3\soft_F\Offroad\Data\Offroad_ext_CO.paa"]}; // Red
		case 3 : {_obj setObjectTexture [1, "\A3\soft_F\Offroad\Data\Offroad_ext_BASE04_CO.paa"]}; // Dark Red
		case 4 : {_obj setObjectTexture [1, "\A3\soft_F\Offroad\Data\Offroad_ext_BASE03_CO.paa"]}; // Blue	
		case 5 : {_obj setObjectTexture [1, "\A3\soft_F\Offroad\Data\Offroad_ext_BASE05_CO.paa"]}; // Dark Blue	
		case 6 : {_obj setObjectTexture [1, "\A3\soft_F\Offroad\Data\Offroad_ext_as.paa"]}; // Light Purple
		case 7 : {_obj setObjectTexture [1, "\A3\soft_F\Offroad\Data\Offroad_ext_smdi.paa"]}; // Hot Pink
		case 8 : {_obj setObjectTexture [1, "\A3\soft_F\Offroad\Data\Offroad_ext_nohq.paa"]}; // Turquoise
		case 9 : {_obj setObjectTexture [1, "\A3\soft_F\Offroad\Data\Offroad_ext_ti_ca.paa"]}; // Black
		case 10 : {_obj setObjectTexture [1, "\A3\soft_F\Ifrit\Data\Ifrit_ext_01_co.paa"]}; // Camo
		case 11 : {_obj setObjectTexture [1, "crazy.jpg"]}; // Soolie Custom
	};

		
		
		
		
		
		
		