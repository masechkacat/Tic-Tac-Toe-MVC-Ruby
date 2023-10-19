(version `FR` ligne # `32`)

# Tic-Tac-Toe Game

Welcome to the Tic-Tac-Toe game! This simple command-line game allows two players to take turns and compete in a classic Tic-Tac-Toe match.

## How to Play

1. Run the game.
2. Enter Player 1's name when prompted.
3. Enter Player 2's name when prompted.
4. Players take turns marking an empty cell on the game board.
5. The first player to get three marks in a row (horizontally, vertically, or diagonally) wins the game.
6. If all cells are filled and no player has won, the game ends in a draw.

## How It Works

This game is implemented using the Model-View-Controller (MVC) design pattern. Here's a brief explanation of each component:

- **Model**: The `TicTacToeModel` class represents the game's data and logic. It manages the game board, checks for a win,
and determines if the game ends in a draw.

- **View**: The `TicTacToeView` class is responsible for displaying the game board and results on the command line.
It listens for updates from the model and renders the board accordingly.

- **Controller**: The `TicTacToeController` class acts as an intermediary between the model and view.
It handles user input, updates the model, and communicates with the view to display the game's progress.

The MVC pattern helps separate the concerns of the game, making it modular and easier to maintain.


# Jeu de Morpion

Bienvenue dans le jeu de Morpion ! Ce jeu en ligne de commande permet à deux joueurs de s'affronter dans une partie de Morpion classique.

## Comment Jouer

1. Lancez le jeu.
2. Saisissez le nom du joueur 1 lorsque cela vous est demandé.
3. Saisissez le nom du joueur 2 lorsque cela vous est demandé.
4. Les joueurs jouent tour à tour en marquant une case vide sur le plateau de jeu.
5. Le premier joueur à aligner trois marques de sa forme (horizontalement, verticalement ou en diagonale) remporte la partie.
6. Si toutes les cases sont remplies et qu'aucun joueur n'a gagné, la partie se termine par un match nul.

## Comment Ça Marche

Ce jeu est implémenté en utilisant le modèle de conception Modèle-Vue-Contrôleur (MVC). Voici une brève explication de chaque composant :

- **Modèle** : La classe `TicTacToeModel` représente les données et la logique du jeu. Elle gère le plateau de jeu,
vérifie s'il y a un gagnant et détermine si la partie se termine par un match nul.

- **Vue** : La classe `TicTacToeView` est responsable de l'affichage du plateau de jeu et des résultats sur la ligne de commande.
Elle écoute les mises à jour du modèle et rend le plateau en conséquence.

- **Contrôleur** : La classe `TicTacToeController` fait office d'intermédiaire entre le modèle et la vue.
Elle gère les saisies des joueurs, met à jour le modèle et communique avec la vue pour afficher la progression du jeu.

Le modèle MVC permet de séparer les responsabilités du jeu, le rendant modulaire et plus facile à entretenir.



