import 'package:flutter/material.dart';
import 'package:flutter_listview_hw/components/custom_redact.dart';
import 'package:flutter_listview_hw/components/custom_redact_container.dart';
import 'package:flutter_listview_hw/screens/phone_card_screen.dart';

class RedactScreen extends StatelessWidget {
  const RedactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 34,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PhoneCardScreen()));
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      "Редактировать",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                CustomRedact(name: "Название", title: "Водитель такси"),
                CustomRedact(name: "Телефон", title: "8-911-111-22-33"),
                CustomRedact(
                    name: "Описание", title: "Водитель Владимир; четные даты"),
                SizedBox(
                  height: 20,
                ),
                CustomRedactContainer(title: "Добавить"),
                CustomRedactContainer(title: "Удалить")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
