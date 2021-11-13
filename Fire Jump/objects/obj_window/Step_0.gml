/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16F04062
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height + 350"
if(y > room_height + 350)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 6ADE9A46
	/// @DnDParent : 16F04062
	/// @DnDArgument : "var" "new_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "200"
	/// @DnDArgument : "max" "room_width - 200"
	var new_x = floor(random_range(200, room_width - 200 + 1));

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4E04A39F
	/// @DnDParent : 16F04062
	/// @DnDArgument : "x" "new_x"
	/// @DnDArgument : "y" "-200"
	x = new_x;
	y = -200;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 235A0EEC
	/// @DnDParent : 16F04062
	/// @DnDArgument : "var" "chance"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "3"
	var chance = floor(random_range(0, 3 + 1));

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0A65D0D0
	/// @DnDParent : 16F04062
	/// @DnDArgument : "spriteind" "spr_window"
	sprite_index = spr_window;
	image_index = 0;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 7178E186
	/// @DnDParent : 16F04062
	/// @DnDArgument : "expr" "chance"
	var l7178E186_0 = chance;
	switch(l7178E186_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 0E64E86D
		/// @DnDParent : 7178E186
		case 0:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 68CB2CEF
			/// @DnDParent : 0E64E86D
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_civilian"
			/// @DnDArgument : "layer" ""Spawns""
			instance_create_layer(x + 0, y + 0, "Spawns", obj_civilian);
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 5C0E4503
			/// @DnDParent : 0E64E86D
			/// @DnDArgument : "imageind" "1"
			/// @DnDArgument : "spriteind" "spr_window"
			sprite_index = spr_window;
			image_index = 1;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 18A51856
		/// @DnDParent : 7178E186
		/// @DnDArgument : "const" "1"
		case 1:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 766416A4
			/// @DnDParent : 18A51856
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_fire"
			/// @DnDArgument : "layer" ""Spawns""
			instance_create_layer(x + 0, y + 0, "Spawns", obj_fire);
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 29F336D9
			/// @DnDParent : 18A51856
			/// @DnDArgument : "imageind" "2"
			/// @DnDArgument : "spriteind" "spr_window"
			sprite_index = spr_window;
			image_index = 2;
			break;
	}
}