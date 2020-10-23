# Copyright (c) 2016 Calinou and contributors
# Licensed under the MIT license, see `LICENSE.md` for more information.

extends Control

func _ready():
	# Hide HUD when entering main menu
	Game.hide_hud()

func _on_PlayButton_pressed():
	get_tree().change_scene_to(load("res://data/scenes/levels/%d.tscn" % Game.level_to_play))

func _on_SpinBox_value_changed(value):
	Game.level_to_play = int(value)

# Change the sound volume when the slider value is changed
func _on_VolumeSlider_value_changed(value):
	AudioServer.set_fx_global_volume_scale(float(value))

