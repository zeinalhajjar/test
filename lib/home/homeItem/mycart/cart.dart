import 'package:flutter/material.dart';
import '../../../component/addbutton2.dart';
import '../../../component/button.dart';
import '../../../component/colors.dart';
import '../../../component/deleteButton.dart';

class Cart extends StatefulWidget {
  Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
final sheet = GlobalKey();
final controller = DraggableScrollableController();

class _CartState extends State<Cart> {
  @override
  void initState() {
    super.initState();
  }

  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: white,
        title: Center(
          child: Text(
            "My Cart",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Gilroy-Bold",
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: black),
          ),
        ),
      ),
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildListView(context),
      ),
    );
  }

  Column _buildListView(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemBuilder: (_, index) {
              return SizedBox(
                height: 140,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/img_13.png",
                      width: 70,
                      height: 64,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bell Pepper Red",
                                style: TextStyle(
                                    fontFamily: "Gilroy-Bold", fontSize: 18),
                              ),
                              Text(
                                "1kg, Price",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: "Gilroy-Medium",
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
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
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DeleteButton(
                              onPressed: () {
                                setState(() {
                                  count--;
                                  if (count > 0) {
                                    count--;
                                  } else {
                                    count = 0;
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text("$count",
                                style: TextStyle(
                                    fontFamily: "Gilroy",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: black)),
                            const SizedBox(
                              width: 8,
                            ),
                            AddButton2(
                              onPressed: () {
                                setState(() {
                                  count++;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 120,
                            ),
                            Text(
                              "4.99",
                              style: TextStyle(
                                  fontFamily: "Gilroy",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: black),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            },
            itemCount: 4,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          ),
        ),
        Center(
            child: Button(
          text: 'Go to Checkout',
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

        )),
      ],
    );
  }
}
