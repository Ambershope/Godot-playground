extends Control

# We start by defining constants, here we have 3 constants, which are the number of rows, and columns, and the precentile margin of a inventory slot
const ROWS := 4
const COLUMNS := 3
const MARGIN := 0.25

# We then define the variables, these are currently: 
# the inventory slots, which are pointers to the image slots, so we can change the images
# the inventory itself, this is an array of another class called Items
var inventory_slots: Array = []
var inventory: Array[ItemBase] = []


func _ready():
	inventory_slots = $"Inventory Background/GridContainer".get_children()
	print(inventory_slots)
	resize_grid()

func resize_grid():
	var container_sizes = $"Inventory Background/GridContainer".size / Vector2(ROWS + MARGIN, COLUMNS + MARGIN)
	var sizedifference = container_sizes[0] - container_sizes[1]
	if sizedifference >= 0:
		$"Inventory Background/GridContainer"["theme_override_constants/v_separation"] = int(sizedifference)
	else:
		$"Inventory Background/GridContainer"["theme_override_constants/h_separation"] = int(-sizedifference)

func add_item(Item: ItemBase):
	pass


func _on_resized():
	resize_grid()
