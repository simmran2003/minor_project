import 'package:flutter/material.dart';

class MyPet extends StatelessWidget {
  const MyPet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home_page');
            },
            child: Icon(Icons.home)),
      ),
    );
  }
}
