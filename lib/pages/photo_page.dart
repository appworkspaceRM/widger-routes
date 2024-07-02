import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  static const routeName = '/photopage';

  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Photo Page',
        ),
      ),
      body: const Center(
        child: Text(
          'Photo Page',
        ),
      ),
    );
  }
}
