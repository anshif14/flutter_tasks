import 'package:flutter/material.dart';

class StackPageOne extends StatefulWidget {
  const StackPageOne({Key? key}) : super(key: key);

  @override
  State<StackPageOne> createState() => _StackPageOneState();
}

class _StackPageOneState extends State<StackPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Positioned(
              top: 200,
              

              child: Container( height: 350,
                width: double.infinity,

                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,boxShadow: [BoxShadow(offset: Offset(2.0, 2.0),
                color: Colors.grey,blurRadius: 10,spreadRadius: 10),]
                ) ,
              ),
            ),
            Positioned(
                top: 160,
                left: 140,
                child:
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white,boxShadow: [BoxShadow(offset: Offset(2.0, 2.0),
                  color: Colors.grey,blurRadius: 10,spreadRadius: 10),]
              ),
              child: Icon(Icons.person),
            ),
            ),
             Positioned( top: 300,
                left: 135,
                child: Text('Anshif',style: TextStyle(fontFamily: 'times new roman',fontSize: 30),))
            ,
            Positioned( top: 350,left: 40,
                child:Container(
                  height: 5,
                  width: 300,
                  color: Colors.black,
                )),
             // Positioned( top: 370,
             //    left: 125,
             //    child: Text('Albany,Newyork',style: TextStyle(fontFamily: 'times new roman',
             //        fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blueAccent),)),
             // Positioned( top: 400,
             //    left: 15,
             //    child: Row(
             //      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             //      children: [
             //        Text('Purchased',
             //          style: TextStyle(fontFamily: 'times new roman'
             //              ,fontSize: 20
             //              ,color: Colors.black45),),
             //        Text('Wished',
             //          style: TextStyle(fontFamily: 'times new roman'
             //              ,fontSize: 20
             //              ,color: Colors.black45),),
             //        Text('Likes',
             //          style: TextStyle(fontFamily: 'times new roman'
             //              ,fontSize: 20
             //              ,color: Colors.black45),),
             //
             //      ],
             //    )),


          ],
        ),
      ),
    );
  }
}
