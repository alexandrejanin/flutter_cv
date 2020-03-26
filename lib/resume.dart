import 'package:flutter/material.dart';
import 'package:flutter_cv/buttons.dart';
import 'package:flutter_cv/profile.dart';

class MyResume extends StatelessWidget {
  final Profile profile;

  const MyResume({Key key, @required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth / constraints.maxHeight >= 210 / 297)
          return AspectRatio(
            aspectRatio: 210 / 297,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 1,
                  child: LeftPanel(profile: profile),
                ),
                Expanded(
                  flex: 2,
                  child: RightPanel(profile: profile),
                ),
              ],
            ),
          );
        else
          return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                LeftPanel(
                  profile: profile,
                  isHorizontal: true,
                ),
                RightPanel(profile: profile),
              ],
            ),
          );
      },
    );
  }
}

class LeftPanel extends StatelessWidget {
  final Profile profile;
  final bool isHorizontal;

  const LeftPanel({
    Key key,
    @required this.profile,
    this.isHorizontal = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isHorizontal)
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ProfilePicture(profile: profile),
                        ),
                      ),
                      NamePanel(profile: profile),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
                if (profile.contacts != null)
                  Expanded(
                    child: ContactsList(contacts: profile.contacts),
                  ),
              ],
            ),
          ),
          SizedBox(height: 8),
          ProjectsList(projects: profile.projects),
        ],
      );
    else
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: ProfilePicture(profile: profile),
          ),
          NamePanel(profile: profile),
          SizedBox(height: 15),
          if (profile.contacts != null)
            ContactsList(contacts: profile.contacts),
          if (profile.contacts != null && profile.projects != null)
            Divider(
              height: 30,
              indent: 16,
              endIndent: 16,
              color: Colors.white30,
            ),
          SizedBox(height: 6),
          if (profile.projects != null)
            ProjectsList(projects: profile.projects),
        ],
      );
  }
}

class NamePanel extends StatelessWidget {
  final Profile profile;

  const NamePanel({
    Key key,
    @required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        profile.name,
        style: TextStyle(
          fontSize: 19,
          color: Colors.white,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  final Profile profile;

  const ProfilePicture({
    Key key,
    @required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Hero(
        tag: 'image',
        child: Image(image: profile.image),
      ),
    );
  }
}

class RightPanel extends StatelessWidget {
  final Profile profile;

  const RightPanel({
    Key key,
    @required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RightPanelTitle('Expérience'),
          for (final experience in profile.experiences)
            ExperienceItem(experience: experience),
          RightPanelTitle('Formation'),
          for (final education in profile.educations)
            EducationItem(education: education),
          RightPanelTitle('Compétences'),
          for (final skill in profile.skills) SkillItem(skill: skill),
        ],
      ),
    );
  }
}

class RightPanelTitle extends StatelessWidget {
  final String text;

  const RightPanelTitle(
    this.text, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 12),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final Experience experience;

  const ExperienceItem({
    Key key,
    @required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              experience.startYear != null
                  ? '${experience.year}\n${experience.startYear}'
                  : experience.year,
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 13),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${experience.location} - ${experience.name}',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  experience.description,
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final Education education;

  const EducationItem({
    Key key,
    @required this.education,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              education.startYear != null
                  ? '${education.year}\n${education.startYear}'
                  : education.year,
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 13),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  education.location,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  education.name,
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final Skill skill;

  const SkillItem({
    Key key,
    @required this.skill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skill.name,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            skill.text,
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }
}

class ContactsList extends StatelessWidget {
  final List<Contact> contacts;

  const ContactsList({
    Key key,
    @required this.contacts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (final contact in contacts)
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (contact.icon != null)
                  Icon(
                    contact.icon,
                    size: 22,
                    color: Colors.white,
                  ),
                if (contact.image != null)
                  Image(
                    image: contact.image,
                    height: 22,
                    color: Colors.white,
                  ),
                SizedBox(width: 16),
                contact.url == null
                    ? Text(
                        contact.text,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      )
                    : TextButton(
                        contact.text,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
              ],
            ),
          ),
      ],
    );
  }
}

class ProjectsList extends StatelessWidget {
  final List<Project> projects;

  const ProjectsList({
    Key key,
    @required this.projects,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projets',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12),
          for (final project in projects)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: AnyButton(
                onTap: () {
                  Navigator.pushNamed(context, '/projects');
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        project.url,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        project.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        project.description,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
