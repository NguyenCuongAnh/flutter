import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter/Header.dart';
import 'package:project_flutter/ItemFriend.dart';

class Home extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C', "D", "D", "D"];
  toHex(String hex) {
    return Color(int.parse("0xff${hex}"));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: toHex('FAFBFC'),
      child: Column(
        children: [
          Header(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: entries.length,
              itemBuilder: (context, int index) {
                return ItemFriend();
              },
            ),
          )
        ],
      ),
    );
  }
}
