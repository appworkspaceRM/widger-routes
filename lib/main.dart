import 'package:flutter/material.dart';
import 'package:flutter_application_21/pages/gallery_page.dart';
import 'package:flutter_application_21/pages/my_home_page.dart';
import 'package:flutter_application_21/pages/photo_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      initialRoute: MyHomePage.routeName,
      routes: {
        MyHomePage.routeName: (context) => const MyHomePage(),
        GalleryPage.routeName: (context) => const GalleryPage(),
        PhotoPage.routeName: (context) => const PhotoPage(),
      },
    );
  }
}
