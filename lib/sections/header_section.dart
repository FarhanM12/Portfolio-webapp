import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HeaderSection extends StatelessWidget {
  final ScrollController scrollController;

  HeaderSection({required this.scrollController});

  void _scrollToWork() {
    scrollController.animateTo(
      // Change this value to the offset of your "My Work" section
      600.0, // Example offset, adjust according to your layout
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal[400]!, Colors.teal[600]!],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Animated Text Kit
                AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText(
                      'Farhan Momin',
                      textStyle: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      duration: Duration(seconds: 3),
                    ),
                    FadeAnimatedText(
                      'Flutter Developer',
                      textStyle: TextStyle(
                        fontSize: 24,
                        color: Colors.white70,
                      ),
                      duration: Duration(seconds: 3),
                    ),
                  ],
                  isRepeatingAnimation: true,
                ),
                SizedBox(height: 30),
                // Add animated icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeInLeft(
                      duration: Duration(seconds: 1),
                      child: Icon(
                        FontAwesomeIcons.code,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 20),
                    FadeInRight(
                      duration: Duration(seconds: 1),
                      child: Icon(
                        FontAwesomeIcons.laptopCode,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: _scrollToWork,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.teal,
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'View My Work',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Curved Navigation Bar
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.teal[600],
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: Center(
              child: Text(
                'Welcome to My Portfolio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
