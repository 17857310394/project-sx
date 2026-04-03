extends Effect
class_name EffectShielded

func execute() -> void:
	for target : Character in _targets:
		target.add_shielded(effect_value)
