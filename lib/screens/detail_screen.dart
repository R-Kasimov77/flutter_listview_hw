import 'package:flutter/material.dart';
import 'package:flutter_listview_hw/components/custom_service_container.dart';
import 'package:flutter_listview_hw/screens/menu_screen.dart';
import 'package:flutter_listview_hw/screens/phone_card_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuScreen()));
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.blue,
                        )),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "ТЕЛЕФОНЫ СЛУЖБ",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhoneCardScreen()));
                  },
                  child: CustomServiceContainer(title: "Медецина")),
              CustomServiceContainer(title: "Полиция"),
              CustomServiceContainer(title: "Посольство"),
              CustomServiceContainer(title: "Транспорт"),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Свои номера",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    )),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                height: 100,
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        if (index == 0)
                          SizedBox(
                            width: 12,
                          ),
                        if (index == 0)
                          Container(
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.red)),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 28,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          width: 170,
                          height: 76,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Image.asset("assets/images/hotel.png"),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Отель",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Text(
                                    "Невский",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
