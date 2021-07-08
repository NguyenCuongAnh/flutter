import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final title;
  final icon;
ItemMenu({@required this.title, @required this.icon});

  double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  toHex(String hex) {
    return Color(int.parse("0xff${hex}"));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          print("111111111");
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: toHex('F8F9FA'),
            ),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child:Image.asset(icon, fit: BoxFit.contain),
                  ),
                  Text(
                    '$title',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
