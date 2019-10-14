Google_searcher et starter

tout ce qui n'est pas starter.rb fait partie de Google_searcher

Google_searcher :

Programme faisant une recherche google via ARGV
pour l'utiliser :
Cloner le repo à l'emplacement souhaité
Tapper le nom du programme puis la recherche après un espace : 
EX = 
> lib : google_searcher.rb la recherche que tu veux
Executer le programme

Il est possible de créer un alias pour éxecuter le programme de n'importe ou dans le terminal, en utilisant un mot que l'on à choisi à la place du nom du programme.
Pour créer un alias il faut se rendre dans son fichier .bashrc situé à : 

~/.bashrc
OU son fichier .zshrc situé au même endroit (~/) si on utilise oh my zsh(cf cours de vendredi)
~/.zshrc
On l'ouvre avec son éditeur de texte favoris et tout en bas du fichier on rajoute l'alias sous le format suivant :

alias nom_souhaité="ruby /chemin/vers/l'application/GoogleSearcher/lib/google_searcher.rb"

NB : il est important de ne pas modifier n'importe quoi dans ce fichier, se référer aux cours de vendredi au cas ou



                      ---------------------------------

Starter : 
Programme créant un dossier type pour les exos/applis de THP

pour l'utiliser :

Même combat que pour google_searcher, on place starter.rb ou on veut, et on l'exécute en écrivant, après le nom du programme, l'emplacement et le nom souhaité du dossier.
EX : 
/home/user/Documents => starter.rb ~/Documents/THP/nom_du_dossier

OU
Via un alias, que l'on crée de la même façon que pour google_searcher :
