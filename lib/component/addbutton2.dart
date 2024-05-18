import 'package:flutter/material.dart';
import 'colors.dart';

class AddButton2 extends StatelessWidget {

  final Function() onPressed;
  const AddButton2({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        width: 35,
        decoration:BoxDecoration(borderRadius:BorderRadius.circular(14),   border: Border.all(
          color: grey,
        ),color: white,) ,

        child: IconButton(
          iconSize: 20,
          onPressed: onPressed,
          icon:Icon(Icons.add,color: green) ,

        )
    );

  }
}
