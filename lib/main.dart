import 'package:flutter/material.dart';
import 'package:mockups/pages/page_teste/page_teste.dart';

import 'pages/page_one/page_one.dart';
import 'pages/page_two/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const PageOne(),
        '/page_two': (context) => const PageTwo(),
        '/page_test': (context) => const PageTeste(),
      },
    );
  }
}
