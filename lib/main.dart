import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alexandre Janin - CV',
      theme: ThemeData(
        primaryColor: Color(0xFFA6EBF2),
        fontFamily: 'Montserrat',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 210 / 297,
          child: Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 25.0,
                            bottom: 15.0,
                            left: 25.0,
                            right: 25.0,
                          ),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/image.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 4.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Text(
                            'Alexandre Janin',
                            style: TextStyle(
                              fontSize: 19.0,
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 16.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 22,
                              ),
                              Text(
                                '+33 6 29 74 09 07',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 8,
                          indent: 8.0,
                          endIndent: 8.0,
                          color: Colors.white30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 16.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              Expanded(
                                child: Text(
                                  "8 rue de la Ronce\nVille d'Avray 92410",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 8,
                          indent: 8.0,
                          endIndent: 8.0,
                          color: Colors.white30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 16.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.mail,
                                color: Colors.white,
                              ),
                              Expanded(
                                child: Text(
                                  'a@janin.dev',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 8,
                          indent: 8.0,
                          endIndent: 8.0,
                          color: Colors.white30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 16.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/github.png',
                                width: 24,
                              ),
                              Expanded(
                                child: Text(
                                  'alexandrejanin',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    color: Color(0xFFE3CFE4),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            bottom: 8.0,
                          ),
                          child: Text(
                            'Expérience',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  '2019',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Grand Shooting - Stage de développement web",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    "Développement d'une plateforme web de contrôle pour un système de classification automatique d'images",
                                    style: TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    "Technologies utilisées: Git, Javascript, Node.js, React",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  '2018',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Grand Shooting - Stage de machine learning",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    "Développement d’un systeme de classification automatique d’images à destination des marques de mode",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    "Technologies utilisées: Git, Python, Keras, AWS S3",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            bottom: 8.0,
                            top: 20.0,
                          ),
                          child: Text(
                            'Formation',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  '2020\n2018',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Université Pierre et Marie Curie, Paris",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    "Licence d'informatique, mineure design",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  '2018\n2017',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Université Pierre et Marie Curie, Paris",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    "L1 MIPI (mathématiques, informatique, physique, ingénierie)",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  '2017',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lycée Alexandre Dumas, Saint-Cloud",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 4.0),
                                  Text(
                                    "Bac S spécialité Informatique et Sciences du Numérique",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            bottom: 8.0,
                            top: 20.0,
                          ),
                          child: Text(
                            'Projets',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 4.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' rust-8080',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'github.com/alexandrejanin/rust-8080',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.lightBlueAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "rust-8080 est un émulateur du processeur Intel 8080."
                            "\nLangage: Rust",
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                            bottom: 4.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' RealmGen',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'github.com/alexandrejanin/RealmGen',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.lightBlueAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "RealmGen est un générateur procédural de continents."
                            "\nLangage: C# (moteur Unity)",
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                            bottom: 4.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' VYBES',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'instagram.com/vybes_app',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.lightBlueAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "VYBES est une application de rencontre basée sur la musique."
                            "\nL'application est écrite en Dart (Flutter), le serveur en Typescript (Node.js).",
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 25,
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color(0xFFA6EBF2),
              Color(0xFFC6B2C7),
            ],
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
