import 'package:flutter/material.dart';

theSnackBar(message, context) {
   return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
         message,
         style: const TextStyle(fontSize: 20),
      ),
      backgroundColor: Colors.red,
      elevation: 10,
      showCloseIcon: true,
      closeIconColor: Colors.white,
      duration: const Duration(milliseconds: 3000),
      width: 500,
      padding: const EdgeInsets.symmetric(
         horizontal: 8.0, // Inner padding for SnackBar content.
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(20.0),
      ),
   ));
}