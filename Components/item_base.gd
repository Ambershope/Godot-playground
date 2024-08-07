@tool
# @tool makes the script run _get_description in editor.
@icon("res://Components/Icons/Item Icon.png")
# @icon giver et cutom lavet icon til noden

# @extends from Node2D, meaning that all Items have a Transform and 
extends Node2D

# Make script a global class
class_name ItemBase

@export var inventory_image = CompressedTexture2D

# The function _get_description should run in editor to display the description
func _get_description() -> String: 
	return "This is the base class for all items. All created classes can be found in the Components folder"
