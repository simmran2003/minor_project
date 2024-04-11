import 'package:animal_suvidha/donate.dart';
import 'package:animal_suvidha/report_injury.dart';
import 'package:animal_suvidha/util/emoticon_face.dart';
import 'package:animal_suvidha/util/pop_up.dart';
// import 'package:animal_suvidha/util/exercise_tile.dart';
// import 'package:animal_suvidha/util/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animal_suvidha/my_pet.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var date = DateTime.now();
    
    return Scaffold(
      // backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          // image: DecorationImage(
          //     image: new AssetImage(
          //         "assets/images/Black and grey paw print pattern Art Print by gulsengunel.jpg"),
          //     fit: BoxFit.cover,
          //     colorFilter: new ColorFilter.mode(
          //         Colors.black.withOpacity(0.3), BlendMode.dstATop)),
        ),
        child: SafeArea(
          child: Column(
            children: [
              //greetings row
              Padding(
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
                        PopUp()
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //search bar
                    // searchBar(),
                    // SizedBox(
                    //   height: 25,
                    // ),

                    //how do u feel

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
                        // Icon(
                        //   Icons.more_horiz,
                        //   color: Colors.white,
                        // )
                      ],
                    ),

                    SizedBox(
                      height: 35,
                    ),

                    //4 different faces
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //My Pet
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MyPet()),
                                );
                              },
                              child: EmoticonFace(
                                emoticonFace: '🐶',
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'My Pet',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.lato().fontFamily),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                          ],
                        ),
                        //SOS
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ReportInjury()),
                                );
                              },
                              child: EmoticonFace(
                                emoticonFace: '🆘',
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Report an injury',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.lato().fontFamily),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                          ],
                        ),
                        //Donate
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Donate()),
                                );
                              },
                              child: EmoticonFace(
                                emoticonFace: '💵',
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Donate',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.lato().fontFamily),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                          ],
                        ),
                        //excellent
                        // Column(
                        //   children: [
                        //     EmoticonFace(
                        //       emoticonFace: '😆',
                        //     ),
                        //     SizedBox(
                        //       height: 10,
                        //     ),
                        //     Text(
                        //       'Excellent',
                        //       style: TextStyle(color: Colors.white),
                        //     ),
                        //     SizedBox(
                        //       height: 18,
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 25,
              // ),
              // Expanded(
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.only(
              //         topLeft: Radius.circular(40),
              //         topRight: Radius.circular(0)),
              //     child: Container(
              //       padding: EdgeInsets.all(25.0),
              //       color: Colors.grey[200],
              //       child: Center(
              //         child: Column(
              //           children: [
              //             //exercise heading
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text(
              //                   'Exercises',
              //                   style: TextStyle(
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 20,
              //                   ),
              //                 ),
              //                 Icon(Icons.more_horiz)
              //               ],
              //             ),
              //             SizedBox(
              //               height: 20,
              //             ),

              //             //listview of exercises
              //             Expanded(
              //               child: ListView(
              //                 children: [
              //                   ExerciseTile(
              //                     icon: Icons.favorite,
              //                     exerciseName: 'Speaking Skills',
              //                     numberOfExercises: 16,
              //                     color: Colors.orange,
              //                   ),
              //                   ExerciseTile(
              //                     icon: Icons.person,
              //                     exerciseName: 'Reading Skills',
              //                     numberOfExercises: 8,
              //                     color: Colors.green,
              //                   ),
              //                   ExerciseTile(
              //                     icon: Icons.star,
              //                     exerciseName: 'Writing Skills',
              //                     numberOfExercises: 20,
              //                     color: Colors.pink,
              //                   )
              //                 ],
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
