import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  final List<int> person = <int>[12, 22, 83, 64, 45, 56, 967, 58, 459];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){} ,
          child: Icon(Icons.mail_outline_outlined),backgroundColor: Color(0xFF120760),),
        body:

        ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: const Text('Email  '),
                leading: const Icon(
                  Icons.person_rounded,
                  size: 30,
                ),
                trailing: const Icon(
                  Icons.keyboard_arrow_right ,
                  size: 50,
                ),
                subtitle:  Text('from person${person[index]}@gmail.com'),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
            const Divider(
              thickness: 3,
            ),
            itemCount: 9));
  }
}
