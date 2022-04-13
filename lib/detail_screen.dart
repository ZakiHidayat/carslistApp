import 'package:carslist/main_screen.dart';
import 'package:carslist/model/cars_data.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final CarsData cars;

  DetailScreen({required this.cars});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints contsraint) {
            if (contsraint.maxWidth > 800) {
              return DetailWeb(carsdetailweb: cars);
            } else {
              return DetailMobile(carsdetail: cars);
            }
          }),
    );
  }
}

class DetailMobile extends StatelessWidget {
  late final CarsData carsdetail;
  DetailMobile({Key? key, required this.carsdetail}) : super(key: key);

  var fontPoppins = const TextStyle(fontFamily: 'poppins');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //safeArea = mengikuti besaran statusbar
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    'Back to list',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: (FontWeight.normal),
                        fontSize: 17,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      carsdetail.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(top: 23, right: 23),
                  child: const FavoriteButton(),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 13, bottom: 13),
              child: Text(
                carsdetail.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
              margin: const EdgeInsets.all(18),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 25, bottom: 20),
                      child: Column(
                        children: <Widget>[
                          const Icon(
                            Icons.calendar_today_rounded,
                            color: Colors.black,
                          ),
                          const SizedBox(height: 10),
                          Text(carsdetail.release,
                              style: const TextStyle(
                                  fontFamily: 'poppins', color: Colors.black)),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.star_rate_rounded, color: Colors.black),
                        const SizedBox(height: 10),
                        Text(carsdetail.star,
                            style: const TextStyle(
                                fontFamily: 'poppins', color: Colors.black))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.monetization_on_rounded,
                            color: Colors.black),
                        const SizedBox(height: 10),
                        Text(carsdetail.price,
                            style: const TextStyle(
                                fontFamily: 'poppins', color: Colors.black))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.precision_manufacturing_rounded,
                            color: Colors.black),
                        const SizedBox(height: 10),
                        Text(carsdetail.madeby,
                            style: const TextStyle(
                                fontFamily: 'poppins', color: Colors.black))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: const Text(
                'Overview',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 12),
                height: 150,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: carsdetail.imageUrls.map((urlgambar) {
                      return Padding(
                        padding: const EdgeInsets.all(6),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(urlgambar),
                        ),
                      );
                    }).toList())),
            Container(
              margin: const EdgeInsets.all(16),
              child: const Text(
                'Deskripsi',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: Text(
                carsdetail.desc,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: const Text(
                'Spesifikasi',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, bottom: 30, left: 16, right: 16),
              child: Text(
                carsdetail.spec,
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}

class DetailWeb extends StatelessWidget {
  late final CarsData carsdetailweb;

  DetailWeb({required this.carsdetailweb});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Text(
                'Back to list',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: (FontWeight.normal),
                    fontSize: 17,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          carsdetailweb.imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      margin: const EdgeInsets.only(top: 23, right: 23),
                      child: const FavoriteButton(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 13, bottom: 13),
                        child: Text(
                          carsdetailweb.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
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
                        margin: const EdgeInsets.all(18),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(top: 25, bottom: 20),
                                child: Column(
                                  children: <Widget>[
                                    const Icon(
                                      Icons.calendar_today_rounded,
                                      color: Colors.black,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(carsdetailweb.release,
                                        style: const TextStyle(
                                            fontFamily: 'poppins', color: Colors.black)),
                                  ],
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  const Icon(Icons.star_rate_rounded, color: Colors.black),
                                  const SizedBox(height: 10),
                                  Text(carsdetailweb.star,
                                      style: const TextStyle(
                                          fontFamily: 'poppins', color: Colors.black))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  const Icon(Icons.monetization_on_rounded,
                                      color: Colors.black),
                                  const SizedBox(height: 10),
                                  Text(carsdetailweb.price,
                                      style: const TextStyle(
                                          fontFamily: 'poppins', color: Colors.black))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  const Icon(Icons.precision_manufacturing_rounded,
                                      color: Colors.black),
                                  const SizedBox(height: 10),
                                  Text(carsdetailweb.madeby,
                                      style: const TextStyle(
                                          fontFamily: 'poppins', color: Colors.black))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(16),
                        child: const Text(
                          'Overview',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 12),
                          height: 150,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: carsdetailweb.imageUrls.map((urlgambar) {
                                return Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(urlgambar),
                                  ),
                                );
                              }).toList())),
                      Container(
                        margin: const EdgeInsets.all(16),
                        child: const Text(
                          'Deskripsi',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(16),
                        child: Text(
                          carsdetailweb.desc,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(16),
                        child: const Text(
                          'Spesifikasi',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 16, bottom: 30, left: 16, right: 16),
                        child: Text(
                          carsdetailweb.spec,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


