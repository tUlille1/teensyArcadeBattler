*Retrouver la documentation utilisant MKDocs à l'adresse: [https://tulille1.github.io/teensyArcadeBattler/](https://tulille1.github.io/teensyArcadeBattler/)*
# Vers une publications efficaces de projets (étudiants) collaboratifs
  Que celui qui a déjà bidouillé avec un arduino et  n'est jamais tombé sur un dépôt github (comme ceux d'[adafruit](https://github.com/adafruit) ou de [sparkfun](https://github.com/sparkfun)) me jette la première pierre :wink:
  Pour ceux qui l'ignorent, un dépôt comme ceux que l'on trouve sur [GitHub](https://github.com/sparkfun) est un espace dédié à l'hébergement de code informatique. Pour ma part, ayant toujours travaillé seul sur des développement de faible envergure, je n'ai jamais par le passé été amené à utiliser un hébergement en ligne. Je m'en tenais aux traditionnels projet1version1.ino, projetv2a1.ino... et les fichiers s'accumulaient. Ne m'y retrouvant pas toujours, je refaisais souvent la même chose dix fois... Avec l'utilisation des dépôts, cette époque est revolue et je souhaite que tout étudiant qui souhaite se lancer dans un projet en électronique du type de ceux que l'on trouve un peu partout sur le web puisse le faire d'une façon organisée, efficace et qui pourra être passé à la postérité...

  Le but de ce dépôt est de permettre aux lecteurs (public étudiant en électronique initialement) de se familiariser avec une façon de travailler utilisant git, le langage markdown, MKDocs,... notions qui ne sont pas toujours abordées au cours d'un cursus du type Electrical Engineering. Ce travail s'appuye sur des réalisations éffectuées au fablab situé sur le campus de l'Université de Lille 1, département EEA.
  Le rédacteur de ce dépôt n'étant pas informaticien, s'éfforcera d'être le plus précis sur les termes et techniques employées mais le lecteur plus aguérri est évidement invité à me contacter pour échanger sur ce sujet.

  Pour finir, le titre teensyArcadeBattler, est en fait un projet personnel de rélaisation d'une interface midi simple pour controller des logiciels de création musical (ou DAWs, type Ableton, cubase...). Ceci servira de support et d'exemple pour illustrer les différentes étapes de création d'un projet.

  Au niveau de la documentation d'un projet, pour des projets très simple et cours, le fichier README.md (le fichier que vous lisez actuellement :smile: ) peut faire l'affaire mais un autre outils, [MKdocs](http://www.mkdocs.org/), fera encore plus l'affaire!

# Création de votre premier dépôt GitHub
Rendez vous sur [GitHub](http://github.com) et laissez vous guider dans la création de votre identifiant et de votre dépôt. N'oubliez pas qu'il faut créer au moins un fichier dans votre dépôt pour que vous puissiez ensuite l'utiliser (c'est pourquoi [GitHub](http://github.com) vous propose de créer pour vous le fichier README.md)

Une fois créé, votre dépôt est en ligne et on peut donc l'atteindre depuis n'importe quel ordinateur connecté au web. C'est ici qu'il faut bien comprendre comment nous allons travailler avec notre dépôt GitHub: nous allons rapatrier l'ensemble du dépôt sur notre ordinateur, créer ou modifier les différents fichiers de code et une fois que nous estimons avoir fini une tâche rééxpédier les mofications vers le dépôt. Ce sont les opérations de clonage et de push.


# Création d'une documentation à l'aide de MKdocs  

La documentation que je vais créer sera du même type que ce que l'on peut trouver pour un projet comme [MicroPython](http://docs.micropython.org/en/latest/esp8266/)

## Installation de MKdocs

Ici pas de mystère, on suit les explications des développeurs sur le site [MKDocs.org](http://www.mkdocs.org/#installation). C'est un programme écrit en python donc vous devez avoir python installé sur votre ordinateur.
Je ne l'ai pas mentionné auparavant mais tout se passe dans le terminal de votre système (pour l'instant je ne décrie que la démarche pour un système UNIX type ubuntu ou mac os; l'explication pour windows suivra). Vous devez être à l'aise dans la navigation entre les dossiers. Si ce n'est pas le cas (XXXXXXXReference à rajouter)

## Création de votre projet
Depuis le terminal, naviguez jusque dans le répertoire du dépôt que vous avez clôné. Une fois dans le dossier, la commande:

    mkdocs new my-project
va créer un nouveau projet MKDocs intitulé my-project.
Une fois créé, toujours dans le terminal, rentrez dans le répertoire du projet:

    cd my-project

La commande:

    mkdocs serve

va permettre en quelque sorte de créer un seerveur local sur votre ordinateur de manière à prévisualiser votre documentation.
Une fois que tout vous semble correct, la commande:

    mkdocs build --clean

va permettre de générer tous les fichiers et dossiers nécessaires à la publication de la documentation en ligne. Une fois fait, une dernière commande va permmettre de pousser la documentation vers github:

    mkdocs gh-deploy
