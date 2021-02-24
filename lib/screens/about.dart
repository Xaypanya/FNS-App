import 'package:flutter/material.dart';

class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
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
              "ກ່ຽວກັບຄະນະ",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
