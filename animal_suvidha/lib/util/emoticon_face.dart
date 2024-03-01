import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;

  const EmoticonFace({Key? key, required this.emoticonFace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(
            emoticonFace,
            style: TextStyle(
              fontSize: 48,
            ),
          ),
        ),
      ),
    );
  }
}
