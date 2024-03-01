import 'package:flutter/material.dart';

class ReportInjury extends StatelessWidget {
  const ReportInjury({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
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