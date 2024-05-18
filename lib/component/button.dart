import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class Button extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const Button({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return SizedBox(
      height: 56,
      width: width,
      child: OutlinedButton(
          onPressed: onPressed,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              text,
              style: TextStyle(color: white, fontSize: 18),
            ),
          ),
          style: OutlinedButton.styleFrom(
            backgroundColor: green,
            side: BorderSide(color: green),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                )),
          )),
    );
  }
}
