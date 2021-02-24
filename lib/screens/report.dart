import 'package:flutter/material.dart';

class report extends StatefulWidget {
  @override
  _reportState createState() => _reportState();
}

class _reportState extends State<report> {
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
              "ລາຍງານບັນຫາ",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
