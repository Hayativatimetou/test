import 'package:flutter/material.dart';
import 'package:tst/auto.dart';
import 'package:tst/main.dart';

class Auto6 extends StatelessWidget {
  const Auto6({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lets Get Started ! ',
      theme: ThemeData(
        backgroundColor: Colors.black,
      ),
      home: scrip(),
    );
  }
}

class scrip extends StatefulWidget {
  @override
  _scripState createState() => _scripState();
}

class _scripState extends State<scrip> {
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
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Change your password',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4), // Espacement entre les titres
            const Row(
              children: [
                Text(
                  'Please entre your password', // Titre
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey, // Style en gras pour le titre
                  ),
                ),
                SizedBox(width: 10), // Espacement entre les titres
              ],
            ),

            const SizedBox(
              height: 30.0,
              width: 10,
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'New Password',
                labelStyle: TextStyle(
                  color:
                      Colors.grey, // Couleur grise pour le texte de l'étiquette
                ),

                prefixIcon: Icon(Icons.lock), // Icône de Name
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'At least 8 characters, 1 uppercase letter, 1 number, 1 symbol',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'confirm Password',
                labelStyle: TextStyle(
                  color:
                      Colors.grey, // Couleur grise pour le texte de l'étiquette
                ),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'At least 8 characters, 1 uppercase letter, 1 number, 1 symbol',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(height: 70.0),

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
