import 'package:flutter_listview_hw/service/phone_service.dart';

class Services {
  static List<PhoneService> phoneServices = [
    PhoneService(
        image: "assets/images/icon.png",
        question: "Попали в трудную ситуацию?",
        text: "Телефон cлужб"),
    PhoneService(
        image: "assets/images/icon_two.png",
        question: "Тематический провести день?",
        text: "Маршруты прогулок"),
    PhoneService(
        image: "assets/images/women.png",
        question: "Легко общаться с жителями?",
        text: "Выучите язык"),
    PhoneService(
        image: "assets/images/plane.png",
        question: "Хотите больше увидеть в Россие?",
        text: "Поездка по городам"),
    PhoneService(
        image: "assets/images/photo.png",
        question: "Нравится духовно развитваться?",
        text: "музеи гшорода"),
  ];
}
