import 'package:flutter/material.dart';
import 'package:animal_suvidha/home1.dart';

class MyPet extends StatelessWidget {
  const MyPet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Icon(Icons.home)),
      ),
    );
  }
}
