/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 29903014
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_foam"
/// @DnDArgument : "layer" ""Spawns""
instance_create_layer(x + 0, y + 0, "Spawns", obj_foam);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6C7A1C0E
/// @DnDArgument : "soundid" "snd_player_shoot"
audio_play_sound(snd_player_shoot, 0, 0);