void main() {
  print("Recherche de l'amulette 'Voile Nocturne' :");
  trouverAmulette("Voile Nocturne");

  print("Recherche de l'amulette 'Flamme Éternelle' :");
  trouverAmulette("Flamme Éternelle");

  print("Recherche d'une amulette inexistante 'Lumière Céleste' :");
  trouverAmulette("Lumière Céleste"); // Cas où l'amulette n'existe pas
}

class Amulette {
  String nom;
  String description;

  // Constructeur
  Amulette(this.nom, this.description);

  // Méthode pour afficher les détails de l'amulette
  void afficher() {
    print("Amulette : $nom");
    print("Description : $description\n");
  }
}

// Liste des amulettes disponibles
List<Amulette> atelierAmulettes = [
  Amulette("Voile Nocturne", "Une amulette mystérieuse qui offre l'invisibilité dans l'obscurité."),
  Amulette("Flamme Éternelle", "Un artefact magique qui brûle sans jamais s'éteindre."),
  Amulette("Pierre des Étoiles", "Brille intensément sous la lumière de la lune."),
];

// Fonction pour trouver une amulette par son nom
void trouverAmulette(String nomRecherche) {
  // Parcourir la liste pour trouver l'amulette
  for (var amulette in atelierAmulettes) {
    if (amulette.nom == nomRecherche) {
      amulette.afficher(); // Affiche l'amulette trouvée
      return; // Quitte la fonction après avoir trouvé l'amulette
    }
  }
  
  // Si aucune amulette ne correspond
  print("Cette amulette n'existe pas encore dans l'atelier.\n");
}