@tool
extends EditorScript

func _run() -> void:
	var chosen_hero: String = "Link"

	if chosen_hero == "Ganondorf":
		print("You are the villain!")
	elif chosen_hero == "Link":
		print("You are the hero of Hyrule!")
	else:
		print("A mysterious traveler appears...")
	
	var ammo: int = 5
	while ammo > 0:
		ammo -= 1
		if ammo == 2:
			continue # skip reload animation
		print("Bang! Ammo left:", ammo)

	var party: Array[String] = [
		"Cloud", "Tifa", "Barret", "Aerith"
	]

	for member in party:
		if member == "Barret":
			break # party full
		print(member, " joins the party!")
