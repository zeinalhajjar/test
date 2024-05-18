import 'package:admin/component/colors.dart';
import 'package:flutter/material.dart';
import '../../../component/addButton.dart';
import '../../navigationbar.dart';

class Beverages extends StatefulWidget {
  const Beverages({super.key});

  @override
  State<Beverages> createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                left: 28.0, right: 28, top: 10, bottom: 10),
            child: AddButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      decoration:  const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      height: 600,
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text('Modal BottomSheet'),

                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
        elevation: 0,
        backgroundColor: white,
        title: Center(
          child: Text(
            "Beverage",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: black),
          ),
        ),
      ),
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.75,
          ),
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: grey,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Center(
                    child: Image.asset(
                      "assets/images/img_7.png",
                      height: 89,
                      width: 44,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Diet Coke",
                          style: TextStyle(fontSize: 16)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("355ml,\nPrice",
                          style: TextStyle(fontSize: 14, color: black2)),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        " 1.99 ",textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 40),
                      AddButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NavigationBars()));
                        },
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: grey,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Center(
                    child: Image.asset(
                      "assets/images/img_8.png",
                      width: 51,
                      height: 91,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Sprite Can",
                          style: TextStyle(fontSize: 16)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("355ml,\nPrice",
                          style: TextStyle(fontSize: 14, color: black2)),

                    ],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        " 1.50 ",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      AddButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NavigationBars()));
                        },
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: grey,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Image.asset(
                    "assets/images/img_9.png",
                    width: 93,
                    height: 93,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Apple & Grape",
                          style: TextStyle(fontSize: 16)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("2L,\nPrice",
                          style: TextStyle(fontSize: 14, color: black2)),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        " 5.99 ",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      AddButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NavigationBars()));
                        },
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: grey,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Image.asset(
                    "assets/images/img_12.png",
                    height: 93,
                    width: 93,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Orenge Juice",
                          style: TextStyle(fontSize: 16)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("2L,\nPrice",
                          style: TextStyle(fontSize: 14, color: black2)),

                    ],
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        " 8.99 ",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      AddButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NavigationBars()));
                        },
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: grey,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Image.asset(
                    "assets/images/img_10.png",
                    width: 48,
                    height: 90,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Coca Cola Can",
                          style: TextStyle(fontSize: 16)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("325ml,\nPrice",
                          style: TextStyle(fontSize: 14, color: black2)),
                      const SizedBox(
                        height: 5,
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        " 4.99 ",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      AddButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NavigationBars()));
                        },
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: grey,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Image.asset(
                    "assets/images/img_11.png",
                    width: 49,
                    height: 94,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Pepsi Can ",
                          style: TextStyle(fontSize: 16)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("330ml,\nPrice",
                          style: TextStyle(fontSize: 14, color: black2)),
                      const SizedBox(
                        height: 5,
                      ),

                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "4.99 ",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 45,
                      ),
                      AddButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NavigationBars()));
                        },
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
