extends Node

var beam_array = []
var beam_select = 0
var beam_count = 0

func _ready():
	beam_array.push_back("/root/main/cannon1/beamAnim")
	beam_array.push_back("/root/main/cannon2/beamAnim")
	beam_array.push_back("/root/main/cannon3/beamAnim")
	beam_array.push_back("/root/main/cannon4/beamAnim")

	beam_count = beam_array.size() - 1

	# Rest of your _ready code goes here

func _input(event):
	if event.is_action_pressed("arrow_right"):
		if beam_select < beam_count:
			beam_select += 1
		else:
			beam_select = 0
		print("Selection: " + str(beam_select))

	elif event.is_action_pressed("arrow_up"):
		print("Up")

		
		var selected_beam = get_node(beam_array[beam_select])

		

		if selected_beam.is_visible_in_tree():
			selected_beam.visible = false
			print("turn off")
		else:
			selected_beam.visible = true
			print("turn on")

		

func _process(_delta):
	pass

