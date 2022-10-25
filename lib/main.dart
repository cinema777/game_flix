import 'package:flutter/material.dart';
import 'package:game_flix/data/task_inherited.dart';
import 'package:game_flix/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Flix',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: TaskInherited(
          child: const HomeScreen()
      ),
    );
  }
}

