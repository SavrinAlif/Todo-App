import 'package:flutter/material.dart';

InputDecoration theTextFormFieldDecoration(label) {
  return InputDecoration(
    labelText: label,
    hintText: 'Cucumber',
    contentPadding: const EdgeInsets.all(10),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(50.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 5,
        color: Colors.greenAccent,
      ),
      borderRadius: BorderRadius.circular(50.0),
    ),
  );
}

ClipRRect theBuildClipRRect() {
  return ClipRRect(
    borderRadius: const BorderRadius.vertical(
      bottom: Radius.circular(48.0),
    ),
    child: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[Colors.tealAccent,Colors.greenAccent],
          ),
      ),
    ),
  );
}

ButtonStyle theBuildStyleFrom() {
  return ElevatedButton.styleFrom(
    minimumSize: const Size.fromHeight(50),
    backgroundColor: Colors.greenAccent,
    foregroundColor: Colors.black,
    shape: const StadiumBorder(),
  );
}

SizedBox theSizedBox(child) {
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(50),
      ),
      child: child,
    ),
  );
}
