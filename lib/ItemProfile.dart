import 'package:flutter/material.dart';
import 'package:project_flutter/Profile.dart';

class ItemProfile extends StatelessWidget {
  final avatar;
  final name;

  ItemProfile({@required this.avatar, @required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Profile()));
      },
      child: Container(
          margin: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Container(
                height: 50,
                width: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.asset(
                    avatar,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(name, style: TextStyle(fontSize: 12)),
              ),
            ],
          )),
    );
  }
}
