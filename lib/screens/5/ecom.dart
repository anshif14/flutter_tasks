import 'package:flutter/material.dart';
import 'package:flutter_tasks/screens/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  final images = [
    'https://m.media-amazon.com/images/I/71PvHfU+pwL._SL1500_.jpg',
    'https://9to5google.com/wp-content/uploads/sites/4/2022/09/pixel-7-snow-color-a.jpeg?quality=82&strip=all&w=970'
,'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/watch-compare-se-202209_GEO_IN_FMT_WHH?wid=308&hei=364&fmt=jpeg&qlt=90&.v=1661557187191'
 , 'https://img5.gadgetsnow.com/gd/images/products/additional/original/G390852_View_1/mobiles/smartphones/apple-iphone-14-pro-max-128-gb-deep-purple-6-gb-ram-.jpg'
  ];
  final name = [
    'S22 ultra',
    'pixel 7 pro',
    'Apple watch series 7'
   ,'iphone 14 pro Max'
  ];
  final price = [
    '1,40,000',
    '70,000',
    '50,000',
    '1,40,000'
  ];

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        floatingActionButton:
        FloatingActionButton(
          child: Icon(Icons.home),
            onPressed: (){Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=>HomePage()));}),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Catalog App',
                  style: GoogleFonts.poppins(
                      fontSize: 40, color: Colors.blueAccent),
                ),
                Text(
                  'Trending products',
                  style:
                      GoogleFonts.poppins(fontSize: 20, color: Colors.black54),
                ),
                Container(
                  width: double.infinity,
                  height: 600,
                  color: Colors.white,
                  child:

                  ListView.builder(
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return

                          Card(
                          elevation: 20,
                          child: Container(
                            width: double.infinity,
                            height: 150,
                            child: Row(
                              children: [
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: NetworkImage(images[index]
                                             ),
                                          fit: BoxFit.contain)),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      name[index],
                                      style: GoogleFonts.poppins(fontSize: 18),
                                    ),
                                    Text(
                                      'Iphone 14th Gen ',
                                      style: GoogleFonts.poppins(
                                          color: Colors.black38),
                                    ),
                                    Container(
                                      width: 250,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            price[index],
                                            style: GoogleFonts.poppins(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Text('Buy Now'))
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
