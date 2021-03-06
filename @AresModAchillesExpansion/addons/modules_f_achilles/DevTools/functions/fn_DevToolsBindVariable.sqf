////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//	AUTHOR: Kex
//	DATE: 4/1/17
//	VERSION: 2.0
//	FILE: Achilles\modules\fn_DevToolsBindVariable.sqf
//  DESCRIPTION: Module for binding variables to objects
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#include "\achilles\modules_f_ares\module_header.hpp"

private _object = [_logic, false] call Ares_fnc_GetUnitUnderCursor;
if (isNull _object) exitWith {[localize "STR_NO_OBJECT_SELECTED"] call Ares_fnc_ShowZeusMessage; playSound "FD_Start_F"};

private _dialogResult = [
	localize "STR_BIND_VAR",
	[
		[localize "STR_VAR",""],
		[localize "STR_MODE",["Local","Public"]]
	]
] call Ares_fnc_ShowChooseDialog;
if (count _dialogResult > 0) then 
{
	private _var = _dialogResult select 0;
	if (_dialogResult select 1 == 0) then
	{
		_object call compile format["%1 = _this;",_var];
	} else
	{
		[_object, compile format["%1 = _this;",_var], 0]  call Achilles_fnc_spawn;
	};
};

#include "\achilles\modules_f_ares\module_footer.hpp"
