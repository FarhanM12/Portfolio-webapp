import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  final String label;

  const SkillChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
    );
  }
}
