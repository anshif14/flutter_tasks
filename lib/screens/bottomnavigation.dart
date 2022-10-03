import 'package:flutter/material.dart';
import 'package:flutter_tasks/screens/PageViewpage.dart';
import 'package:flutter_tasks/screens/task%20one/list_tile_home.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {

  var selectedinddex =0;

  final _bottomPages =[
    ListTilePage(),
    Icon(Icons.add,size:100 ,color: Colors.white,),
    Icon(Icons.person,size:100 ,color: Colors.white,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
          currentIndex: selectedinddex,
          onTap: (index){
            setState(() {
              selectedinddex = index;
            });
          },
          items: [
        BottomNavigationBarItem(

          icon: Icon(Icons.home),label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline_outlined),label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),label: 'Profile',
        ),
      ]),
      appBar: AppBar(
        title: Text('Bottom Nav Demo'),backgroundColor: Colors.black54,
      ),
      body:

      Container(
        decoration: BoxDecoration(color: Colors.black54),
        child: Center(
          child:

              _bottomPages.elementAt(selectedinddex),

        ),
      ),
    );
  }
}
