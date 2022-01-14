import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Widget itemBuilder(
  String title,
  String link,
  String image,
  String price,
  Function onpress,
  Size size,
) =>
    Container(
        height: 200,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GestureDetector(
          onTap: () {
            onpress();
          },
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Container(
              height: 166,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 25,
                    offset: Offset(0, 15),
                    color: Colors.black26)
              ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
            Positioned(
                top: 0.0,
                left: 0.0,
                child: Container(
                  height: 180,
                  width: 150,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.network(
                    image,
                    height: 80,
                    width: 80,
                  ),
                )),
            Positioned(
                bottom: 0,
                right: 10,
                child: SizedBox(
                  height: 136,
                  width: size.width - 200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          overflow: TextOverflow.clip,
                          maxLines: 2,
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          link,
                          overflow: TextOverflow.clip,
                          maxLines: 2,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.yellow),
                            child: Center(child: Text(price + '\$')),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ]),
        ));

Widget itemDescription(
  Size size,
  String link,
  String image,
) =>
    Column(
      children: [
        Column(
          children: [
            Container(
              height: size.height * 0.45,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.9,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 15),
                          blurRadius: 15,
                          spreadRadius: 15,
                          color: Colors.black12)
                    ], color: Colors.white, shape: BoxShape.circle),
                  ),
                  Center(
                    child: Image.network(
                      image,
                      width: size.width * 0.65,
                      height: size.height * 0.65,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );

Widget dots(Color color, bool isSelected) => Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10 / 2.5),
          padding: EdgeInsets.all(3),
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: isSelected ? color : Colors.transparent)),
          child: Container(
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          ),
        )
      ],
    );

Widget maintextandprice(String title, String price) => Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
        Text(
          price + '\$',
          style: TextStyle(fontSize: 15, color: Colors.yellow[600]),
        ),
      ],
    );
