import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter/ItemFriend.dart';
import 'package:project_flutter/ItemProfile.dart';

class Profile extends StatelessWidget {
  final List<Map> entries = [
    {"name": "Fernanda", "avt": "assets/45.png"},
    {"name": "James ", "avt": "assets/65.png"},
    {"name": "Estefania", "avt": "assets/66.png"},
    {"name": "Fanny", "avt": "assets/45.png"},
    {"name": "Estefania", "avt": "assets/65.png"},
    {"name": "Fernanda", "avt": "assets/66.png"},
    {"name": "James ", "avt": "assets/45.png"},
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView (
        child: Stack(
          children: [
            Container(
              height: size.height * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage(
                          "assets/138787538_3919263608108366_1402312909687050101_n.png"))),
            ),
            Container(
                margin: EdgeInsets.only(top: 150),
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/141348941_3946070645427662_8778357088398883022_n.png",
                    ),
                    Text("Mao Lop",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3F7B))),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          "Mauricio Lopez  |  Diseñador UI/UX  |  Developer ",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF4D62A7))),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Color(0xFF707070)))),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 183,
                            height: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xFF1977F3)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/messenger_1.png"),
                                Text(
                                  "   Mensaje",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 106,
                            height: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.blueAccent)),
                            child: Center(
                                child: Text("Llamar",
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xFF1977F3)))),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Color(0xFFE2E2E2))),
                            child: Image.asset("assets/Group 158.png"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/home-2.png",
                            width: 12,
                            height: 12,
                          ),
                          Text("     Vive en Zihuatanejo, Guerrero, México.",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF4D62A7)))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Icon awesome-clock.png",
                            width: 12,
                            height: 12,
                          ),
                          Text("     Se unió en: Septiembre de 2010",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF4D62A7)))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/Icon ionic-md-information-circle.png",
                            width: 12,
                            height: 12,
                          ),
                          Text("     Ver más información de Mao",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF4D62A7)))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 15),
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
                      padding: EdgeInsets.symmetric(horizontal: 15) ,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text("Amigos ", style: TextStyle(color: Color(0xFF2D3F7B), fontSize: 19, fontWeight: FontWeight.bold),),
                                Text("(2,004 amigos)", style: TextStyle(fontSize: 17, color: Color(0xFFB2B8C9))),
                              ],
                            ),
                          ),

                          Text("Ver todos", style: TextStyle(fontSize: 14, color: Color(0xFF1977F3))),
                        ],
                      ) ,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: entries.length,
                        itemBuilder: (context, int index) {
                          return ItemProfile(
                            name: entries[index]["name"],
                            avatar: entries[index]["avt"],
                          );
                        },
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
