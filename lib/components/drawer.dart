import 'package:flutter/material.dart';
import '../pages/about.dart';
import '../pages/contact.dart';
import '../pages/home.dart';
import '../pages/project.dart';
import '../pages/resume.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 13, 0, 33),
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          SizedBox(
              height: 200,
              child: DrawerHeader(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.transparent, width: 0))),
                  padding: const EdgeInsets.all(0),
                  child: Image.asset(
                    '../../assets/images/logo.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ))),
          Tile(
              tile: 'Home',
              onClick: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()))
                  }),
          Tile(
              tile: 'About',
              onClick: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => About()))
                  }),
          Tile(
              tile: 'Resume',
              onClick: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Resume()))
                  }),
          Tile(
              tile: 'Projects',
              onClick: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Project()))
                  }),
          Tile(
              tile: 'Contact',
              onClick: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Contact()))
                  }),
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({super.key, required this.tile, required this.onClick});
  final String tile;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 4),
      title: Text(
        tile,
        style: TextStyle(fontSize: 28, color: Colors.white),
      ),
      trailing: Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      onTap: onClick,
    );
  }
}
