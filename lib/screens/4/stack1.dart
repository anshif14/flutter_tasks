import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackPageOne extends StatefulWidget {
  const StackPageOne({Key? key}) : super(key: key);

  @override
  State<StackPageOne> createState() => _StackPageOneState();
}

class _StackPageOneState extends State<StackPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 45.0),
          child: Text(
            'Stack Over Flow',
            style: GoogleFonts.poppins(color: Colors.white),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: Stack(
          children: [
            Positioned(
                top: 200,
                left: 30,
                child: Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 5,
                            spreadRadius: 5,
                            color: Colors.black54)
                      ]),
                )),
            Positioned(
              top: 250,
              left: 100,
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Peter Parker',
                      style: GoogleFonts.poppins(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'New York',
                      style: GoogleFonts.poppins(
                          color: Colors.lightBlueAccent, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text(
                                'Purchased',
                                style: GoogleFonts.poppins(color: Colors.black45),
                              ),
                              Text(
                                "12k",
                                style: GoogleFonts.poppins(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),

                        SizedBox(width: 20,),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                'Wished',
                                style: GoogleFonts.poppins(color: Colors.black45),
                              ),
                              Text(
                                "12k",
                                style: GoogleFonts.poppins(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),

                        Container(
                          child: Column(
                            children: [
                              Text(
                                'Liked',
                                style: GoogleFonts.poppins(color: Colors.black45),
                              ),
                              Text(
                                "12k",
                                style: GoogleFonts.poppins(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),


                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 160,
              left: 160,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: Colors.black54)
                    ]),
                child: Icon(
                  Icons.person,
                  size: 45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
