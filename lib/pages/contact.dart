import 'package:flutter/material.dart';
import 'package:portfolio/components/app_bar.dart';
import '../components/link_to_social.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});
  final String gitHubUrl = 'https://github.com/lawmake-praveen';
  final String linkedinUrl =
      'https://www.linkedin.com/in/lawmake-praveen-928a15239';
  final String whatsappUrl = 'https://wa.me/6381376043';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Contact'),
      body: ColoredBox(
        color: const Color.fromARGB(255, 13, 0, 33),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Contact me in my Social:',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinkToSocial(
                    launchUrl: gitHubUrl,
                    image: 'assets/images/social-media/github-logo.png'),
                LinkToSocial(
                    launchUrl: linkedinUrl,
                    image: 'assets/images/social-media/linkedin-logo.png'),
                LinkToSocial(
                    launchUrl: whatsappUrl,
                    image: 'assets/images/social-media/whatsapp.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
