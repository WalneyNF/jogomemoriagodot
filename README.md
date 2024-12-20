
🧠 Jogo de Memória em Godot 4.3
Este é um jogo de memória desenvolvido em Godot 4.3, baseado no projeto em JavaScript do canal Manual do Dev. O jogo utiliza sprites e mecânicas inspiradas no vídeo original, adaptadas para o motor de jogo Godot.

🎮 Como Jogar
Objetivo: Encontre todos os pares de cartas com imagens correspondentes.

Controles:

Clique em uma carta para virá-la.

Encontre o par correspondente antes que o tempo acabe.

Tempo Limite: Você tem 60 segundos para completar o jogo.

🚀 Recursos do Projeto
Godot 4.3: Motor de jogo usado para desenvolver o projeto.

Sprites: As imagens das cartas foram baseadas no projeto original em JavaScript.

Controle de Tempo: Um timer limita o tempo para completar o jogo.

Posicionamento Manual: As posições das cartas são definidas manualmente para maior controle.

📦 Estrutura do Projeto
O projeto está organizado da seguinte forma:

Copy
/res://
  ├── assets/                # Arquivos de imagem e recursos visuais
  │   ├── images/            # Sprites das cartas e fundo
  │   └── back.png           # Imagem de fundo das cartas
  ├── Prefabs/               # Prefabs do Godot
  │   └── card.tscn          # Prefab da carta
  ├── Scripts/               # Scripts do jogo
  │   ├── Main.gd            # Script principal do jogo
  │   └── Card.gd            # Script da carta
  └── scenes/                # Cenas principais
      └── Main.tscn          # Cena principal do jogo
🛠️ Como Configurar o Projeto
Pré-requisitos
Godot 4.3 ou superior instalado.

Conhecimento básico de Godot e GDScript.

Passo a Passo
Clone o Repositório:

bash
Copy
git clone https://github.com/WalneyNF/jogomemoriagodot
cd jogo-de-memoria
Abra o Projeto no Godot:

Abra o Godot 4.3.

Clique em "Importar" e selecione o arquivo project.godot na raiz do projeto.

Execute o Jogo:

No Godot, selecione a cena Main.tscn e clique no botão "Executar" (F5).

🎨 Personalização
Adicionar Novas Cartas
Adicione novas imagens ao diretório res://assets/images/.

Atualize a lista card_images no script Main.gd com os caminhos das novas imagens.

Alterar Tempo Limite
No script Main.gd, altere o valor da variável time_limit para o tempo desejado (em segundos).

Modificar Posições das Cartas
No script Main.gd, atualize a lista card_positions com as posições desejadas.

🤝 Como Contribuir
Se você quiser contribuir com o projeto, siga estas etapas:

Faça um fork do repositório.

Crie uma nova branch com suas alterações:

bash
Copy
git checkout -b minha-feature
Faça commit das suas alterações:

bash
Copy
git commit -m "Adiciona nova funcionalidade"
Envie as alterações para o repositório remoto:

bash
Copy
git push origin minha-feature
Abra um pull request no GitHub.

📄 Licença
Este projeto está licenciado sob a Licença MIT. Consulte o arquivo LICENSE para mais detalhes.

📚 Referências
Projeto Original em JavaScript: Manual do Dev - Jogo de Memória

Documentação do Godot: Godot Engine

📞 Contato
Se você tiver dúvidas ou sugestões, sinta-se à vontade para entrar em contato:

Email: walneyk@hotmail.com

GitHub: WalneyNF

Espero que este README.md ajude a tornar o seu projeto mais acessível e convidativo para outros desenvolvedores! 🚀
