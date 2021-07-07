import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemNews extends StatelessWidget {
  toHex(String hex) {
    return Color(int.parse("0xff${hex}"));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        "assets/pexels-cottonbro-4123900.png",
                        width: 33,
                        height: 33,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Daniela Fernández Ramos",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/globe.png",
                                fit: BoxFit.contain,
                              ),
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Text(
                                    "Hace 3 días",
                                    style: TextStyle(
                                        fontSize: 10, color: toHex("BABDC9")),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: toHex("EFF2F7"),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Container(
                                  child: new Image.asset(
                                    "assets/Icon feather-star.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: toHex("EFF2F7"),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Container(
                                  child: new Image.asset(
                                    "assets/Group 13.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
                "Me encanto la sesión de fotos amigo 😍 Me encanto la me hizo mi amigo 😍  ncanto la me hizo mi amigo 😍"),
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: Image.asset(
                "assets/pexels-yuri-manei-2272854.png",
                fit: BoxFit.contain,
              )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: Text("30 comentarios · 5 compartidos",
                style: TextStyle(fontSize: 12, color: toHex("747EA0"))),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 34,
                          width: 34,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Container(
                              child: new Image.asset(
                                "assets/Group 4.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 34,
                          width: 34,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Container(
                              child: new Image.asset(
                                "assets/Group 5.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 34,
                          width: 34,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Container(
                              child: new Image.asset(
                                "assets/next-2.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Expanded(
                    flex: 6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            "Mao Lop y 50 personas más",
                            style: TextStyle(fontSize: 11),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      "assets/Group 165.png",
                                      width: 22,
                                      height: 22,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    child: Positioned(
                                        left: 10,
                                        child: Image.asset(
                                            'assets/Repeat Grid 1.png',
                                            width: 22,
                                            height: 22,
                                            fit: BoxFit.contain)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.black12,
                  width: 1
                )
              ),
            ),
            // color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset("assets/avt.png"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Michael Bruno",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Esta foto esta muy cool, deberías ser modelo",
                          style:
                              TextStyle(fontSize: 11, color: toHex("7A8FA6")),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                "Me gusta",
                                style: TextStyle(
                                    fontSize: 11, color: toHex("2D3F7B")),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("Responder",
                                  style: TextStyle(
                                      fontSize: 11, color: toHex("2D3F7B"))),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
