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
  experiences: [
    const Experience(
      name: 'Stage de développement web',
      description: 'Développement d\'une plateforme web de contrôle pour un'
          ' système de classification automatique d\'images',
      year: '2019',
      location: 'Grand Shooting',
      techs: 'Git, Javascript, Node.js, React',
    ),
    const Experience(
      name: 'Stage de machine learning',
      description: 'Développement d\'un système de classification automatique'
          ' d\'images à destination des marques de mode',
      year: '2018',
      location: 'Grand Shooting',
      techs: 'Git, Python, Keras, AWS S3',
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
      description: 'Émulateur du processeur Intel 8080 écrit en Rust',
    ),
    const Project(
      name: 'RealmGen',
      url: 'github.com/alexandrejanin/RealmGen',
      description: 'Générateur procédural de continents dans Unity en C#',
    ),
  ],
  skills: [
    const Skill(
      name: 'Languages de programmation',
      text: 'C, C++, Rust, Java',
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
      text: 'AWS EC2',
    ),
    const Skill(
      name: 'Langues',
      text: 'Français (langue maternelle)'
          '\nAnglais (courant)'
    ),
  ],
);
