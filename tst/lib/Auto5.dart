import 'package:flutter/material.dart';
import 'package:tst/Auto6.dart';
import 'package:flutter/services.dart';

class Auto5 extends StatelessWidget {
  const Auto5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let\'s Get Started!',
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: screen(),
    );
  }
}

class screen extends StatefulWidget {
  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  void initState() {
    super.initState();
    // Afficher le clavier lors de l'initialisation de l'écran
    Future.delayed(Duration(milliseconds: 300), () {
      FocusScope.of(context).requestFocus(FocusNode());
      SystemChannels.textInput.invokeMethod('TextInput.show');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: GestureDetector(
          onTap: () {},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                  width: 230), // Espacement entre les icônes et le cercle
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey, // Couleur du cercle gris
                ),
                child: const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.close, // Icône de fermeture (close)
                    color: Colors.black, // Couleur de l'icône
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Phone Verification',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4), // Espacement entre les titres
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Please enter the 4-digit code send to you at ',
                    // Titre
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey, // Style en gras pour le titre
                    ),
                  ),
                ),
                SizedBox(height: 30), // Espacement entre les titres
              ],
            ),
            const SizedBox(
              height: 10.0,
              width: 10,
            ),
            const Text(
              '+61 55 535 235',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Resend Code ',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                const SizedBox(
                  height: 40,
                  width: 40,
                ),
                IconButton(
                  onPressed: () {
                    // Ajouter la logique pour le bouton Facebook
                  },
                  icon: Container(
                    width: 40, // Définir la taille du conteneur
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape
                          .circle, // Définir la forme du conteneur comme un cercle
                      color: Colors.grey, // Couleur de fond
                    ),
                    child: const Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                          fontSize: 20, // Taille de police du numéro
                          color: Colors.black, // Couleur du numéro
                          fontWeight: FontWeight.bold, // Épaisseur de la police
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {
                    // Ajouter la logique pour le bouton Facebook
                  },
                  icon: Container(
                    width: 40, // Définir la taille du conteneur
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape
                          .circle, // Définir la forme du conteneur comme un cercle
                      color: Colors.grey, // Couleur de fond
                    ),
                    child: const Center(
                      child: Text(
                        '',
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {
                    // Ajouter la logique pour le bouton Facebook
                  },
                  icon: Container(
                    width: 40, // Définir la taille du conteneur
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape
                          .circle, // Définir la forme du conteneur comme un cercle
                      color: Colors.grey, // Couleur de fond
                    ),
                    child: const Center(
                      child: Text(
                        '',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    // Ajouter la logique pour le bouton Facebook
                  },
                  icon: Container(
                    width: 40, // Définir la taille du conteneur
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape
                          .circle, // Définir la forme du conteneur comme un cercle
                      color: Colors.grey, // Couleur de fond
                    ),
                    child: const Center(
                      child: Text(
                        '',
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 30),

                // Espacement entre les boutons
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Center(
              child: Container(
                width: 150, // Largeur souhaitée du bouton
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), // Arrondir les coins
                  color: Colors.lightBlue,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Naviguer vers la classe Test
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => scrip()),
                    );
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors
                        .transparent), // Définir la couleur de fond du bouton comme transparente
                    elevation: MaterialStateProperty.all<double>(
                        0), // Supprimer l'ombre du bouton
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Définir le rayon de la bordure
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
