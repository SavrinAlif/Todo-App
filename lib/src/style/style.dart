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
