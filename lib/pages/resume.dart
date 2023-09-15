import 'package:flutter/material.dart';
import 'package:portfolio/components/app_bar.dart';
import 'package:portfolio/components/drawer.dart';
import '../components/data.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: "Resume"),
      body: SingleChildScrollView(
          child: Container(
        color: const Color.fromARGB(255, 13, 0, 33),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const Text(
                'Lawmake Praveen',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                '6081376043',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SideHeading(heading: 'Profile Snapshot: '),
              const Text(
                'A self-guided developer with an ability to design and develop dynamic, responsive, user-friendly websites with cross-browser compatibility. Staying up to date with the latest trends and quickly learning new tools or languages is a plus.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SideHeading(heading: 'Skills and Knowledge: '),
              Wrap(
                children: techStack.map((skill) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      child: Text(
                        skill,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const Column(
                children: [
                  SideHeading(heading: 'Certification: '),
                  Column(
                    children: [
                      Ptag(
                          text:
                              '● Project Management Certification at Cognizant for Agile Methodology (virtual internship).'),
                      Ptag(
                          text:
                              '● The Complete Web Development Course by Udemy.'),
                      Ptag(text: '● Responsive Web Design by FreeCodeCamp.'),
                    ],
                  ),
                  SideHeading(heading: 'Relevent Projects: '),
                  Column(
                    children: [
                      Ptag(
                          text:
                              '● A Movie database website to search for your favourite Movies and Tv shows.'),
                      Ptag(text: '● An E-Commerce Website to browse and shop.'),
                      Ptag(
                          text:
                              '● An Activity Tab to Create, Edit, Group and Delete your day to day Activities.'),
                      Ptag(
                          text:
                              "● A Currency Calculator App to find foreign Exchange Rate."),
                      Ptag(
                          text:
                              '● A React Notes App to keep day to day notes.'),
                      Ptag(
                          text:
                              '● In addition to that I have also developed a range of dynamic and interactive features and apps using Vanilla JavaScript, React and APIs. These include Tic Tac Toe, News App, Weather App, Picture Gallery, Password generator, Mathematics Quiz game and several other games and apps.'),
                    ],
                  ),
                  SideHeading(heading: 'Known Languages: '),
                  Column(
                    children: [
                      Ptag(text: 'Tamil (Native)'),
                      Ptag(text: 'English (Working Proficiency)'),
                    ],
                  ),
                  SideHeading(heading: 'Technical Skills: '),
                  Column(
                    children: [
                      Ptag(text: 'MS PowerPoint'),
                      Ptag(text: 'MS Excel'),
                      Ptag(text: 'MS Word'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      )),
      drawer: const CustomDrawer(),
    );
  }
}

class SideHeading extends StatelessWidget {
  const SideHeading({super.key, required this.heading});

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 14),
      child: Text(
        heading,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
      ),
    );
  }
}

class Ptag extends StatelessWidget {
  const Ptag({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
