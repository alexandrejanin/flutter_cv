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
      url: 'https://github.com/alexandrejanin',
    ),
  ],
  experiences: [
    const Experience(
      name: 'Stage de développement web',
      description:
          'Développement d\'une plateforme de contrôle pour un système de classification automatique d\'images, en React et Node.js.',
      year: '2019',
      location: 'Grand Shooting',
    ),
    const Experience(
      name: 'Stage de machine learning',
      description: 'Développement d\'un système de classification automatique'
          ' d\'images à destination des marques de mode',
      year: '2018',
      location: 'Grand Shooting',
    ),
  ],
  educations: [
    const Education(
      location: 'Université Pierre et Marie Curie, Paris',
      name: 'L3 Informatique, mineure Design',
      year: '2020',
      startYear: '2019',
    ),
    const Education(
      location: 'Université Pierre et Marie Curie, Paris',
      name: 'L2 Informatique, mineure Design',
      year: '2019',
      startYear: '2018',
    ),
    const Education(
      location: 'Université Pierre et Marie Curie, Paris',
      name: 'L1 Mathématiques, Informatique, Physique, Ingénierie',
      year: '2018',
      startYear: '2017',
    ),
    const Education(
      location: 'Lycée Alexandre Dumas, Saint-Cloud',
      name: 'Bac S spécialité Informatique et Sciences du Numérique',
      year: '2017',
    ),
  ],
  projects: [
    const Project(
      name: 'rust-8080',
      url: 'github.com/alexandrejanin/rust-8080',
      description: 'Émulateur du processeur Intel 8080 en Rust',
    ),
    const Project(
      name: 'RealmGen',
      url: 'github.com/alexandrejanin/RealmGen',
      description: 'Générateur procédural de continents dans Unity en C#',
    ),
    const Project(
      name: 'VYBES',
      url: 'instagram.com/vybes_app',
      description: 'Application de rencontre basée sur la musique',
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
      name: 'Déploiement de serveurs',
      text: 'AWS EC2, AWS Elastic Beanstalk',
    ),
    const Skill(
      name: 'Techniques de développement',
      text: 'Continuous Integration'
          '\nTest Driven Development',
    ),
    const Skill(
      name: 'Langues',
      text: 'Français (langue maternelle)'
          '\nAnglais (courant)',
    ),
  ],
);
