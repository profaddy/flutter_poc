import 'package:flutter/material.dart';
import '../components/renderImage.dart';
import 'home..dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

enum FormType { login, register }

class HomePageState extends State<HomePage> {
  //vars
  int _selectedIndex = 0;
 List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text(
      'Index 1: Business',
      //  style: optionStyle,
    ),
    Text(
      'Index 2: School',
      //  style: optionStyle,
    ),
  ];
  //methods
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
        title: Text('HomePage', style: TextStyle(color: Colors.white)),
      ),
      body: new Container(
        margin: EdgeInsets.all(20.0),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        backgroundColor: Theme.of(context).accentColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.business),
          //   title: Text(''),
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    ));
  }

  Widget logo() {
    return RenderCircularAvatar(
        imageTag: "unlock", imagePath: "images/unlock_teal.png");
  }
}
