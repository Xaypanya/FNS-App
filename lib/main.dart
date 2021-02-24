import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fns_app/screens/login.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'screens/about.dart';
import 'screens/announce.dart';
import 'screens/home.dart';
import 'screens/news.dart';
import 'screens/report.dart';
import 'screens/login.dart';
import 'screens/register.dart';
// import 'screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // var darkblue = new Color(0xFF002248);
  // var yellow = new Color(0xFFFCC100);
  // var superdarkblue = new Color(0xFF001B39);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme:
          ThemeData(primaryColor: new Color(0xFF002248), fontFamily: 'Defago'),
      routes: {
        '/Login': (context) => Login(),
        '/Register': (context) => Register(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _BottomNavigationBarItems = [
    BottomNavigationBarItem(
        icon: Icon(
          MdiIcons.home,
        ),
        title: Text(
          "ໜ້າຫຼັກ",
        )),
    BottomNavigationBarItem(
        icon: Icon(
          IcoFontIcons.newspaper,
        ),
        title: Text(
          "ຂ່າວສານ",
        )),
    BottomNavigationBarItem(
        icon: Icon(
          LineAwesomeIcons.bullhorn,
        ),
        title: Text(
          "ແຈ້ງການ",
        )),
    BottomNavigationBarItem(
        icon: Icon(
          Entypo.info_circled,
        ),
        title: Text(
          "ຄະນະ",
        )),
    BottomNavigationBarItem(
        icon: Icon(
          MdiIcons.bug,
        ),
        title: Text(
          "ລາຍງານ",
        )),
  ];
  var darkblue = new Color(0xFF002248);
  var yellow = new Color(0xFFFCC100);
  var superdarkblue = new Color(0xFF001B39);
  List<String> appbar_title = [
    "ຄວທ",
    "ຂ່າວສານ",
    "ແຈ້ງການ",
    "ກ່ຽວກັບຄະນະ",
    "ລາຍງານບັນຫາ"
  ];
  int _bigIndex = 0;
  PageController _pageController = PageController(initialPage: 0);
  var backward;

  backwardVisibity() {
    if (_bigIndex != 0) {
      backward = OMIcons.keyboardBackspace;
    } else {
      backward = null;
    }
    return backward;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return WillPopScope(
      onWillPop: () {
        backToLastScreen();
      },
      child: Scaffold(
          appBar: AppBar(
            elevation: 10,
            leading: IconButton(
              icon: Icon(backwardVisibity()),
              onPressed: () {
                backToLastScreen();
              },
            ),
            title: Text(
              appbar_title[_bigIndex],
              style: TextStyle(color: yellow),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(
                  MdiIcons.accountCircleOutline,
                  size: 38,
                ),
                onPressed: () {
                  print("Login");
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeftWithFade,
                          child: Login()));
                },
              )
            ],
          ),
          body: PageView(
            controller: _pageController,
            onPageChanged: (newIndex) {
              setState(() {
                _bigIndex = newIndex;
              });
            },
            children: [
              home(),
              news(),
              announce(),
              about(),
              report(),
            ],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 0.45))
              ],
            ),
            child: BottomNavigationBar(
              currentIndex: _bigIndex,
              backgroundColor: darkblue,
              selectedFontSize: 14,
              selectedItemColor: new Color(0xFFFCC100),
              unselectedItemColor: Colors.white,
              items: _BottomNavigationBarItems,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                _pageController.animateToPage(index,
                    duration: Duration(milliseconds: 650), curve: Curves.ease);
              },
            ),
          )),
    );
  }

  void backToLastScreen() {
    _pageController.previousPage(
        duration: Duration(milliseconds: 650), curve: Curves.ease);
  }
}
