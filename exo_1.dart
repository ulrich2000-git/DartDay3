void main(){
    Amulette amulette1 = Amulette("Flamme Eternelle","Obsidienne", 50);
    Amulette amulette2 = Amulette("Coeur Gele","Cristal de Glace", 40);
    Amulette amulette3 = Amulette("Voile Nocture","Onyx", 60);

    List<Amulette> collectionAmulettes = [amulette1, amulette2, amulette3];

    for (var amulette in collectionAmulettes) {
      print("Nom : ${amulette.nom}, Materiau : ${amulette.materiau}, Puissance : ${amulette.puissance}");
  }
}

// Définir la classe Amulette
  class Amulette {
// Propriete
    String nom; 
    String materiau; 
    int puissance; 

// Méthode 
    void afficherDetails() {
      print("Nom : $nom, Puissance : $puissance, Matériau : $materiau");
    }

// Constructeur 
    Amulette(this.nom, this.materiau, this.puissance,);
  }