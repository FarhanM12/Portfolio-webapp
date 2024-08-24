import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewMyWorkSection extends StatelessWidget {
  final String githubUrl = 'https://github.com/FarhanM12';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.solidEye, color: Colors.teal, size: 40),
              SizedBox(width: 10),
              Text(
                'View My Work',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Adding an animated coding-related icon
          Lottie.asset(
            'assets/coding_animation.json',
            height: 150,
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () async {
              if (await canLaunch(githubUrl)) {
                await launch(githubUrl);
              } else {
                throw 'Could not launch $githubUrl';
              }
            },
            icon: Icon(FontAwesomeIcons.github),
            label: Text('Visit My GitHub'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.teal,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              textStyle: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
