@tool
@icon("res://Components/Icons/Electicity.png")

extends ItemBase

class_name Electricity

@export_range(0, 100, 1, "or_greater") var charge = 100
