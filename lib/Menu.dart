import 'package:flutter/material.dart';
import 'package:project_flutter/Header.dart';
import 'package:project_flutter/ItemHeader.dart';
import 'package:project_flutter/ItemMenu.dart';
import 'package:project_flutter/ItemNews.dart';

class Menu extends StatelessWidget {
  toHex(String hex) {
    return Color(int.parse("0xff${hex}"));
  }

  List<Map> arr = <Map>[
    {
      "title": "Ayuda y soporte",
      "icon": "assets/Icon ionic-ios-help-circle.png"
    },
    {
      "title": "Configuración y privacidad",
      "icon": "assets/Icon awesome-cog.png"
    },
    {
      "title": "Configuración y privacidad",
      "icon": "assets/camera-to-take-photos.png"
    },
  ];

  List<Map> arr_1 = <Map>[
    {"image": "assets/Group 163.png"},
    {"image": "assets/Group 164.png"},
  ];

  List<Map> arr_2 = <Map>[
    {
      "title": "Videos en Watch",
      "icon": "assets/ytb.png",
      "sub_icon": "assets/Ellipse 29.png",
    },
    {
      "title": "Marketplace",
      "icon": "assets/trolley.png",
      "sub_icon": "assets/Ellipse 29.png",
    },
    {
      "title": "Parejas",
      "icon": "assets/heart.png",
      "sub_icon": "assets/1.png",
    },
    {
      "title": "Videojuegos",
      "icon": "assets/Icon material-games.png",
      "sub_icon": "assets/163.png",
    },
    {
      "title": "Empleos",
      "icon": "assets/Icon awesome-shopping-bag.png",
      "sub_icon": null,
    },
    {
      "title": "Guardados",
      "icon": "assets/Icon awesome-bookmark.png",
      "sub_icon": null,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(children: [
          Container(
            child: Header(),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Menú",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: toHex("2D3F7B")),
                        ),
                      ),
                      Container(
                        // color: Colors.black,
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: toHex("2D3F7B"),
                                ),
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                  "assets/dart_mode.png",
                                  width: 5,
                                  height: 5,
                                )),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text("Modo oscuro",
                                    style: TextStyle(
                                        fontSize: 13, color: toHex("2D3F7B")))),
                            InkWell(
                                onTap: () {
                                  print("On Dark Mode");
                                },
                                child: Image.asset("assets/Group 104.png"))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 36,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: arr.length,
                    itemBuilder: (context, int index) {
                      return Container(
                        margin: (index > 0) ? EdgeInsets.only(left: 20) : null,
                        child: ItemMenu(
                          title: arr[index]["title"],
                          icon: arr[index]["icon"],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 132,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: arr_1.length,
                    itemBuilder: (context, int index) {
                      return Container(
                          margin:
                              (index > 0) ? EdgeInsets.only(left: 20) : null,
                          child: Image.asset(arr_1[index]["image"]));
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: GridView.builder(
                itemCount: arr_2.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.5,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 10),
                itemBuilder: (ctx, index) {
                  return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                Expanded(
                                  child: AspectRatio(
                                    aspectRatio: 2.5,
                                    child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: Row(
                                        children: [
                                          Image.asset(arr_2[index]["icon"]),
                                          Text(
                                            "   " + arr_2[index]["title"],
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 5,
                                  child: arr_2[index]["sub_icon"] != null
                                      ? Image.asset(arr_2[index]["sub_icon"])
                                      : Text(""),
                                )
                              ],
                            )
                          ],
                        ),
                      ));
                }),
          ) // ))
        ]),
      ),
    );
  }
}
