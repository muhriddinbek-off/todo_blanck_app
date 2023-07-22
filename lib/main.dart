import 'package:flutter/material.dart';
import 'package:todo_blanck_app/pages/home_page.dart';
import 'package:todo_blanck_app/pages/save_delete_page.dart';
import 'package:todo_blanck_app/pages/save_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home-page',
      routes: {
        "/home-page": (context) => const HomePage(),
        "/save-page": (context) => const SavePage(),
        "/save-delete-page": (context) => const SaveDeletePage(),
      },
    );
  }
}
