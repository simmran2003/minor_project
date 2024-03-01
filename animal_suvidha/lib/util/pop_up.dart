import 'package:animal_suvidha/util/menu.dart';
import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

class PopUp extends StatelessWidget {
  const PopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopover(
        context: context,
        bodyBuilder: (context) => MenuItems(),
        width: 150,
        height: 100,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[400], borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(12),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
    );
  }
}
