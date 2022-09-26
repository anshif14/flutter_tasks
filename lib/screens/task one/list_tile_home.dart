import 'package:flutter/material.dart';
import 'package:flutter_tasks/screens/homepage.dart';
import 'package:flutter_tasks/screens/task%20one/Chat%20page.dart';
import 'package:flutter_tasks/screens/task%20one/contact_page.dart';
import 'package:flutter_tasks/screens/task%20one/email_page.dart';

class ListTilePage extends StatefulWidget {
  const ListTilePage({Key? key}) : super(key: key);

  @override
  State<ListTilePage> createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ListTile',
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.black, Color(0xFF120760)]),
            ),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(

                icon: Icon(Icons.message_outlined),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(Icons.mail_outline_outlined),
                text: 'E mail',
              ),
              Tab(icon: Icon(Icons.contact_mail_outlined),
                  text: 'Contacts'),
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: (){Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=>const HomePage()));},
                    child: const ListTile(
                      leading: Text('Home'),
                      trailing: Icon(Icons.home),
                    ),
                  ),
        GestureDetector(
          onTap: (){Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>const ChatPage()));},
                 child:
                 const ListTile(

                    leading: Text('Chat'),
                    trailing: Icon(Icons.home),
                  ),
        ),
        GestureDetector(
          onTap: (){Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>const EmailPage()));},
          child:
                  const ListTile(
                    leading: Text('Mail'),
                    trailing: Icon(Icons.home),
                  ),
        ),
        GestureDetector(
          onTap: (){Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>const ContactPage()));},
          child:

                  const ListTile(
                    leading: Text('Contact'),
                    trailing: Icon(Icons.home),
                  ),
        )

                ],
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatPage(),
            EmailPage(),
            ContactPage(),
          ],
        ),
      ),
    );
  }
}
