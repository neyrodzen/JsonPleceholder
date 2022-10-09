
import 'package:flutter/material.dart';
import '../page_two/page_two.dart';
import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      routes: {'/page_two': (context) => const PageTwo()},
    );
  }
}
