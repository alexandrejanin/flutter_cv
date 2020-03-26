import 'package:flutter/material.dart';

class Profile {
  final String name;
  final ImageProvider image;
  final List<Contact> contacts;
  final List<Experience> experiences;
  final List<Education> educations;
  final List<Project> projects;
  final List<Skill> skills;

  const Profile({
    @required this.name,
    @required this.image,
    this.contacts,
    this.experiences,
    this.educations,
    this.projects,
    this.skills,
  });
}

class Contact {
  final String text;
  final String url;
  final IconData icon;
  final ImageProvider image;

  const Contact.icon({
    @required this.text,
    @required this.icon,
    this.url,
  }) : image = null;

  const Contact.image({
    @required this.text,
    @required this.image,
    this.url,
  }) : icon = null;
}

class Skill {
  final String name;
  final String text;

  const Skill({
    @required this.name,
    @required this.text,
  });
}

class Experience {
  final String name;
  final String location;
  final String description;
  final String year;
  final String startYear;

  const Experience({
    @required this.name,
    @required this.location,
    @required this.description,
    @required this.year,
    this.startYear,
  });
}

class Education {
  final String name;
  final String location;
  final String year;
  final String startYear;

  const Education({
    @required this.location,
    @required this.name,
    @required this.year,
    this.startYear,
  });
}

class Project {
  final String name;
  final String url;
  final String description;

  const Project({
    @required this.name,
    @required this.url,
    @required this.description,
  });
}
