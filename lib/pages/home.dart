import 'package:flutter/material.dart';
import 'package:portfolio/components/drawer.dart';
import '../components/app_bar.dart';
import 'about.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(text: 'Lawmake Praveen'),
        body: ColoredBox(
          color: const Color.fromARGB(255, 13, 0, 33),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'assets/images/mypic.png',
                width: 200,
              ),
              const SizedBox(height: 30),
              const Text(
                "Hello I'm Lawmake Praveen, a tech enthusiast based in Tamil Nadu, India. My passion lies in the world of technology, where I continually seek to expand my knowledge and skills.",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TechStack()))
                      },
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: const BorderSide(
                                      color: Colors.white, width: 1)))),
                      child: const  Row(
                        children: [
                          Text(
                            'Profile',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
        drawer: const CustomDrawer());
  }
}
