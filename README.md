# NSI Bloc 3
## Jean-Luc Bosser et Jocelin Devalette
## Lycée Français de Tananarive.
# Jeu s'appelle root
# Un escape game pour apprendre la ligne de commande #

https://github.com/DIUBloc3/Projet

## Objectifs liès au programme de première Spé NSI

|Contenus|Capacités attendues|
|----------|:-------------:|
|Système d'exploitation | Utiliser les commandes de base en ligne de commande.|
| | Gérer les droits et permissions|

## 1. Prérequis matériel 
### 1.1. Installer une raspberry comme serveur SSH
Cette activité présuppose l’accès à une machine disposant d’un accès `ssh`. Le professeur doit disposer des droits root pour déployer l’activité à partir des scripts fournis.

Elle a était réalisée avec une Raspberry disposant d’une IP fixe et accessible en ssh depuis les postes élèves.


### 1.2 Accés en SSH
Les postes clients doivent pouvoir se connecter en ssh sur la raspberry :

 - le plus simple en ligne de commande `ssh nom_d_utilisateur@IP_raspberry`
 - en utilisant un outil comme PUTTY par exemple

### 1.3 Installer mkpassw.
Par défaut la commande n'est pas installée, elle s'installe avec le paquetage whois :
`sudo apt install whois`

### 1.4 Installation du jeu
- Transférer l'intégralité des fichiers du dossier `code et fichiers`, rendez exécutable `creajeu.sh`
- Excécuter le script `./creajeu.sh Classeur1.csv`

## 2 Scénario de la séquence
Les élèves disposent d'un login/mdp sur la raspberry, il doit rechercher/déplacer/copier/exécuter différents fichiers en ligne de commande qui vont leur permettre de recomposer le mot de passe du l'utilisateur Turing qui va leur permettre de trouver le code final.

**Les login/mdp se trouvent dans le fichier `Classeur1.csv`. Ne pas utiliser Turing,Shannon et Boole... ce sont des login non-joueurs.**

