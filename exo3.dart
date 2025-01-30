void main() {
  // Instanciation de la boutique
  Boutique maBoutique = Boutique();

  // Création des amulettes
  Amulette amulette1 = Amulette("Voile Nocturne", "Une amulette mystérieuse qui offre l'invisibilité dans l'obscurité.");
  Amulette amulette2 = Amulette("Flamme Éternelle", "Un artefact magique qui brûle sans jamais s'éteindre.");
  Amulette amulette3 = Amulette("Pierre des Étoiles", "Brille intensément sous la lumière de la lune.");

  // Ajout des amulettes à la boutique
  maBoutique.ajouterAmulette(amulette1);
  maBoutique.ajouterAmulette(amulette2);
  maBoutique.ajouterAmulette(amulette3);

  // Affichage du contenu de la boutique
  maBoutique.afficherAmulettes();

  // Vente d'une amulette
  print("\n Un client achète 'Flamme Éternelle'...");
  maBoutique.vendreAmulette("Flamme Éternelle");

  // Affichage du contenu mis à jour de la boutique
  maBoutique.afficherAmulettes();
}

class Amulette {
  //Propriete
  String nom;
  String description;

  // Méthode pour afficher les détails de l'amulette
  void afficher() {
    print("Amulette : $nom");
    print("Description : $description\n");
  }

  // Constructeur
  Amulette(this.nom, this.description);
}

// Définition de la classe Boutique
class Boutique {
  List<Amulette> inventaire = []; // Liste des amulettes disponibles

  // Méthode pour ajouter une amulette à l'inventaire
  void ajouterAmulette(Amulette amulette) {
    inventaire.add(amulette);
    print(" ${amulette.nom} a été ajoutée à la boutique !");
  }

  // Méthode pour afficher toutes les amulettes disponibles
  void afficherAmulettes() {
    if (inventaire.isEmpty) {
      print(" La boutique ne contient aucune amulette pour l'instant.");
    } else {
      print("\n Amulettes disponibles dans la boutique :");
      for (var amulette in inventaire) {
        amulette.afficher();
      }
    }
  }

  // Méthode pour vendre une amulette (la retirer de l'inventaire)
  void vendreAmulette(String nom) {
    for (var amulette in inventaire) {
      if (amulette.nom == nom) {
        inventaire.remove(amulette);
        print(" ${amulette.nom} a été vendue !");
        return;
      }
    }
    print(" L'amulette '$nom' n'est pas disponible dans la boutique.");
  }
}