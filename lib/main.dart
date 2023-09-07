import 'package:flutter/material.dart';
import 'package:tricks_ui/Trick_2/Container_Clipper.dart';

import 'Trick_1/button_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Clipper(),
    );
  }
}


