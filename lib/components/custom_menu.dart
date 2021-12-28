import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {
  final String image;
  final String question;
  final String text;

  const CustomMenu({
    Key? key,
    required this.image,
    required this.question,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(image),
                  SizedBox(width: 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        question,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        text,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(
                    Icons.menu_sharp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 22,
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 18,
        )
      ],
    );
  }
}
