import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.person, color: Colors.teal, size: 40),
              SizedBox(width: 10),
              Text(
                'About Me',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'I am a highly proficient Flutter developer with expertise in Dart, Flutter framework, and modern app architecture. My passion lies in creating beautiful and functional applications that provide an excellent user experience.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'I have built several apps that have been well-received by users, and I continue to refine my skills to stay updated with the latest trends in mobile app development.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(FontAwesomeIcons.code, color: Colors.teal, size: 18),
              SizedBox(width: 5),
              Text(
                'Loves to code and solve problems',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ],
          ),
          Row(
            children: [
              Icon(FontAwesomeIcons.lightbulb, color: Colors.teal, size: 18),
              SizedBox(width: 5),
              Text(
                'Enjoys learning new technologies',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
