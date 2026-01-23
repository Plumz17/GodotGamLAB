@tool
extends EditorScript

const MAX_LIVES: int = 3
const SAVE_FILE: String = "savegame.dat"
const BASE_DAMAGE: int = 10

#func _run() -> void:
	#print("Max lives:", MAX_LIVES)
	#print("Save file:", SAVE_FILE)
	#print("Base damage:", BASE_DAMAGE)
#
	## BASE_DAMAGE = 20  # Error: constants cannot be modified

enum BossPhase {
	IDLE,
	ATTACK,
	RAGE,
	DEFEATED
}

func _run() -> void:
	var current_phase: BossPhase = BossPhase.IDLE

	if current_phase == BossPhase.IDLE:
		print("The boss is watching the player...")
	elif current_phase == BossPhase.ATTACK:
		print("The boss attacks!")
	elif current_phase == BossPhase.RAGE:
		print("The boss enters rage mode!")
	elif current_phase == BossPhase.DEFEATED:
		print("The boss has been defeated!")
