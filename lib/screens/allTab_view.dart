import 'package:flutter/material.dart';
import 'package:fns_app/consonants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:fns_app/model/news.dart';

class AllTab_view extends StatelessWidget {
  final News news;
  AllTab_view({this.news});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: ListView(
        children: [
          SizedBox(height: 12.0),
          Hero(
            tag: news.seen,
            child: Container(
              height: 220.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: NetworkImage(news.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 7.0,
                  vertical: 2.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: kGrey3, width: 1.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Icon(MdiIcons.tagMultiple,
                          size: 20, color: white.withOpacity(0.8)),
                      radius: 10.0,
                      backgroundColor: kGrey1.withOpacity(0.0),
                    ),
                    SizedBox(width: 3.0),
                    Text(
                      news.category,
                      style: kCategoryTitle.copyWith(
                          color: yellow.withOpacity(0.8)),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Status(
                icon: Icons.remove_red_eye,
                total: news.seen,
              ),
            ],
          ),
          SizedBox(height: 12.0),
          Text(news.title, style: kTitleCard.copyWith(fontSize: 22.0)),
          SizedBox(height: 15.0),
          Row(
            children: [
              CircleAvatar(
                child: Icon(
                  MdiIcons.clockTimeEightOutline,
                  size: 17,
                  color: white.withOpacity(0.8),
                ),
                radius: 10.0,
                backgroundColor: kGrey1.withOpacity(0.0),
              ),
              SizedBox(width: 2.0),
              Text(news.time,
                  style:
                      kDetailContent.copyWith(color: yellow.withOpacity(0.8))),
              SizedBox(width: 5.0),
              SizedBox(
                width: 10.0,
                child: Divider(
                  color: kBlack,
                  height: 1.0,
                ),
              ),
              SizedBox(width: 5.0),
              CircleAvatar(
                child: Icon(
                  MdiIcons.fountainPenTip,
                  size: 17,
                  color: white.withOpacity(0.8),
                ),
                radius: 10.0,
                backgroundColor: kGrey1.withOpacity(0.0),
              ),
              SizedBox(width: 2.0),
              Text(
                "@${news.author}",
                style: kDetailContent.copyWith(color: yellow.withOpacity(0.8)),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Text(
            news.content,
            style: descriptionStyle.copyWith(color: white, fontSize: 16),
          ),
          SizedBox(height: 25.0)
        ],
      ),
    );
  }
}

class Status extends StatelessWidget {
  final IconData icon;
  final String total;
  Status({this.icon, this.total});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: yellow.withOpacity(0.8)),
        SizedBox(width: 4.0),
        Text(total,
            style: kDetailContent.copyWith(color: white.withOpacity(0.8))),
      ],
    );
  }
}
