import 'package:flutter/material.dart';
import 'package:portfolio/components/app_bar.dart';
import 'package:portfolio/components/drawer.dart';

class Project extends StatelessWidget {
  const Project({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Projects'),
      drawer: CustomDrawer()
    );
  }
}