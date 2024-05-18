import 'package:admin/component/colors.dart';
import 'package:flutter/material.dart';
import '../../../main.dart';
import '../home/navigationbar.dart';
import 'onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigatetohome();
  }

  navigatetohome() async {
    await Future.delayed(
      const Duration(seconds: 6),
          () {},
    );
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => show ? const OnBoarding() :  NavigationBars(),
        ));
  }

  //


  @override
  Widget build(BuildContext context) {
    var deviceInfo = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/image_2024-05-16_21-35-18.png',
               height:68.61 , width: 267.42 ,
             ),


            // style: Theme.of(context).,

            //  fontSize: 25,
            //fontWeight: FontWeight.w400,
          ],
        ),
      ),
    );
  }
}
