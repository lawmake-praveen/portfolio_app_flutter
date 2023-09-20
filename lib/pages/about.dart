import 'package:flutter/material.dart';
import 'package:portfolio/components/app_bar.dart';
import '../components/data.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        text: 'Tech',
      ),
      body: SingleChildScrollView(
        child: ColoredBox(
          color: const Color.fromARGB(255, 13, 0, 33),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hey there!',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text("It's Praveen here,", style: TextStyle(fontSize: 22, color: Colors.white),),
                  const Text(
                    "My passion for learning has led me to learn the latest tools and languages in the IT industry. The skills I have acquired make me a perfect choice for building robust, dynamic web and mobile applications.",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Tech Stack',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  const SizedBox(height: 15),
                  Center(
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: skills.map((skill) {
                        return Card(
                          color:const Color.fromARGB(255, 18, 0, 44),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                            child: Column(
                              children: [
                                Text(skill['name'], style: const TextStyle(color: Colors.white),),
                                Image.asset(
                                  skill['image'],
                                  width: 80,
                                )
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )
          
                ]),
          ),
        ),
      ),
    );
  }
}
