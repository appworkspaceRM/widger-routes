import 'package:flutter/material.dart';
import 'package:flutter_application_21/pages/photo_page.dart';

class GalleryPage extends StatelessWidget {
  static const routeName = '/gallerypage';

  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gallery Page',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Gallery Page',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('<- back'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(PhotoPage.routeName);
                  },
                  child: const Text('next page ->'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
