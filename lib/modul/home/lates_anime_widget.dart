import 'package:flutter/material.dart';
import 'package:pertemuan_v/models/anime.dart';

import '../../data/animes_data.dart';
import '../../widget/news_item_widget.dart';

class LatesNewsWidget extends StatelessWidget {
  const LatesNewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("Lates Anime",
              style: TextStyle(fontWeight: FontWeight.bold)),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              )),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
              children: List.generate(
                  3,
                  (int i) => NewsItemWidget(
                        news: newsData[i],
                      ))),
        )
      ],
    );
  }
}
