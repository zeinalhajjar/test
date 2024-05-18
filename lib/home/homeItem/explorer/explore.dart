import 'package:admin/component/colors.dart';
import 'package:flutter/material.dart';

import 'beverages.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: white,
            title: Center(
              child: Text(
                "Find Products",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: black),
              ),
            )),
        backgroundColor: white,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Beverages()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: green2,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: green,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/img_1.png",
                            scale: 1.5,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Fresh Fruits \n & Vegetable",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16)),
                        ]),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Beverages()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: yellow2,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: yellow,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/img_2.png",
                            scale: 2,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Cooking Oil \n& Ghee",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16)),
                        ]),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Beverages()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: orange2,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: orange,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/img_3.png",
                            scale: 1.5,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Meat & Fish",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16)),
                        ]),
                  ),
                ),
              ),
              InkWell(
                onTap:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Beverages()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: purple2,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: purple,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/img_4.png",
                            scale: 1.5,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Bakery & Snacks",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16)),
                        ]),
                  ),
                ),
              ),

              InkWell(
                onTap:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Beverages()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: lemon2,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: lemon,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/img_5.png",
                            scale: 1.5,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Dairy & Eggs",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16)),
                        ]),
                  ),
                ),
              ),
              InkWell(
                onTap:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Beverages()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: blue2,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: blue,
                      )),
child: Padding(
  padding: const EdgeInsets.all(12.0),
  child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/img_6.png",
          scale: 1.5,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("Beverages",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16)),
      ]),
),
                ),
              ),
              InkWell(
                onTap:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Beverages()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: navy2,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: navy,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/img_1.png",
                            scale: 1.5,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("Frash Fruits \n & Vegetable",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16)),
                        ]),
                  ),
                ),
              ),
              InkWell(
                onTap:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Beverages()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: pink2,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: pink,
                      )),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/img_1.png",
                          scale: 1.5,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Fresh Fruits\n& Vegetable",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16)),
                      ]),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
