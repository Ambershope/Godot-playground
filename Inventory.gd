extends Control


const ROWS := 4
const COLUMNS := 3
const MARGIN := 0.25
var tile_size: Vector2 = Vector2()
var inventory_slots: Array = []

func  _ready():
	print($"Inventory Background/GridContainer".size)
	print($"Inventory Background/GridContainer".size / Vector2(ROWS + MARGIN, COLUMNS + MARGIN))

func add_item():
	pass
