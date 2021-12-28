import 'package:flutter/material.dart';
import 'package:flutter_listview_hw/screens/menu_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell( onTap: (){Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MenuScreen()));},
        child: SafeArea(
          child: Center(child: Image.asset("assets/images/slider.png")),
        ),
      ),
    );
  }
}
