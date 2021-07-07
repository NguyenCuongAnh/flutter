import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter/Header.dart';
import 'package:project_flutter/ItemFriend.dart';
import 'package:project_flutter/ItemNews.dart';

class Home extends StatelessWidget {
  final List<Map> entries = [
    {"name": "Fernanda", "avt": "assets/45.png"},
    {"name": "James ", "avt": "assets/65.png"},
    {"name": "Estefania", "avt": "assets/66.png"},
    {"name": "Fanny", "avt": "assets/45.png"},
    {"name": "Estefania", "avt": "assets/65.png"},
    {"name": "Fernanda", "avt": "assets/66.png"},
    {"name": "James ", "avt": "assets/45.png"},
  ];
  toHex(String hex) {
    return Color(int.parse("0xff${hex}"));
  }

  @override
  Widget build(BuildContext context) {
    List<int> a = <int>[1, 2, 3, 4, 5, 6];
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        color: toHex('FAFBFC'),
        child: Column(
          children: [
            Container(
              child: Header(),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: entries.length,
                itemBuilder: (context, int index) {
                  return ItemFriend(
                    name: entries[index]["name"],
                    avatar: entries[index]["avt"],
                  );
                },
              ),
            ),
            Container(
              height: 400,
              child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: a.length,
                  itemBuilder: (context, index) {
                    return ItemNews();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
