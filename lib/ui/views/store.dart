import 'package:flutter/material.dart';
import '../shared/CustomIcons.dart';

class Store extends StatefulWidget {
  Store({Key key}) : super(key: key);
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  int selectedBottomNav = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedBottomNav = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Fancy Dress'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.playlist_play),
            tooltip: 'Air it',
          ),
          IconButton(
            icon: Icon(Icons.playlist_add),
            tooltip: 'Restitch it',
          ),
          IconButton(
            icon: Icon(Icons.playlist_add_check),
            tooltip: 'Repair it',
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
