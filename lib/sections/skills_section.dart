import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.black54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.star, color: Colors.teal, size: 40),
              SizedBox(width: 10),
              Text(
                'Skills',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              SkillChip(label: 'Flutter'),
              SkillChip(label: 'Dart'),
              SkillChip(label: 'JavaScript'),
              SkillChip(label: 'Python'),
              SkillChip(label: 'Firebase'),
              SkillChip(label: 'Git'),
              SkillChip(label: 'UI/UX Design'),
            ],
          ),
        ],
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;

  const SkillChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label, style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.teal,
      padding: EdgeInsets.all(8),
    );
  }
}
