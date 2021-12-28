import 'package:flutter/material.dart';

class CustomRedact extends StatelessWidget {
  final String name;
  final String title;
  const CustomRedact({Key? key, required this.name, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            name,
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: TextField(
              decoration: InputDecoration(hintText: title,errorBorder: OutlineInputBorder())),
        ),
      ],
    );
  }
}
