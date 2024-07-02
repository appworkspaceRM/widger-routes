# flutter_application_21

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Routes

routes merupakan navigasi secara routing dengan konsep yang sama seperti Navigation yaitu konsep push dan pop. konsep Navigasi akan sangat sulit jika terlalu banyak screen yang harus di navigasi dan terlalu rumit. maka routes dapat mengatasi jika jumlah screen atau layar atau layer yang di munculkan. Routes menggunakan konsep mapping untuk melakukan navigasi pada MaterialApp menggunakan  properti atau name argumen routes.

beberapa properti atau name argumen yang wajib di gunakan untuk mebuat routes bekerja :

- initialRoute : memerlukan sebuah string yang berada pada routes, hal ini akan menunjukan atau menampilkan atau screen awal yang akan dituju
- routes : memerlukan Map<String, Widget>, merupakan kumpulan dari routes dan widget yang akan berpasangan antar routes dan widget atau screen yang akan ditampilkan.

pada konsep routes ini kita harus menggunakan konsep push dengan fungsi pushNamed. untuk menghindari kebingunan nama dari routing lebih baik dari setiap screen atau layar atau class, ClassName.routeName

```dart
Navigator.of(context).pushNamed('routeNamed');
```

```dart
class MyClass{
	static const routeName = 'routeName';
}
```

```dart
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

```

![code-snapshot1](https://github.com/appworkspaceRM/widger-routes/assets/135511281/4763dbeb-f1a7-4e0d-8915-64366f6fc873)


```dart
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

```

![code-snapshot2](https://github.com/appworkspaceRM/widger-routes/assets/135511281/7a37f458-b22b-4ef1-afff-34fab6db5970)


```dart
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

```

![code-snapshot3](https://github.com/appworkspaceRM/widger-routes/assets/135511281/dec0b5eb-1127-4335-93d2-0da29d89c452)


```dart
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

```

![Uploading code-snapshot4.png…]()
