import 'package:flutter/material.dart';
import 'package:flutter_listview_hw/components/custom_card.dart';
import 'package:flutter_listview_hw/screens/detail_screen.dart';
import 'package:flutter_listview_hw/screens/redact_screen.dart';

class PhoneCardScreen extends StatelessWidget {
  const PhoneCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen()));
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      "Карточка телефона",
                      style: TextStyle(fontSize: 14),
                    ),
                    Image.asset("assets/images/icon-heart.png")
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Скорая помощь",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "112",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RedactScreen()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xffF1564A)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "позвонить",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et sed tempor, at magna purus quam sit id. Ut id aliquam molestie tortor, amet, suspendisse mi. Dictum viverra accumsan a proin amet. Amet, velit consequat enim urna, pellentesque in cursus auctor. Erat a, sapien, nisl id et. Egestas rhoncus, commodo convallis mauris. "),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Причины вызова",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      CustomCard(title: "Причина 1"),
                      CustomCard(title: "Причина 1"),
                      CustomCard(title: "Причина 1")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
