import 'package:flutter/material.dart';
import 'package:flutter_tasks/screens/5/ecom.dart';
import 'package:flutter_tasks/screens/PageViewpage.dart';
import 'package:flutter_tasks/screens/bottomnavigation.dart';
import 'package:flutter_tasks/screens/task%20one/4/stack1.dart';
import 'package:flutter_tasks/screens/task%20one/list_tile_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final gap = SizedBox(height: 20,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.home)
        ,),
      appBar: AppBar(
        title: const Center(child: Text('Flutter Tasks')),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.android_sharp))
        ],
      ),

      //body

      body: Center(
        child: SingleChildScrollView(
          child: Column(

            children: [
              Container(
                height: 100,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ListTilePage()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Task 1',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('List Tile',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                ),
              ),

gap,


              Container(
                height: 100,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  Pageview()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Task 2',
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Sliver ',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                ),
              ),
              gap,

              Container(
                height: 100,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  BottomNavPage()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Task 3',
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Bottom Navigation Page ',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                ),
              ),

              //stack
              gap,

              Container(
                height: 100,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  StackPageOne()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Task 4',
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Stack ',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                ),
              ),
              gap,

              Container(
                height: 100,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  CatalogPage()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Task 5',
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Catalog page ',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
