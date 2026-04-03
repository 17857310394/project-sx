extends Effect
class_name EffectApplyBuff

var buff : StringName


func _init(data: Dictionary,value:int) -> void:
	buff = data.effect_parameters[0]
	super(data,value)

func execute() -> void:
	if _targets.is_empty() : return
	for target in _targets:
		var c_buff_system : C_BuffSystem = target.get_node("C_BuffSystem")
		var buff = Buff.new(buff, effect_value, _caster, target)
		c_buff_system.apply_buff(buff)
