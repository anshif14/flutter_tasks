import 'package:flutter/material.dart';

class StackFullPage extends StatefulWidget {
  const StackFullPage({Key? key}) : super(key: key);

  @override
  State<StackFullPage> createState() => _StackFullPageState();
}

class _StackFullPageState extends State<StackFullPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Stack'),
      ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             child: Stack(
               children: [
                 Positioned(
                   child: Container(
                     height: 150,
                     width: 150,
                     color:Colors.red ,
                   ),

                 ),
                 Positioned(
                   top: 15,
                   left: 15,
                   child: Container(
                     height: 120,
                     width: 120,
                     color:Colors.orange,
                   ),

                 ),
                 Positioned(
                   top: 25,
                   left: 25,
                   child: Container(
                     height: 100,
                     width: 100,
                     color:Colors.amber,
                   ),

                 ),         Positioned(
                   top: 30,
                   left: 30,
                   child: Container(
                     height: 90,
                     width: 90,
                     color:Colors.green,
                   ),


                 ),
                 Positioned(
                   top: 40,
                   left: 40,
                   child: Container(
                     height: 70,
                     width: 70,
                     color:Colors.blue,
                   ),

                 ),
                Positioned(
                   top: 50,
                   left: 50,
                   child: Container(
                     height: 50,
                     width: 50,
                      color:Colors.indigo,
                   ),

                 ),
                 Positioned(
                   top: 57,
                   left:57,
                   child: Container(
                     height: 35,
                     width:35,
                     color:Colors.purple,
                   ),

                 ),
               ],
             ),
           ),
           Divider(thickness: 5,color: Colors.red,),
           Container(
             height: 300,
             color: Colors.indigo,
             width: double.infinity,
             child: Column( mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Stack(
                   children: [
                     Positioned(
                                         child: Container(
                       height: double.infinity,
                       width: double.infinity,
                     )),



                     Positioned(


                         child: Container(
                           height: 200 ,
                           width: 200,
                           decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(150)),
                         )),
                     Positioned(
                         top: 1,
                         left: 100,

                         child: Container(
                           height: 50 ,
                           width: 50,
                           decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(150)),
                         )),

                   ],
                 ),
               ],
             ),
           )
         ],
       ),
    );
  }
}
