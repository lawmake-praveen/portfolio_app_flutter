import 'package:flutter/material.dart';
import 'package:portfolio/components/drawer.dart';
import '../components/app_bar.dart';
import 'about.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(text: 'Lawmake Praveen'),
        body: ColoredBox(
          color: const Color.fromARGB(255, 13, 0, 33),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                '../../assets/images/mypic.png',
                width: 200,
              ),
              const SizedBox(height: 30),
              const Text(
                "Hello I'm Lawmake Praveen, a tech enthusiast based in Tamil Nadu, India. My passion lies in the world of technology, where I continually seek to expand my knowledge and skills.",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const About()))
                      },
                      
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(20, 7, 10, 7)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  side: const BorderSide(
                                      color: Colors.white, width: 1)))),
                      child: Row(
                        children: [
                          const Text(
                            'Profile',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          IconButton(
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const About()))
                            },
                            icon: const Icon(Icons.arrow_outward),
                            color: Colors.white,
                            iconSize: 22,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
        drawer: CustomDrawer());
  }
}
