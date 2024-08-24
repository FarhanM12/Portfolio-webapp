import 'package:flutter/material.dart';
import 'sections/header_section.dart'; // Ensure this file contains HeaderSection widget
import 'sections/about_section.dart'; // Ensure this file contains AboutSection widget
import 'sections/skills_section.dart'; // Ensure this file contains SkillsSection widget
import 'sections/projects_section.dart'; // Ensure this file contains ProjectsSection widget
import 'sections/contact_section.dart'; // Ensure this file contains ContactSection widget

class HomePage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            HeaderSection(scrollController: _scrollController),
            SizedBox(height: 50), // Added gap
            AboutSection(),
            SizedBox(height: 50), // Added gap
            SkillsSection(),
            SizedBox(height: 50), // Added gap
            ProjectsSection(),
            SizedBox(height: 50), // Added gap
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
