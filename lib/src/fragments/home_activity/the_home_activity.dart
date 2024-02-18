import 'package:flutter/material.dart';

class TheHomeActivity extends StatefulWidget {
  const TheHomeActivity({super.key});

  @override
  State<TheHomeActivity> createState() => _TheHomeActivityState();
}

class _TheHomeActivityState extends State<TheHomeActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
      ),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    );
  }
}
