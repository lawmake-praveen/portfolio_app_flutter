import 'package:flutter/material.dart';
import 'package:portfolio/components/app_bar.dart';
import 'package:portfolio/components/drawer.dart';
import '../components/data.dart';
import '../components/project_box.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(text: 'Projects'),
        body: SingleChildScrollView(
            child: Container(
          color: const Color.fromARGB(255, 13, 0, 33),
          child: Column(
            children: projects
                .map((e) => Box(
                    link: e['link'],
                    name: e['name'],
                    desc: e['desc'],
                    imagePath: e['image']))
                .toList(),
          ),
        )),
        drawer: const CustomDrawer());
  }
}
