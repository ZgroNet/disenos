import 'package:flutter/material.dart';

import 'package:disenos/screens/basic_design.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      initialRoute: 'basic_design',
      routes: {
        'basic_design': (_) => const BasicDesignScreen()
      },
    );
  }
}

