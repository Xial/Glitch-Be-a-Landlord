extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "egg_seasoner"
	inherit_effects = false
	inherit_art = false
	display_name = "Egg Seasoner"
	localized_names = {}
	value = 3
	description = ""
	localized_descriptions = {}
	values = []
	rarity = "none"
	groups = []
	sfx = []
	effects = [
	{"comparisons": [{"a": "destroyed", "b": true}], "value_to_change": "value_bonus", "diff": 5},
	{"effect_type": "adjacent_symbols", "comparisons": [{"a": "type", "b": "coin"}], "value_to_change": "destroyed", "diff": true},
	{}
	]
