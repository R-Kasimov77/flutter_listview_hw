import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  const CustomCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 32,)
      ],
    );
  }
}
