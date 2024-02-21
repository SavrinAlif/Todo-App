import 'package:flutter/material.dart';
import 'package:todo_app/src/fragments/home_activity/the_home_activity.dart';

class TheApp extends StatelessWidget {
  const TheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const TheHomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}
