import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_app/screens/largescreen/contact-form-model.dart';



class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact Us', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(labelText: 'Your Name'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Your Email'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Provider.of<ContactFormModel>(context, listen: false).toggleFormVisibility();
            },
            child: Text('Submit'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
          ),
        ],
      ),
    );
  }
}
