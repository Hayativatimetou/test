import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tst/Auto5.dart';

class Autoscreen extends StatelessWidget {
  const Autoscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let\'s Get Started!',
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: Signeee(),
    );
  }
}

class Signeee extends StatefulWidget {
  @override
  _SigneeeState createState() => _SigneeeState();
}

class _SigneeeState extends State<Signeee> {
  TextEditingController _phoneController = TextEditingController();

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Forgot your password?',
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
                    'If you need help resetting your password we can help by sending you a link to reset it.',
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
              height: 60.0,
              width: 10,
            ),
            TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                prefix: Row(
                  mainAxisSize:
                      MainAxisSize.min, // Pour limiter la largeur du widget
                  children: [
                    Icon(Icons.expand_more),
                    Text('+61 |  '), // Préfixe avec le texte "+621"
                    // Icône expand_more
                  ],
                ),
                labelText:
                    'Your phone', // Texte "Your phone" en tant qu'étiquette
              ),
            ),

            const SizedBox(height: 100.0),
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
                      MaterialPageRoute(builder: (context) => screen()),
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
