/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D4DA46A
/// @DnDArgument : "var" "rescued"
/// @DnDArgument : "value" "false"
if(rescued == false)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 3D1670EB
	/// @DnDParent : 3D4DA46A
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "score_rescue"
	global.score_rescue += 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3273C044
	/// @DnDParent : 3D4DA46A
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "rescued"
	rescued = true;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 70D261F0
	/// @DnDParent : 3D4DA46A
	/// @DnDArgument : "speed" "-18"
	/// @DnDArgument : "type" "2"
	vspeed = -18;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 2F9D9DF9
	/// @DnDParent : 3D4DA46A
	/// @DnDArgument : "force" "0.5"
	gravity = 0.5;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7A9A74B2
	/// @DnDParent : 3D4DA46A
	/// @DnDArgument : "value" "obj_player.depth - 1"
	/// @DnDArgument : "instvar" "9"
	depth = obj_player.depth - 1;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 642F7C45
	/// @DnDParent : 3D4DA46A
	/// @DnDArgument : "expr" "sprite_index"
	var l642F7C45_0 = sprite_index;
	switch(l642F7C45_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 59EE289D
		/// @DnDParent : 642F7C45
		/// @DnDArgument : "const" "spr_civilian_0"
		case spr_civilian_0:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 1C1705AB
			/// @DnDParent : 59EE289D
			/// @DnDArgument : "spriteind" "spr_civilianrescued_0"
			sprite_index = spr_civilianrescued_0;
			image_index = 0;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 39FA5480
		/// @DnDParent : 642F7C45
		/// @DnDArgument : "const" "spr_civilian_1"
		case spr_civilian_1:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 32294F3E
			/// @DnDParent : 39FA5480
			/// @DnDArgument : "spriteind" "spr_civilianrescued_1"
			sprite_index = spr_civilianrescued_1;
			image_index = 0;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 52C4F41A
		/// @DnDParent : 642F7C45
		/// @DnDArgument : "const" "spr_civilian_2"
		case spr_civilian_2:
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 0EA5FAC2
			/// @DnDParent : 52C4F41A
			/// @DnDArgument : "spriteind" "spr_civilianrescued_2"
			sprite_index = spr_civilianrescued_2;
			image_index = 0;
			break;
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 441C6DEA
	/// @DnDParent : 3D4DA46A
	/// @DnDArgument : "soundid" "snd_civilian_rescue"
	audio_play_sound(snd_civilian_rescue, 0, 0);
}