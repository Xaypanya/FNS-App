import 'package:flutter/material.dart';
import 'package:fns_app/consonants.dart';
import 'package:fns_app/model/news.dart';
import 'package:fns_app/screens/read_news_view.dart';
import 'package:fns_app/widgets/primary_card.dart';
import 'package:fns_app/widgets/secondary_card.dart';

class LatestTab_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: superdarkblue,
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300.0,
            padding: EdgeInsets.only(left: 18.0),
            child: ListView.builder(
              itemCount: popularList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var news = popularList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadNewsView(news: news),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 12.0),
                    child: PrimaryCard(news: news),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 25.0),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 19.0),
              child: Text("ຂ່າວສານອື່ນໆທີ່ໜ້າສົນໃຈ",
                  style:
                      kNonActiveTabStyle.copyWith(fontSize: 18, color: yellow)),
            ),
          ),
          ListView.builder(
            itemCount: recentList.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              var recent = recentList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReadNewsView(news: recent),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 135.0,
                  margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                  child: SecondaryCard(news: recent),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
