import 'package:flutter/material.dart';
import 'package:fns_app/model/news.dart';
import 'package:fns_app/consonants.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PrimaryCard extends StatelessWidget {
  final News news;
  PrimaryCard({this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: kGrey3.withOpacity(0.1), width: 1.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Icon(MdiIcons.tagMultiple,
                    size: 20, color: white.withOpacity(0.8)),
                radius: 10.0,
                backgroundColor: kGrey1.withOpacity(0.0),
              ),
              SizedBox(width: 10.0),
              Text(
                news.category,
                style: kCategoryTitle.copyWith(color: yellow.withOpacity(0.8)),
              )
            ],
          ),
          SizedBox(height: 5.0),
          Expanded(
            child: Hero(
              tag: news.seen,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: NetworkImage(news.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            news.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: kTitleCard,
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              CircleAvatar(
                child: Icon(
                  MdiIcons.clockTimeEightOutline,
                  size: 18,
                  color: white.withOpacity(0.8),
                ),
                radius: 10.0,
                backgroundColor: kGrey1.withOpacity(0.0),
              ),
              SizedBox(width: 3.0),
              Text(
                news.time,
                style: kDetailContent.copyWith(color: yellow.withOpacity(0.8)),
              ),
              SizedBox(width: 10.0),
              CircleAvatar(
                child: Icon(
                  IcoFontIcons.readBook,
                  size: 20,
                  color: white.withOpacity(0.8),
                ),
                radius: 10.0,
                backgroundColor: kGrey1.withOpacity(0.0),
              ),
              SizedBox(width: 3.0),
              Text("${news.estimate} ນາທີ",
                  style:
                      kDetailContent.copyWith(color: yellow.withOpacity(0.8)))
            ],
          )
        ],
      ),
    );
  }
}
