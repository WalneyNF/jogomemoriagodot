extends Control

# Lista para armazenar os cards virados
var flipped_cards = []

# Caminho para o prefab do Card
const CARD_SCENE = preload("res://Prefabs/card.tscn")

# Lista de imagens para os pares
var card_images = [
	preload("res://assets/images/beth.png"),
	preload("res://assets/images/brain.png"),
	preload("res://assets/images/cerebro.png"),
	preload("res://assets/images/jerry.png"),
	preload("res://assets/images/jessica.png")
]

# Posições pré-definidas para as cartas
var card_positions = [
	Vector2(112, 118),    # Posição 1
	Vector2(306, 120),   # Posição 2
	Vector2(502, 126),   # Posição 3
	Vector2(698, 130),   # Posição 4
	Vector2(894, 132),   # Posição 5
	Vector2(112, 378),   # Posição 6
	Vector2(306, 380),  # Posição 7
	Vector2(502, 386),  # Posição 8
	Vector2(698, 390),  # Posição 9
	Vector2(894, 392)   # Posição 10
]

# Tamanho desejado de cada carta (ajuste conforme necessário)
const CARD_WIDTH = 130 / 2
const CARD_HEIGHT = 190 / 2

# Função para adicionar um card virado à lista
func add_flipped_card(card):
	flipped_cards.append(card)
	if flipped_cards.size() == 2:
		check_match()

# Função para verificar se os cards virados são iguais
func check_match():
	var card1 = flipped_cards[0]
	var card2 = flipped_cards[1]

	if card1.card_image == card2.card_image:
		print("Par encontrado!")
		# Aqui você pode adicionar lógica para desabilitar os cards
	else:
		print("Não são iguais!")
		# Vire os cards de volta após um tempo
		await get_tree().create_timer(1).timeout
		card1.flip_card()
		card2.flip_card()

	# Limpa a lista de cards virados
	flipped_cards.clear()

# Função para criar e posicionar as cartas
func create_and_position_cards():
	# Cria uma lista com os pares de imagens
	var pairs = []
	for image in card_images:
		pairs.append(image)
		pairs.append(image)

	# Embaralha os pares
	pairs.shuffle()

	# Índice para controlar a posição da carta
	var index = 0

	# Cria as cartas e posiciona-as nas posições pré-definidas
	for i in range(card_positions.size()):
		var card = CARD_SCENE.instantiate()  # Instancia o prefab do Card
		card.card_image = pairs[index]  # Atribui a imagem do card
		card.back_image = preload("res://assets/images/back.png")  # Atribui a imagem de fundo
		card.main = self  # Atribui o Main ao card

		# Define o tamanho da carta usando escala
		card.scale = Vector2(CARD_WIDTH / 100.0, CARD_HEIGHT / 100.0)  # Ajusta a escala

		# Define a posição da carta
		card.position = card_positions[i]

		# Adiciona o card ao nó principal (Main)
		add_child(card)

		# Incrementa o índice
		index += 1

		# Print para depuração
		print("Carta criada na posição: ", card.position, " com escala: ", card.scale)

# Função _ready
func _ready():
	# Cria e posiciona as cartas
	create_and_position_cards()
