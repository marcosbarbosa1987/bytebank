import 'package:flutter/material.dart';

class custom_textfield extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final IconData? icon;

  const custom_textfield(
      {required this.controller,
        required this.labelText,
        required this.hintText,
        this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        style: const TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: labelText,
          hintText: hintText,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}