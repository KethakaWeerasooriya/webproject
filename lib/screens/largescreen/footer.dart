import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Make the footer full width
      padding: EdgeInsets.all(20),
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Location: ABC Street, City\nPhone: +01 1234567890\nEmail: demo@gmail.com',
              style: TextStyle(color: Colors.white70),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text('© 2024 All Rights Reserved.', style: TextStyle(color: Colors.white38)),
          ],
        ),
      ),
    );
  }
}
