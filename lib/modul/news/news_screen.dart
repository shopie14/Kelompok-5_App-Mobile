import 'package:flutter/material.dart';
import 'package:pertemuan_v/widget/news_item_widget.dart';
import '../../data/animes_data.dart';
import '../../models/anime.dart'; 


class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const ListTile(
            title: Text("Anime Article List",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
        Column(
          children:
              newsData.map((News news) => NewsItemWidget(news: news)).toList(),
        )
      ],
    );
  }
}