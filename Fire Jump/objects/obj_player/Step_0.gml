/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6998C6FE
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "room_height/2"
if(y < room_height/2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43345697
	/// @DnDParent : 6998C6FE
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "1"
	if(vspeed < 0)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0DA5F4FB
		/// @DnDParent : 43345697
		/// @DnDArgument : "var" "downspeed"
		/// @DnDArgument : "value" "-vspeed"
		var downspeed = -vspeed;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 4EBBBC25
		/// @DnDApplyTo : {obj_move_parent}
		/// @DnDParent : 43345697
		/// @DnDArgument : "value" "downspeed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "1"
		with(obj_move_parent) {
		y += downspeed;
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 2936B872
		/// @DnDParent : 43345697
		/// @DnDArgument : "value" "room_height/2"
		/// @DnDArgument : "instvar" "1"
		y = room_height/2;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6E505E16
		/// @DnDParent : 43345697
		/// @DnDArgument : "var" "back_y"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "layer_get_y"
		/// @DnDArgument : "arg" ""Background""
		var back_y = layer_get_y("Background");
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3DB7E303
		/// @DnDInput : 2
		/// @DnDParent : 43345697
		/// @DnDArgument : "function" "layer_y"
		/// @DnDArgument : "arg" ""Background""
		/// @DnDArgument : "arg_1" "back_y + downspeed"
		layer_y("Background", back_y + downspeed);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 198C45A7
		/// @DnDParent : 43345697
		/// @DnDArgument : "value" "downspeed/100"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.score_height"
		global.score_height += downspeed/100;
	}
}