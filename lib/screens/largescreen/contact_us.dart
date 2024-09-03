import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_app/screens/largescreen/contact_form.dart';



class ContactUsSection extends StatelessWidget {
  final Size size;

  const ContactUsSection({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // You can set a background color if needed
      padding: EdgeInsets.symmetric(vertical: size.height * 0.05, horizontal: size.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Us',
            style: TextStyle(
              fontSize: size.width * 0.040,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          ContactForm(), // Replacing the static contact us section with the form
        ],
      ),
    );
  }
}
