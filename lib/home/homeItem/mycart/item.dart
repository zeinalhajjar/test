import 'package:admin/component/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 130,
        child: Row(
          children: [
            Image.asset(
              "assets/images/img_13.png",
              width: 70,
              height: 64,
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                Row(children: [

                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bell Pepper Red",
                        style: TextStyle(fontFamily: "Gilroy-Bold", fontSize: 18),
                      ),
                      Text(
                        "1kg, Price",
                        textAlign: TextAlign.start,
                        style:
                        TextStyle(fontFamily: "Gilroy-Medium", fontSize: 14, color: Colors.grey,),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      color: black2,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ]),
                Row(
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
