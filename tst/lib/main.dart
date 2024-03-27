import 'package:flutter/material.dart';
import 'package:tst/test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lets Get Started ! ',
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailController = TextEditingController();
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
              const Icon(
                Icons.arrow_back, // Icône de flèche
                color: Colors.black, // Couleur de l'icône
              ),
              const SizedBox(
                  width: 250), // Espacement entre les icônes et le cercle
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Lets Get Started !',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4), // Espacement entre les titres
            const Row(
              children: [
                Text(
                  'sign up with Social of fill the form to continue.', // Titre
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey, // Style en gras pour le titre
                  ),
                ),
                SizedBox(width: 10), // Espacement entre les titres
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color:
                      Colors.grey, // Couleur grise pour le texte de l'étiquette
                ),
                prefixIcon: Icon(Icons.email), // Icône d'email
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(
                  color:
                      Colors.grey, // Couleur grise pour le texte de l'étiquette
                ),
                prefixIcon: Icon(Icons.person), // Icône de Name
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color:
                      Colors.grey, // Couleur grise pour le texte de l'étiquette
                ),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'At least 8 characters, 1 uppercase letter, 1 number, 1 symol',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12, // Couleur grise pour le texte
              ),
            ),
            const SizedBox(height: 40.0),
            Row(
              children: [
                // Espacement entre le texte et le cercle
                Container(
                  width: 30, // Largeur du cercle
                  height: 30, // Hauteur du cercle
                  decoration: BoxDecoration(
                    shape: BoxShape
                        .circle, // Définir la forme du conteneur comme un cercle
                    color: Colors.grey, // Couleur de fond
                    border: Border.all(
                        color: Colors.white), // Bordure bleue autour du cercle
                  ),
                ),
                const Expanded(
                  child: Text(
                    'By Signing up, you agree to the Terms of Service and Privacy Policy',
                    style: TextStyle(
                      fontSize: 12, // Couleur grise pour le texte
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80.0,
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
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text(
                    'Sign Up',
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
