import 'package:flutter/material.dart';
import 'package:todo_app/src/fragments/snack_bar_activity/the_snack_bar.dart';
import 'package:todo_app/src/style/style.dart';

class TheHomeActivity extends StatefulWidget {
  const TheHomeActivity({super.key});

  @override
  State<TheHomeActivity> createState() => _TheHomeActivityState();
}

class _TheHomeActivityState extends State<TheHomeActivity> {
  final TextEditingController controller = TextEditingController();

  List<String> toDoList = [];
  String items = "";

  theOnChangeActivity(String content) {
    setState(() {
      items = content.trim();
    });
  }

  theTodoActivity() {
    if (items.isNotEmpty) {
      setState(() {
        toDoList.add(items);
        items = "";
      });
    } else {
      theSnackBar('Please enter a task to add.', context);
    }
  }

  theCardRemove(index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Image.asset(
                'assets/images/to_do(512x512).png',
                scale: 8,
              ),
            ),
            const Text(
              'Todo App',
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
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(
                      flex: 75,
                      child: TextFormField(
                        controller: controller,
                        decoration: theTextFormFieldDecoration('Make a list'),
                        onChanged: (content) {
                          theOnChangeActivity(content);
                        },
                      ),
                    ),
                    const Expanded(
                      flex: 2,
                      child: SizedBox(
                        width: 10,
                      ),
                    ),
                    Expanded(
                      flex: 25,
                      child: ElevatedButton(
                        style: theBuildStyleFrom(),
                        onPressed: () {
                          theTodoActivity();
                          controller.clear();
                        },
                        child: const Icon(
                          Icons.add,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              flex: 90,
              child: ListView.separated(
                itemCount: toDoList.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 5,
                    child: theSizedBox(
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 80,
                                child: Text(toDoList[index].toString())),
                            Expanded(
                              flex: 20,
                              child: TextButton(
                                onPressed: () {
                                  theCardRemove(index);
                                },
                                child: const Icon(Icons.remove_circle_outline),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
