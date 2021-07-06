import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter/ItemHeader.dart';

class Header extends StatelessWidget {
  double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  toHex(String hex) {
    return Color(int.parse("0xff${hex}"));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft:Radius.circular(20),
            bottomRight:Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Padding(
                      padding:
                      EdgeInsets.only(top: 30, bottom: 10, left: 20, right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1,
                                    color:
                                    const Color.fromRGBO(112, 112, 112, 0.1)))),
                        padding: EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              width: getScreenWidth(context) / 2 - 20,
                              child: Image.asset(
                                "assets/Facebook_f_logo_(2019).png",
                                height: 33,
                                width: 33,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              width: getScreenWidth(context) / 2 - 20,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/noun_Search_1542891.png"),
                                  Image.asset(
                                      "assets/noun_notification_2184960.png"),
                                  Image.asset("assets/messenger.png"),
                                  Image.asset(
                                    "assets/avt.png",
                                    height: 40,
                                    width: 40,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ),
                Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Image.asset(
                              "assets/avt.png",
                              width: 26,
                              height: 26,
                            ),
                          ),
                          Container(
                            child: new Flexible(
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: '¿Qué estas pensando, Mao?'),
                                )),
                          ),
                          Image.asset("assets/smile.png"),
                        ],
                      ),
                    )),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemHeader(
                            title: "Fotos",
                            icon: "assets/camera-to-take-photos.png",

                          ),
                          ItemHeader(
                            title: "En vivo",
                            icon: "assets/video-camera.png",
                          ),
                          ItemHeader(
                            title: "Video corto",
                            icon: "assets/view.png",
                          ),
                        ],
                      ),
                    )),
              ],
            ))
        )
       ;
  }
}
