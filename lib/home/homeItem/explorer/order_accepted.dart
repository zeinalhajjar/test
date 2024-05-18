import 'package:admin/component/colors.dart';
import 'package:flutter/material.dart';

import '../../../component/button.dart';
import '../../../component/button2.dart';

class OrderAccepted extends StatefulWidget {
  const OrderAccepted({super.key});

  @override
  State<OrderAccepted> createState() => _OrderAcceptedState();
}

class _OrderAcceptedState extends State<OrderAccepted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Group 6872.png',
              ),
              const SizedBox(
                height: 60,
              ),
               Text("Your Order has been\n accepted",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, color: black)),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40),
                child: Text("Your items has been placcd and is on it’s way to being processed",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(.4))),
              ),

              const SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16),
                child: Center(
                    child: Button(
                      text: 'Track Order',
                      onPressed: () {

                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => const OrderAccepted()));
                      },
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16),
                child: Center(
                    child: Button2(
                      text: 'back to home',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const OrderAccepted()));
                      },
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
