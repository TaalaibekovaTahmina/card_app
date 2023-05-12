import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:tirkeme3/pages/my_home_page.dart';
import 'package:tirkeme3/pages/register_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: RegisterPage(),
    );
  }
}
