import 'package:flutter/material.dart';
import 'package:todo_app/src/style/style.dart';

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
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child:
                Image.asset(
                  'assets/images/to_do(512x512).png',
                  scale: 8,
                  ),
              ),
              const Text('Todo App',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          flexibleSpace: theBuildClipRRect(),
        ),
        body: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Expanded(flex: 10, child: Row(
                  children: [
                    Expanded(flex: 80,child: TextFormField(decoration: theTextFormFieldDecoration('Make a list'),)),
                    const Expanded(flex:2,child: SizedBox(width: 10,)),
                    Expanded(flex:20,child: ElevatedButton(onPressed: () {}, child: const Icon(Icons.add),)),
                  ],
                )),
                const SizedBox(height: 40,),
                const Expanded(flex: 90, child: Text('List')),
              ],
            ),
        ),
    );
  }
}
