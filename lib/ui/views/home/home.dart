import 'package:flutter/material.dart';
import 'package:paymaya_clone/ui/shared/custom_icons.dart';

class Home extends StatefulWidget {
  final String title;
  Home({this.title, Key key}) : super(key: key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedBottomNav = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedBottomNav = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: 200,
              child: _header(),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Table(
                border: TableBorder.all(width: 1, color: Colors.grey[300]),
                children: [
                  TableRow(children: [
                    _btnFunction(CustomIcons.viewcard, 'View Card'),
                    _btnFunction(CustomIcons.scan, 'Scan'),
                    _btnFunction(CustomIcons.addmoney, 'Add Money'),
                  ])
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: ListView(
                  children: <Widget>[
                    _ads(),
                    _latestActivities(),
                    _listViewTile('PHP 53.09', "debit"),
                    _listViewTile('', "notification"),
                    _listViewTile('PHP 103.15', "credit"),
                    _listViewTile('PHP 933.03', "debit"),
                    _listViewTile('PHP 90.15', "credit"),
                    _listViewTile('PHP 120.15', "credit"),
                    _listViewTile('', "notification"),
                    _listViewTile('PHP 15.03', "debit"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _btnFunction(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Icon(
              icon,
              size: 25.0,
              color: Colors.grey[700],
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'PayMaya',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 25),
          Text(
            'Available Balance',
            style: TextStyle(color: Colors.white54, fontSize: 12),
          ),
          SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text('PHP',
                    style: TextStyle(color: Colors.white, fontSize: 22)),
              ),
              SizedBox(width: 8),
              Text('258.63',
                  style: TextStyle(color: Colors.white, fontSize: 50))
            ],
          ),
        ],
      ),
    );
  }

  Widget _latestActivities() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Latest Activities',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      decoration: TextDecoration.underline),
                )
              ]),
        ),
        Divider(height: 1)
      ],
    );
  }

  Widget _ads() {
    return Image.asset(
      "assets/images/ads1.png",
      fit: BoxFit.fill,
      width: double.infinity,
      height: 150.0,
    );
  }

  Widget _listViewTile(String amount, String status) {
    //status: credit,debit,notif

    TextStyle _txtTitle = TextStyle(color: Colors.black45, fontSize: 15.0);
    TextStyle _txtDesc = TextStyle(color: Colors.black54, fontSize: 16.0);
    TextStyle _txtCredit = TextStyle(color: Colors.green, fontSize: 16.0);
    TextStyle _txtDebit = TextStyle(color: Colors.red, fontSize: 16.0);

    Widget textStatus;

    switch (status) {
      case 'credit':
        {
          textStatus = Text(amount, style: _txtCredit);
        }
        break;
      case 'debit':
        {
          textStatus = Text(amount, style: _txtDebit);
        }
        break;
      default:
        {
          textStatus = Text('');
        }
        break;
    }

    return Column(
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Purchase From', style: _txtTitle),
                    SizedBox(height: 5),
                    Text('Paymaya Shop', style: _txtDesc)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('11 May 2019', style: _txtTitle),
                    SizedBox(height: 5),
                    textStatus
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(height: 1)
      ],
    );
  }
}
