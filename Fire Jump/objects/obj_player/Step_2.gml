/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5DDF0A3C
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
if(vspeed > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 78C06330
	/// @DnDParent : 5DDF0A3C
	/// @DnDArgument : "spriteind" "spr_player_fall"
	sprite_index = spr_player_fall;
	image_index = 0;
}