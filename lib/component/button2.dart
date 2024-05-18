import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class Button2 extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const Button2({Key? key, required this.text, required this.onPressed})
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
              style: TextStyle(color: black, fontSize: 18),
            ),
          ),
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            side: BorderSide(color: Colors.transparent),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                )),
          )),
    );
  }
}
