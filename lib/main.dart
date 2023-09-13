import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
// import 'dart:html';
// import 'dart:ui_web' as ui;
import './pages/home.dart';

void main() {
  // ui.platformViewRegistry.registerViewFactory(
      // 'example', (_) => DivElement()..innerText = 'Hello, HTML!');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
