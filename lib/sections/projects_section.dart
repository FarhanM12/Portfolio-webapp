import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87, // Dark theme
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.teal, // Teal color for text
            ),
          ),
          SizedBox(height: 20),
          ProjectTile(
            title: 'Notes App',
            description: 'Developed a modern note-taking app using Flutter and SQFlite.',
            url: 'https://github.com/FarhanM12/Notes-App',
          ),
          ProjectTile(
            title: 'NewsApp',
            description: 'A news app with swipe-up feature for the latest news.',
            url: 'https://github.com/FarhanM12/NewsApp',
          ),
          ProjectTile(
            title: 'Google Gemini App',
            description: 'Implemented AI capabilities in a mobile application.',
            url: 'https://github.com/FarhanM12/gemini-chat-bot',
          ),
        ],
      ),
    );
  }
}

class ProjectTile extends StatelessWidget {
  final String title;
  final String description;
  final String url;

  const ProjectTile({
    required this.title,
    required this.description,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[800], // Dark card color
      elevation: 6,
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        contentPadding: EdgeInsets.all(15),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: Text(
          description,
          style: TextStyle(color: Colors.white70),
        ),
        trailing: IconButton(
          icon: Icon(Icons.link, color: Colors.teal),
          onPressed: () async {
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
        ),
      ),
    );
  }
}
