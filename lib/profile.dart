import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile {
  final String name;
  final ImageProvider image;
  final List<Contact> contacts;
  final List<Skill> skills;

  const Profile({
    @required this.name,
    @required this.image,
    this.contacts,
    this.skills,
  });
}

class Contact {
  final String text;
  final IconData icon;
  final ImageProvider image;

  const Contact.icon({@required this.text, @required this.icon}) : image = null;

  const Contact.image({@required this.text, @required this.image})
      : icon = null;
}

class Skill {
  final String name;
  final String text;

  const Skill({@required this.name, @required this.text});
}
