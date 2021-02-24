import 'package:flutter/material.dart';
import 'package:fns_app/consonants.dart';
import 'package:fns_app/screens/read_news_view.dart';
import 'package:fns_app/widgets/primary_card.dart';
import 'package:fns_app/model/news.dart';

class NuolTab_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: superdarkblue,
      child: ListView.builder(
        itemCount: nuolList.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          var nuol = nuolList[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReadNewsView(news: nuol),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: 300.0,
              margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
              child: PrimaryCard(news: nuol),
            ),
          );
        },
      ),
    );
  }
}
