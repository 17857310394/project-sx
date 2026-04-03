extends Effect
class_name EffectDamage

func execute() -> void:
	for cha in self._targets:
		assert(cha != null, "找不到目标！")
		cha.damage(Damage.new(effect_value))
