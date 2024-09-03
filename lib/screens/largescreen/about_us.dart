import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:web_app/constants/colors.dart';


class AboutUsSection extends StatelessWidget {
  final Size size;

  const AboutUsSection({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.ebony,
      padding: EdgeInsets.symmetric(vertical: size.width * 0.05, horizontal: size.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GradientText(
            "About Us",
            colors: [
              const Color.fromARGB(255, 63, 86, 189),
              AppColors.paleSlate,
            ],
            style: TextStyle(
              fontSize: size.width * 0.040,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          Text(
            "Welcome to GamePulse, your ultimate destination for all things gaming!",
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.020,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            "At GamePulse, we're passionate about delivering top-quality gaming equipment and experiences to players of all levels. Founded in 2020 by a team of avid gamers, we've quickly grown to become a leading name in the gaming industry.",
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.015,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            "Our mission is to empower gamers with the best tools and resources to elevate their gaming experience. Whether you're a casual player or a professional esports athlete, we have everything you need to take your game to the next level.",
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.015,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            "What sets us apart:",
            style: TextStyle(
              color: AppColors.paleSlate,
              fontSize: size.width * 0.018,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: size.height * 0.01),
          _buildBulletPoint("Curated selection of premium gaming gear"),
          _buildBulletPoint("Expert advice from our team of gaming enthusiasts"),
          _buildBulletPoint("Competitive prices and regular promotions"),
          _buildBulletPoint("Excellent customer service and support"),
          SizedBox(height: size.height * 0.02),
          Text(
            "Join the GamePulse community today and experience the pulse of gaming like never before!",
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.015,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(color: AppColors.paleSlate, fontSize: size.width * 0.015)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: size.width * 0.015, fontFamily: 'Poppins'),
            ),
          ),
        ],
      ),
    );
  }
}
