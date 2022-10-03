import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final List name = ['Anshif','Krishnadas','Vishnu','aby','zamil','Shan','Raniya','Anshid','aswathy'

  ];
  final List<int> phone = <int>[124564512, 2455445452, 4581214563, 41456445464, 45454545, 64556456546,
    9654564457, 5454564568, 44554645659];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){} ,
          child: Icon(Icons.person_add_alt),backgroundColor: Color(0xFF120760),),
        body:

        ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('${name[index]}  '),
                leading: const Icon(
                  Icons.person_rounded,
                  size: 30,
                ),
                trailing: const Icon(
                  Icons.call ,
                  size: 30,
                ),
                subtitle:  Text('${phone[index]}'),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
            const Divider(
              thickness: 3,
            ),
            itemCount: 9));
  }
}
