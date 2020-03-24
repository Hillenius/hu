extends Control

onready var scoretext = get_node("scoretext")

func _ready():
	
	scoretext.text = "0"
	
func set_score_text (score):
	
	scoretext.text = str(score)
