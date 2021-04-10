import 'package:flutter/material.dart';
import 'package:flutter_vscode/pages/slideshow_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseño App',
      home: SLideshowPage(),
    );
  }
}
