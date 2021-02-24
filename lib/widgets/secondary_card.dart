import 'package:flutter/material.dart';
import 'package:fns_app/model/news.dart';
import 'package:fns_app/consonants.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SecondaryCard extends StatelessWidget {
  final News news;
  SecondaryCard({this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: kGrey3.withOpacity(0.2), width: 0.5),
      ),
      child: Row(
        children: [
          Container(
            width: 120.0,
            height: 135.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: NetworkImage(news.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: kTitleCard.copyWith(fontSize: 14),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    news.subtitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: kDetailContent.copyWith(
                        fontSize: 12, color: white.withOpacity(0.5)),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          MdiIcons.clockTimeEightOutline,
                          size: 16,
                          color: white.withOpacity(0.8),
                        ),
                        radius: 10.0,
                        backgroundColor: kGrey1.withOpacity(0.0),
                      ),
                      SizedBox(width: 2.0),
                      Text(news.time,
                          style: kDetailContent.copyWith(
                              color: yellow.withOpacity(0.8), fontSize: 13)),
                      SizedBox(width: 10.0),
                      CircleAvatar(
                        child: Icon(IcoFontIcons.readBook,
                            size: 18, color: white.withOpacity(0.8)),
                        radius: 10.0,
                        backgroundColor: kGrey1.withOpacity(0.0),
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        "${news.estimate} ນາທີ",
                        style: kDetailContent.copyWith(
                            color: yellow.withOpacity(0.8), fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
