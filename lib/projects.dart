import 'package:flutter/material.dart';
import 'package:flutter_cv/profile.dart';

class MyProjects extends StatelessWidget {
  final Profile profile;

  const MyProjects({Key key, @required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      child: Column(
        children: [
          Text(
            'Projets',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}
