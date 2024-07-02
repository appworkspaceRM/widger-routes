import 'package:flutter/material.dart';
import 'package:flutter_application_21/pages/gallery_page.dart';

class MyHomePage extends StatelessWidget {
  static const routeName = '/homepage';
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
        ),
      ),
      body: const Center(
        child: Text(
          'Home Page',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(GalleryPage.routeName);
        },
        child: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
