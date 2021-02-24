import 'package:flutter/material.dart';
import 'package:fns_app/screens/register.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:page_transition/page_transition.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _darkblue = new Color(0xFF002248);
  var _yellow = new Color(0xFFFCC100);
  // var _superdarkblue = new Color(0xFF001B39);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _darkblue,
      appBar: AppBar(
        backgroundColor: _darkblue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/1.Fns_hd.png',
                  height: 170,
                ),
                Text(
                  "ເຂົ້າສູ່ລະບົບ",
                  style: TextStyle(fontSize: 26, color: _yellow),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    cursorColor: _yellow,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        MdiIcons.emailOutline,
                        size: 27,
                        color: Colors.white,
                      ),
                      hintText: "ອິເມວ",
                      hintStyle: TextStyle(color: Colors.white30, fontSize: 18),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: _yellow)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 5, 40, 0),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    cursorColor: _yellow,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        MdiIcons.lockOutline,
                        size: 27,
                        color: Colors.white,
                      ),
                      hintText: "ລະຫັດຜ່ານຂອງທ່ານ",
                      hintStyle: TextStyle(color: Colors.white30, fontSize: 18),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: _yellow)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 3, 0),
                  child: Row(
                    children: [
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () {
                          //
                        },
                        child: Text(
                          "ລືມລະຫັດແມ່ນບໍ່?",
                          style: TextStyle(
                            color: Colors.white70,
                            decoration: TextDecoration.underline,
                            decorationThickness: 3,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 75,
                      ),
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: Register()));
                        },
                        child: Text(
                          "ຍັງບໍ່ມີບັນຊີບໍ?",
                          style: TextStyle(
                              color: Colors.white70,
                              decoration: TextDecoration.underline,
                              decorationThickness: 3),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  // ignore: deprecated_member_use
                  child: OutlineButton(
                    onPressed: () {
                      print("Submit");
                      // Navigator.of(context).pop();
                    },
                    child: Text(
                      "ເຂົ້າສູ່ລະບົບ",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.3,
                    ),
                    highlightedBorderColor: _yellow,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
