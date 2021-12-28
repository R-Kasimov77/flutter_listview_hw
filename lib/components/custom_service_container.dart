import 'package:flutter/material.dart';

class CustomServiceContainer extends StatelessWidget {
  final String title;
  const CustomServiceContainer({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(left: 12),
            height: 76,
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        width: 250,
                        height: 76,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/images/vector.png"),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Единый телефон",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  "служб",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 22,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      )
                    ],
                  );
                })),
                SizedBox(height: 12,)
      ],
    );
  }
}
