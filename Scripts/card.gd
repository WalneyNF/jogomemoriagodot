extends Node2D

# Imagem de fundo (carta virada para baixo)
@export var back_image: Texture2D

# Imagem do card (carta virada para cima)
@export var card_image: Texture2D

# Referência ao Main (para adicionar o card virado)
@export var main: Node

# Controla se o card está virado
var is_flipped = false

# Função chamada quando o card é clicado
func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed:
		flip_card()
		
# Função para virar o card
func flip_card2():
	if is_flipped:
		$Sprite2D.texture = back_image  # Vira para baixo (mostra a imagem de fundo)
	else:
		$Sprite2D.texture = card_image  # Vira para cima (mostra a imagem do card)
		main.add_flipped_card(self)  # Adiciona o card virado ao Main
	is_flipped = !is_flipped
func flip_card():
	if is_flipped:
		$Sprite2D.texture = back_image  # Vira para baixo (mostra a imagem de fundo)
		$Sprite2D.scale = Vector2(0.5, 0.5)  # Volta para a escala original
	else:
		$Sprite2D.texture = card_image  # Vira para cima (mostra a imagem do card)
		$Sprite2D.scale = Vector2(0.5, 0.5)  # Ajusta a escala para 0.5
		main.add_flipped_card(self)  # Adiciona o card virado ao Main
	is_flipped = !is_flipped
	
# Conecta o sinal de clique ao Area2D
func _ready():
	$Sprite2D.texture = back_image  # Inicia com a imagem de fundo
	$Area2D.connect("input_event", _on_area_2d_input_event)
