import 'package:carousel_slider/carousel_slider.dart';
import 'package:carslist/detail_screen.dart';
import 'package:carslist/model/cars_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Image.asset(
            "gambar/logo/logoappbar.png",
            fit: BoxFit.contain,
            height: 32,
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.black,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return MainScreen();
        } else if (constraints.maxWidth <= 700) {
          return GridCars(gridCount: 2);
        } else if (constraints.maxWidth <= 1000) {
          return GridCars(gridCount: 3);
        } else if (constraints.maxWidth <= 1190){
          return GridCars(gridCount: 4);
        } else if (constraints.maxWidth <= 1350){
          return GridCars(gridCount: 5);
        } else {
          return GridCars(gridCount: 6);
        }
      }),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 22, top: 20),
            child: const Text(
              'Welcome, Zaki 👋🏻',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 70),
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 3),
                // enlargeCenterPage: true,
                aspectRatio: 2,
              ),
              items: [
                'https://manofmany.com/wp-content/uploads/2021/06/20-most-beautiful-cars-in-the-world-according-to-science--1200x800.jpeg',
                'https://wallpaperaccess.com/full/923777.jpg',
                'https://wallpaperaccess.com/full/124068.jpg',
                'https://wallpaperaccess.com/full/5337358.jpg'
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 2.0),
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white, width: 4)),
                        child: Image.network(
                          i,
                          fit: BoxFit.cover,
                        ));
                  },
                );
              }).toList(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.40, left: 22),
            child: (const Text(
              'List Cars',
              style: TextStyle(
                fontFamily: 'poppins',
                color: Colors.white,
                fontSize: 20,
              ),
            )),
          ),
          Card(
            color: Colors.transparent,
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.43),
            child: Container(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10),
                itemBuilder: (context, index) {
                  final CarsData datamobil = carsdata[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen(
                          cars: datamobil,
                        );
                      }));
                    },
                    child: Container(
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.all(8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    child: Image.asset(
                                      datamobil.imageAsset,
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      datamobil.name,
                                      style: TextStyle(
                                          fontFamily: 'poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(datamobil.price,
                                        style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueGrey)
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      datamobil.release,
                                      style: TextStyle(
                                          fontFamily: 'poppins', fontSize: 14),
                                    ),
                                    Align(
                                      child: FavoriteButton(),
                                      alignment: Alignment.bottomRight,
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: carsdata.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GridCars extends StatelessWidget {
  final int gridCount;

  GridCars({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.count(
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          crossAxisCount: gridCount,
          childAspectRatio: 0.54,
          children: carsdata.map((datacarslist) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(
                      cars: datacarslist);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        datacarslist.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              datacarslist.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            datacarslist.price,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 12, right: 12),
                              child: FavoriteButton(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.blueGrey),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
