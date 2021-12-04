extends "res://Mod Data.gd"

func _init():
	mod_type = "symbol"
	type = "fruitmachine"
	inherit_effects = false
	inherit_art = false
	display_name = "Fruit Changing Machine"
	localized_names = {}
	value = 2
	description = "A triple-carbine fruit-changing machine. It will transmogrify cherries into other fruit. This can come in surprisingly handy."
	localized_descriptions = {}
	values = []
	value_text = {"color": "symbol_reminder_down_text", "value": {"starting_value": 0, "var_math": [{"+": "saved_value"}]}}
	rarity = "common"
	groups = []
	sfx = []
	effects = [
	{"comparisons": 
		[{"a": "destroyed", "b": true}], 
		"value_to_change": "value_bonus", 
		"diff": 5
	},
		
	{"comparisons": 
		[{"a": "saved_value", "b": 3, "greater_than_eq": true}], 
		"tiles_to_add": {"group": "fruit"}
	},
	
	{"comparisons": 
		[{"a": "saved_value", "b": 6, "greater_than_eq": true}], 
		"value_to_change": "destroyed",
		"diff": true
	},
	
		
	{"effect_type": "adjacent_symbols", 
		"comparisons": 
			[{"a": "groups", "b": "fruit"}],
			"value_to_change": "permanent_bonus", 
			"diff": 1, 
			"anim": "rotate", 
			"anim_targets": "adjacent_symbol"
	},
	{"effect_type": "adjacent_symbols", 
		"comparisons": 
			[{"a": "type", "b": "cherry"}], 
			"value_to_change": "saved_value", 
			"diff": 1
	},			
	{"effect_type": "adjacent_symbols", 
		"comparisons": 
			[{"a": "type", "b": "cherry"}], 
			"value_to_change": "destroyed", 
			"diff": true, 
			"anim": "shake", 
			"anim_targets": "adjacent_symbol"
	},
	{}
	]