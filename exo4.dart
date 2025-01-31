void main() {
  // Création des amulettes
  Amulette amulette1 = Amulette("Voile Nocturne", "Une amulette mystérieuse qui offre l'invisibilité dans l'obscurité.");
  Amulette amulette2 = Amulette("Flamme Éternelle", "Un artefact magique qui brûle sans jamais s'éteindre.");

  // Affichage initial des amulettes (sans enchantement)
  print("Avant enchantement :");
  amulette1.afficher();
  amulette2.afficher();

  // Enchantement des amulettes
  amulette1.enchanter("Invisibilité");
  amulette2.enchanter("Résistance au feu");

  // Affichage des amulettes après enchantement
  print("\n Après enchantement :");
  amulette1.afficher();
  amulette2.afficher();
}

class Amulette {
  //Propriete
  String nom;
  String description;
  String? effet; // L'effet magique de l'amulette (peut être null)

  // Méthode pour ajouter un enchantement à l'amulette
  void enchanter(String effetMagique) {
    effet = effetMagique; // On applique l'effet magique
    print("L'amulette '$nom' a été enchantée avec '$effetMagique' !");
  }

   // Constructeur
  Amulette(this.nom, this.description);

  // Méthode pour vérifier si l’amulette est enchantée
  bool estEnchantee() {
    return effet != null;
  }

  // Méthode pour afficher les détails de l'amulette
  void afficher() {
    print("Amulette : $nom");
    print("Description : $description");
    if (estEnchantee()) {
      print("Effet magique : $effet\n");
    } else {
      print("Pas d'enchantement\n");
    }
  }
}