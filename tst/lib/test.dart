import 'package:flutter/material.dart';
import 'package:tst/auto.dart';
import 'package:tst/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Test extends StatelessWidget {
  const Test({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lets Get Started ! ',
      theme: ThemeData(
        backgroundColor: Colors.black,
      ),
      home: SignUp(),
    );
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.close, // Icône de fermeture (close)
                    color: Colors.black, // Couleur de l'icône
                  ),
                ),
              ),
            ],
          ),
        ),
        // iconTheme: IconThemeData(
        //   color: Colors.black, // Définir la couleur de l'icône de retour
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4), // Espacement entre les titres
            const Row(
              children: [
                Text(
                  'sign up with Social of fill the form to continue', // Titre
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey, // Style en gras pour le titre
                  ),
                ),
                SizedBox(width: 10), // Espacement entre les titres
              ],
            ),

            const SizedBox(
              height: 60.0,
              width: 10,
            ),

            Container(
              height: 1.0, // Hauteur de la ligne
              color: Colors.grey, // Couleur de la ligne
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Yessie',
                labelStyle: TextStyle(
                  color: Colors
                      .black, // Couleur grise pour le texte de l'étiquette
                ),

                prefixIcon: Icon(Icons.person), // Icône de Name
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: '........',
                labelStyle: TextStyle(
                  color: Colors
                      .black, // Couleur grise pour le texte de l'étiquette
                ),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20.0),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text(
                'Remember me next time',
                style: TextStyle(
                  fontSize: 12, // Taille de la police du texte
                ),
              ),
              value: true, // La valeur de la case à cocher (true ou false)
              onChanged: (value) {
                // Logique à exécuter lorsque la case à cocher est modifiée
              },
              activeColor: Colors.blueAccent, // Couleur de la case cochée
              contentPadding:
                  EdgeInsets.zero, // Supprimer le padding par défaut
            ),

            const SizedBox(
              height: 100.0,
              width: 30,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  height: 40,
                  width: 80,
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
                      color: Colors.white, // Couleur de fond
                    ),
                    child: const Center(
                      child: Icon(
                        FontAwesomeIcons.twitter,

                        color: Colors.blue, // Couleur de l'icône
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
                      color: Colors.white, // Couleur de fond
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.facebook,
                        color: Colors.blue, // Couleur de l'icône
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
                      color: Colors.white, // Couleur de fond
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.apple,
                        color: Colors.black, // Couleur de l'icône
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 30),
                // Espacement entre les boutons
              ],
            ),
            const SizedBox(
              height: 30,
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
                      MaterialPageRoute(builder: (context) => sign()),
                    );
                  },
                  child: Text(
                    'Sign In',
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
