import 'package:flutter/material.dart';
import 'package:flutter_cv/buttons.dart';
import 'package:flutter_cv/me.dart';
import 'package:flutter_cv/page.dart';
import 'package:flutter_cv/profile.dart';
import 'package:flutter_cv/projects.dart';
import 'package:flutter_cv/resume.dart';
import 'package:flutter_cv/slide_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alexandre Janin',
      theme: ThemeData(
        primaryColor: Color(0xFFA6EBF2),
        accentColor: Color(0xFF823888),
        fontFamily: 'Montserrat',
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/resume')
          return SlideRoute(
            settings: settings,
            curve: Curves.ease,
            duration: const Duration(milliseconds: 500),
            builder: (context) => Page(
              child: MyResume(profile: me),
            ),
          );
        if (settings.name == '/projects')
          return SlideRoute(
            settings: settings,
            curve: Curves.ease,
            builder: (context) => Page(
              child: MyProjects(profile: me),
            ),
          );
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => MyHomePage(profile: me),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Profile profile;

  const MyHomePage({Key key, @required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).accentColor,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'image',
              child: Image(
                image: profile.image,
                width: 300,
                height: 300,
              ),
            ),
            SizedBox(height: 20),
            Text(
              profile.name,
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              'CV',
              onTap: () => Navigator.pushNamed(context, '/resume'),
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              'Projets',
              onTap: () => Navigator.pushNamed(context, '/projects'),
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
