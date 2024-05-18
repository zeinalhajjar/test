import 'package:flutter/material.dart';
import '../component/button.dart';
import '../component/colors.dart';
import '../home/navigationbar.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/getStart.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/img.png',
                scale: 2,
              ),
              const SizedBox(
                height: 6,
              ),
              Center(
                child: Text(
                  " Welcome \n to our store",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 48,
                    color: white,
                  ),
                ),
              ),

              Center(
                  child: Text(
                "Ger your groceries in as fast as one hour",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  color: Colors.white.withOpacity(.6),
                ),
              )),
              const SizedBox(
                height :20,
              ),



              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                    child: Button(
                      text: 'Get Started',
                      onPressed: () {

                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) =>  const NavigationBars()));
                      },
                    )),
              ),
              const SizedBox(height: 55,),
            ],
          ),
        )
      ],
    ));
  }
}
