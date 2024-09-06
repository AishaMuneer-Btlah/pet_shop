import 'package:flutter/material.dart';
import 'package:single_view/choose_page.dart';
import 'package:single_view/get_started.dart';
import 'package:single_view/single_scroll_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: SingleScrollView(),
    );
  }
}

