import 'package:flutter/material.dart';
import 'colors.dart';

class AddButton extends StatelessWidget {

  final Function() onPressed;
  const AddButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration:BoxDecoration(borderRadius:BorderRadius.circular(14), color: green,) ,

      child: IconButton(
        iconSize: 20,
          onPressed: onPressed,
          icon:Icon(Icons.add,color: white) ,

      )
    );

  }
}
