// ignore_for_file: file_names

import 'package:coffee_app/constants/app_consts.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final Function() action;
  final String label;
  final bool selected;
  const CustomChip({
    required this.label,
    required this.action,
    this.selected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 7),
        child: Chip(
          padding: const EdgeInsets.all(8),
          label: Text(label),
          labelStyle: TextStyle(
            color: (selected) ? Colors.white : Colors.black,
            fontSize: 17,
          ),
          backgroundColor: (selected) ? AppConstants.kPrimaryColor : null,
        ),
      ),
    );
  }
}
