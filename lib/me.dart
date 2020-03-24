import 'package:flutter/material.dart';
import 'package:flutter_cv/profile.dart';

const Profile me = Profile(
  name: 'Alexandre Janin',
  image: AssetImage('assets/image.png'),
  contacts: [
    const Contact.icon(text: '+33 6 29 74 09 07', icon: Icons.phone),
    const Contact.icon(text: 'a@janin.dev', icon: Icons.email),
    const Contact.icon(text: 'janin.dev', icon: Icons.web),
    const Contact.image(
      text: 'alexandrejanin',
      image: AssetImage('assets/github.png'),
    ),
  ],
  skills: [
    const Skill(
      name: 'Programmation système',
      text: 'C, C++, Rust',
    ),
    const Skill(
      name: 'Programmation orientée objet',
      text: 'C#, Java',
    ),
    const Skill(
      name: 'Développement d\'applications mobiles',
      text: 'Flutter',
    ),
    const Skill(
      name: 'Développement de serveurs web',
      text: 'Javascript/Typescript (Node.js)',
    ),
    const Skill(
      name: 'Bases de données',
      text: 'PostgreSQL, AWS RDS',
    ),
    const Skill(
      name: 'Déploiement d\'applications cloud',
      text: 'AWS EC2',
    ),
    const Skill(
      name: 'Langues',
      text: 'Français (langue maternelle)'
          '\nAnglais (courant)'
          '\nAllemand (bases)'
          '\nJaponais (bases)',
    ),
  ],
);
