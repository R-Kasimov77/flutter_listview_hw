import 'package:flutter/material.dart';
import 'package:flutter_listview_hw/components/custom_menu.dart';
import 'package:flutter_listview_hw/screens/detail_screen.dart';
import 'package:flutter_listview_hw/service/Services.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var serviceList = Services.phoneServices;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 24,),
            ListView.builder(
              shrinkWrap: true,
              itemCount: serviceList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(onTap: (){if(index==0){
                      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => DetailScreen()));
                    }},
                      child: CustomMenu(
                          image: serviceList[index].image,
                          question: serviceList[index].question,
                          text: serviceList[index].text,),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
