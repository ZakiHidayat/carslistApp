import 'package:carslist/model/cars_data.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  late final CarsData carsdetail;

  DetailScreen({required this.carsdetail});

  var fontPoppins = const TextStyle(fontFamily: 'poppins');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blueGrey,
      //   title: Text(
      //     'Detail CarsList',
      //     style: TextStyle(
      //       fontFamily: 'poppins',
      //       fontWeight: FontWeight.normal,
      //     ),
      //   ),
      // ),
      backgroundColor: Colors.black38,
      //safeArea = mengikuti besaran statusbar
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Back to list',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: (FontWeight.normal),
                      fontSize: 17,
                      color: Colors.white),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  carsdetail.imageAsset,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 13, bottom: 13),
              child: Text(
                carsdetail.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
            Container(
              // decoration: BoxDecoration(boxShadow: [
              //   BoxShadow(
              //     offset: Offset(0,10,),
              //     blurRadius: 15,
              //     color: Colors.white.withOpacity(0.10),
              //   ),
              // ]),
              margin: EdgeInsets.all(18),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.calendar_today_rounded,
                            color: Colors.black,
                          ),
                          SizedBox(height: 10),
                          Text(carsdetail.release,
                              style: TextStyle(
                                  fontFamily: 'poppins', color: Colors.black)),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.star_rate_rounded, color: Colors.black),
                        SizedBox(height: 10),
                        Text(carsdetail.star,
                            style: TextStyle(
                                fontFamily: 'poppins', color: Colors.black))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.monetization_on_rounded,
                            color: Colors.black),
                        SizedBox(height: 10),
                        Text(carsdetail.price,
                            style: TextStyle(
                                fontFamily: 'poppins', color: Colors.black))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.precision_manufacturing_rounded,
                            color: Colors.black),
                        SizedBox(height: 10),
                        Text(carsdetail.madeby,
                            style: TextStyle(
                                fontFamily: 'poppins', color: Colors.black))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                'Overview',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 12),
                height: 150,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: carsdetail.imageUrls.map((urlgambar) {
                      return Padding(
                        padding: EdgeInsets.all(6),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(urlgambar),
                        ),
                      );
                    }).toList())),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                'Deskripsi',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                carsdetail.desc,
                textAlign: TextAlign.start,
                style: TextStyle(fontFamily: 'poppins',color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                'Spesifikasi',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16, bottom: 30, left: 16, right: 16),
              child: Text(
                carsdetail.spec,
                textAlign: TextAlign.start,
                style: TextStyle(fontFamily: 'poppins',color: Colors.white),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
