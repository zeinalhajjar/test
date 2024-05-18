import 'package:admin/component/colors.dart';
import 'package:flutter/material.dart';
import 'homeItem/Account.dart';
import 'homeItem/mycart/cart.dart';
import 'homeItem/explorer/explore.dart';
import 'homeItem/favourite.dart';
import 'homeItem/shop.dart';

class NavigationBars extends StatefulWidget {
  const NavigationBars({super.key});

  @override
  State<NavigationBars> createState() => _State();
}

class _State extends State<NavigationBars> {
  int _currentIndex = 0;
  final screens = [
    const Center(child: Shop()),
    const Center(child: Explore()),
     Center(child: Cart()),
    const Center(child: Favourite()),
    const Center(child: Account()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 15,
          unselectedFontSize: 12,
          backgroundColor: white,
          elevation: 3,
          selectedItemColor: green,
          currentIndex: _currentIndex,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.storefront_outlined,
              ),
              label: 'Shop',
              backgroundColor: green,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.manage_search_outlined,
              ),
              label: 'Search',
              backgroundColor: green,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.shopping_cart_outlined,
              ),
              label: 'Cart',
              backgroundColor: green,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.favorite_border,
              ),
              label: 'Favourite',
              backgroundColor: green,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.person_2_outlined,
              ),
              label: 'Account',
              backgroundColor: green,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
