import 'package:flutter/material.dart';
import 'package:pet_shop/views/DescriptionPage.dart';
import 'package:pet_shop/views/homePage.dart';
import 'package:pet_shop/views/loginView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DescriptionPage(),
    );
  }
}
