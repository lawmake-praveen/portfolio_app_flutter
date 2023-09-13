import 'package:flutter/material.dart';
import 'package:portfolio/components/app_bar.dart';
import 'package:portfolio/components/drawer.dart';

class About extends StatelessWidget {
  const About({super.key});

  static const List skills = [
    {"image": '../../assets/images/tech-stack/html-icon.png', "name": "HTML"},
    {"image": '../../assets/images/tech-stack/css-icon.png', "name": "CSS"},
    {"image": '../../assets/images/tech-stack/react-icon.png', "name": "React"},
    {
      "image": '../../assets/images/tech-stack/js-icon.png',
      "name": "JavaScript"
    },
    {"image": '../../assets/images/tech-stack/git-icon.png', "name": "Git"},
    {
      "image": '../../assets/images/tech-stack/github-icon.png',
      "name": "GitHub"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: 'About',
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hey there!',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "Hey there, I'm Lawmake Praveen, a tech enthusiast from Tamil Nadu, India. I'm passionate about coding and creating digital wonders. Join me on my journey as I craft amazing experiences through code.",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Tech Stack',
              style: TextStyle(fontSize: 24),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: (skills.length / 4).ceil(),
              itemBuilder: (context, index) {
                final startIndex = index * 4;
                final endIndex = (index + 1) * 4;
                final skillsSubset = skills.sublist(startIndex, endIndex);
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1.0, // Aspect ratio of each grid item
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: skillsSubset.length,
                  itemBuilder: (context, i) {
                    final skill = skillsSubset[i];
                    return Column(
                      children: [
                        Image.asset(
                          skill['image'],
                          width: 80, // Adjust the width as needed
                          height: 80, // Adjust the height as needed
                        ),
                        const SizedBox(height: 8),
                        Text(
                          skill['name'],
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ]),
      drawer: const CustomDrawer(),
    );
  }
}
