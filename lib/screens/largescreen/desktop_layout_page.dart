import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_app/constants/styles.dart';
import 'package:web_app/screens/largescreen/about_us.dart';
import 'package:web_app/screens/largescreen/contact_us.dart';
import 'package:web_app/screens/largescreen/footer.dart';
import 'package:web_app/screens/widgets/header_text_widget.dart';
import 'package:web_app/screens/widgets/rotating_image_widget.dart';


class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(double position) {
    _scrollController.animateTo(
      position,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              // Navigation Bar
              _buildNavBar(size),
              // Main Content
              _buildMainContent(size),
              // About Us Section
              AboutUsSection(size: size),
              // Contact Us Section
              ContactUsSection(size: size),
              // Footer
              Footer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavBar(Size size) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.005, horizontal: size.width * 0.05),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left Side: Logo
          Row(
            children: [
              Icon(Icons.sports_cricket, color: Colors.white),
              SizedBox(width: 4),
              Text(
                'GamePulse',
                style: TextStyle(
                  fontSize: size.width * 0.020,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          // Right Side: Navigation Buttons
          Row(
            children: [
              TextButton(
                onPressed: () {
                  _scrollToSection(600); // Scroll to About Us Section
                },
                child: Text(
                  'About Us',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(width: size.width * 0.02),
              TextButton(
                onPressed: () {
                  _scrollToSection(1200); // Scroll to Contact Us Section
                },
                child: Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent(Size size) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.18, horizontal: size.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderTextWidget(size: size),
                SizedBox(height: 20),
                // Social_large widget integration here if applicable
              ],
            ),
          ),
          RotatingImageContainer(),
        ],
      ),
    );
  }
}
