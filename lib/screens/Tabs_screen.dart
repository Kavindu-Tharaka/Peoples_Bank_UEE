import 'package:flutter/material.dart';
import './Favourites_screen.dart';
import './Transfer_screen.dart';
import './Settings_screen.dart';
import './Bills_screen.dart';
import '../widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    BillsScreen(),
    TransferScreen(),
    FavouriteScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets\\images\\peoples-bank.png',
                  fit: BoxFit.cover,
                  height: 30,
                  width: 100,
                )
              ],
            ),
            elevation: 0,
            actions: [
              Container(
                margin: EdgeInsets.only(right: 15),
                child: Row(
                  children: [
                    Icon(Icons.notifications_none),
                    SizedBox(width: 10,),
                    Icon(Icons.access_time),
                  ],
                ),
              )
            ]),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        drawer: MainDrawer(),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Color(0xFF212121),),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.send),
                title: Text('Transfers'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border,),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Favourite' ),
              ),
             
            ],
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xFFfbb418),
            
            backgroundColor: Color(0xFF212121),
            unselectedItemColor: Colors.white,
            onTap: _onItemTapped,
          ),
        ));
  }
}
