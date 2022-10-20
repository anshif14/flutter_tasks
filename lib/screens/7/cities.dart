import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CitiesPage extends StatefulWidget {
  const CitiesPage({Key? key}) : super(key: key);

  @override
  State<CitiesPage> createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  final _cityname = ['Delhi', 'London', 'Tokyo', 'New York', 'paris'];
  final _cityCountry = ['india', 'UK', 'Japan', 'USA', 'France'];
  final _population = ['19','8','10','12','13'];
  final _cityimages = [
    'https://cdn.britannica.com/37/189837-050-F0AF383E/New-Delhi-India-War-Memorial-arch-Sir.jpg',
    'https://media.istockphoto.com/photos/aerial-view-of-london-and-the-tower-bridge-picture-id1265900812?k=20&m=1265900812&s=612x612&w=0&h=gDUeVw65Hd8w1Yk0pE9Fbj27vfO20CgSNI03mvx2UDM=',
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/4b/5d/10/caption.jpg?w=500&h=300&s=1&cx=1005&cy=690&chk=v1_2ed86f729380ea073850',
    'https://i.natgeofe.com/k/5b396b5e-59e7-43a6-9448-708125549aa1/new-york-statue-of-liberty_16x9.jpg',
    'https://images.adsttc.com/media/images/5d44/14fa/284d/d1fd/3a00/003d/large_jpg/eiffel-tower-in-paris-151-medium.jpg?1564742900'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cities Around World',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 170,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(_cityimages[index]),fit: BoxFit.cover
                      ),color: Colors.white
                      ),
                ),
                Container(

                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(
                      height: 100,
                      width: 150,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            _cityname[index],
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            _cityCountry[index],
                            style: GoogleFonts.poppins(
                              color: Colors.black38,
                              fontSize: 20,
                            ),
                            
                          ),
                          Row(
                            children: [
                              Text('Population : '),
                        Text(_population[index].toString()),
                    Text('  mil')
                            ],
                          )],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
