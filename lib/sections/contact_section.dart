import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(FontAwesomeIcons.linkedin, size: 32),
              SizedBox(width: 10),
              Text('LinkedIn'),
              Spacer(),
              TextButton(
                onPressed: () {
                  // Add your LinkedIn URL
                },
                child: Text('Visit'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
