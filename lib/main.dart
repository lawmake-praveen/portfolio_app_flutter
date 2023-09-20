import 'package:flutter/material.dart';
import 'package:portfolio/components/bottom_nav_bar.dart';
import './pages/home.dart';
import 'pages/about.dart';
import 'pages/contact.dart';
import 'pages/project.dart';
import 'pages/resume.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var selectedIndex = 0;

  navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List pages = [
    const Home(),
    const TechStack(),
    const Resume(),
    const Project(),
    const Contact()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praveen',
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        bottomNavigationBar:
            CustomNavBar(onTabChange: (index) => navigateBottomBar(index)),
        body: pages[selectedIndex],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
