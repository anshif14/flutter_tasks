import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<int> person = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Person ${person[index]} '),
                leading: const Icon(
                  Icons.person_rounded,
                  size: 30,
                ),
                trailing: const Icon(
                  Icons.chat,
                  size: 25,
                ),
                subtitle: const Text('hello'),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  thickness: 3,
                ),
            itemCount: 9));
  }
}
