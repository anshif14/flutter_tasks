import 'package:flutter/material.dart';
import 'package:flutter_tasks/screens/task%20one/list_tile_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Flutter Tasks')),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.android_sharp))
        ],
      ),

      //body

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
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
            )
          ],
        ),
      ),
    );
  }
}
