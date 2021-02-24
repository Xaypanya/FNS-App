import 'package:flutter/material.dart';

class announce extends StatefulWidget {
  @override
  _announceState createState() => _announceState();
}

class _announceState extends State<announce> {
  var darkblue = new Color(0xFF002248);
  var yellow = new Color(0xFFFCC100);
  var superdarkblue = new Color(0xFF001B39);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: superdarkblue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ແຈ້ງການ",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
