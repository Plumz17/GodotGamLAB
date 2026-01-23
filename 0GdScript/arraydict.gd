@tool
extends EditorScript

func _run() -> void:
	var party: Array[String] = ["Mario", "Link", "Kirby", "Samus"]
	print("First member:", party[0])
	print("Last member:", party[party.size() - 1])

	# Menambahkan anggota party
	party.append("Pikachu")
	print("Party members:", party)
	
	# Memilih anggota secara acak
	var active_member: String = party.pick_random()
	print("Active member:", active_member)

	# Mengecek keberadaan karakter
	if "Link" in party:
		print("The hero is ready!")

	var boss_rewards: Dictionary[String, String] = {
		"Bowser": "Fire Flower",
		"Ganon": "Triforce",
		"Sephiroth": "Masamune",
		"Nemesis": "Rocket Launcher"
	}

	# Mengambil reward boss
	print("Ganon drops:", boss_rewards["Ganon"])

	# Menambahkan boss baru
	boss_rewards["Alduin"] = "Dragon Soul" 

	# Menghapus data
	boss_rewards.erase("Bowser")

	# Loop dictionary
	for boss in boss_rewards:
		print(boss, "drops", boss_rewards[boss])
