import 'package:flutter/material.dart';

class ItemFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Container(
              height: 80,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/45.png",
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                  Container(
                    width: 70,
                    alignment: Alignment.bottomCenter,
                    child: Positioned(bottom: 0, child: Image.asset('assets/54.png')),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text("Fernanda", style: TextStyle(fontSize: 12)),
            ),
          ],
        ));
  }
}
