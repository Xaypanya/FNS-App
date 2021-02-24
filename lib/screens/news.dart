import 'package:flutter/material.dart';
import 'package:fns_app/consonants.dart';
import 'package:fns_app/screens/about.dart';
import 'package:fns_app/screens/allTab_view.dart';
import 'package:fns_app/screens/announce.dart';
import 'package:fns_app/screens/fnsTab_view.dart';
import 'package:fns_app/screens/latestTab_view.dart';
import 'package:fns_app/screens/nuolTab_view.dart';
import 'package:fns_app/screens/report.dart';

class news extends StatefulWidget {
  @override
  _newsState createState() => _newsState();
}

class _newsState extends State<news> {
  var darkblue = new Color(0xFF002248);
  var yellow = new Color(0xFFFCC100);
  var superdarkblue = new Color(0xFF001B39);
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  labelColor: yellow,
                  unselectedLabelColor: white.withOpacity(0.8),
                  unselectedLabelStyle: TextStyle(
                      fontFamily: 'Defago', fontSize: 15.0, color: kGrey1),
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicatorWeight: 1.3,
                  indicatorColor: yellow.withOpacity(0.7),
                  labelStyle: TextStyle(
                    fontFamily: 'Defago',
                    fontSize: 16.0,
                    color: yellow,
                    fontWeight: FontWeight.bold,
                  ).copyWith(fontSize: 18.0),
                  tabs: [
                    Tab(text: "ຫຼ້າສຸດ"),
                    Tab(text: "ຂ່າວ-ຄວທ"),
                    Tab(text: "ຂ່າວ-ມຊ"),
                    Tab(text: "ທັງໝົດ"),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: superdarkblue,
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            LatestTab_view(),
            FnsTab_view(),
            NuolTab_view(),
            AllTab_view()
          ],
        ),
      ),
    );
  }
}
