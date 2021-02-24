import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  var darkblue = new Color(0xFF002248);
  var yellow = new Color(0xFFFCC100);
  var superdarkblue = new Color(0xFF001B39);
  var white = Colors.white;
  WebViewController _webViewController;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: superdarkblue,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/1.Home_banner.png',
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/images/1.Fns_hd.png',
                  height: 90,
                ),
                Column(
                  children: [
                    Text(
                      "Faculty of Natural Science",
                      style: TextStyle(color: yellow, fontSize: 18),
                    ),
                    Text(
                      "ຄະນະວິທະຍາສາດທຳມະຊາດ",
                      style: TextStyle(color: white, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
            Image.asset(
              'assets/images/1.Fns_hd.png',
              height: 90,
            ),
            Image.asset(
              'assets/images/1.Fns_hd.png',
              height: 90,
            ),
            Image.asset(
              'assets/images/1.Fns_hd.png',
              height: 90,
            ),
            Image.asset(
              'assets/images/1.Fns_hd.png',
              height: 90,
            ),
            Image.asset(
              'assets/images/1.Fns_hd.png',
              height: 90,
            ),
            Image.asset(
              'assets/images/1.Fns_hd.png',
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
