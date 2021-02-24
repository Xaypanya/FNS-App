import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var _darkblue = new Color(0xFF002248);
  var _yellow = new Color(0xFFFCC100);
  // var _superdarkblue = new Color(0xFF001B39);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _darkblue,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: _darkblue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/1.Fns_hd.png',
                      height: 70,
                    ),
                    Text(
                      "ລົງທະບຽນ",
                      style: TextStyle(fontSize: 26, color: _yellow),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          //Name Box
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                cursorColor: _yellow,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                                decoration: InputDecoration(
                                  hintText: "ຊື່",
                                  hintStyle: TextStyle(
                                      color: Colors.white30, fontSize: 16),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: _yellow)),
                                ),
                              ),
                            ),
                          ),
                          // Lastname Box
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                cursorColor: _yellow,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                                decoration: InputDecoration(
                                  hintText: "ນາມສະກຸນ",
                                  hintStyle: TextStyle(
                                      color: Colors.white30, fontSize: 16),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: _yellow)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          //Name Box
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: TextField(
                                keyboardType: TextInputType.text,
                                cursorColor: _yellow,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                                decoration: InputDecoration(
                                  hintText: "ວັນ/ເດືອນ/ປີເກີດ",
                                  hintStyle: TextStyle(
                                      color: Colors.white30, fontSize: 16),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: _yellow)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //
                //
                // Break
                //
                //
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () {
                          print("back to login");
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "ກັບຄືນໜ້າເຂົ້າສູ່ລະບົບ",
                          style: TextStyle(
                            color: Colors.white70,
                            decoration: TextDecoration.underline,
                            decorationThickness: 3,
                          ),
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
                    },
                    child: Text(
                      "ລົງທະບຽນ",
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
