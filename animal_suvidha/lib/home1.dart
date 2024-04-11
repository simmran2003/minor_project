import 'package:animal_suvidha/util/pop_up.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var date = DateTime.now();
    var i = ['SOS', 'Report an Injury', 'Donate'];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Jared!",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${date.day}-${date.month}-${date.year}',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            height: 8,
                          )
                        ],
                      ),
                      PopUp(),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Welcome to \n Animal Suvidha",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.amber,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 20,
                            width: 20,
                            padding: EdgeInsets.all(2),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(2),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(2),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      SafeArea(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: CarouselSlider(
                            items: [1, 2, 3].map((i) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text("text \\\\\\\$i"),
                                ),
                              );
                            }).toList(),
                            options: CarouselOptions(
                              height: 300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}