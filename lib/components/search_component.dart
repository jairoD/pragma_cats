import 'package:flutter/material.dart';

class SearchComponent extends StatelessWidget {
  final TextEditingController controller;
  final Widget iconButton;
  const SearchComponent(
      {super.key, required this.controller, required this.iconButton});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          suffixIcon: iconButton),
    );
  }
}
