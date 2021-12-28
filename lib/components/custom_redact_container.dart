import 'package:flutter/material.dart';

class CustomRedactContainer extends StatelessWidget {
  final String title;
  const CustomRedactContainer({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 52,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Center(
              child: Text(
                title, 
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        SizedBox(height: 28,)
      ],
    );
  }
}
