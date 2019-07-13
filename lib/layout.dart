import 'package:flutter/material.dart';
import 'package:paymaya_clone/ui/shared/custom_icons.dart';

import 'package:paymaya_clone/ui/views/home/home.dart';
import 'package:paymaya_clone/ui/views/pay_bills/pay_bills.dart';

import 'package:paymaya_clone/ui/views/send_money/send_money.dart';
import 'package:paymaya_clone/ui/views/shop/shop.dart';
import 'package:paymaya_clone/ui/views/more/more.dart';

class Layout extends StatefulWidget {
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int selectedBottomNav = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedBottomNav = index;
    });
  }

  List<Widget> _pages = [Home(), SendMoney(), PayBills(), Shop(), More()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // change the container to pages
      body: _pages[selectedBottomNav],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedBottomNav,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.money),
            title: Text('Send'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.shop),
            title: Text('Store'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.cart),
            title: Text('Shop'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.more),
            title: Text('More'),
          ),
        ],
      ),
    );
  }
}
