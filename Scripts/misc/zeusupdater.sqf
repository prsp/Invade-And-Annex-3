//  ZeusPlayerUpdate Loop     //
//scripts\misc\zeusupdater.sqf//
//      MykeyRM [AW]          //
////////////////////////////////

//zeusupdater.sqf

waitUntil {time > 3};
call {while {true} do {objectsToAdd = (entities "AllVehicles" - entities "Animal" - entities "RoadCone_L_F" - [Quartermaster_8, Quartermaster_5, Quartermaster_6,Quartermaster_7,Quartermaster_3,Quartermaster_4,artyMLRS,artySorcher]); publicVariable "objectsToAdd";{_x addCuratorEditableObjects [(objectsToAdd), true]; } foreach allCurators; sleep 180;};};

//player groupChat "Zeus unit updater running";        //Can have hint that updater is running on startup remove // to activate.