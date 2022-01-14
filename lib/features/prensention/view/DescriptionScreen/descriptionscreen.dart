import 'package:dna_test_task/core/Animation/route.dart';
import 'package:dna_test_task/features/data/datasource/remote/product_dio.dart';
import 'package:dna_test_task/features/prensention/view/Home/home.dart';
import 'package:dna_test_task/features/prensention/widget/all_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DescriptionScreen extends StatelessWidget {
  ProductDio productcontroller = ProductDio();

  String title;
  String image;
  String price;
  String desctription;
  DescriptionScreen(this.title, this.image, this.desctription, this.price,
      {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Product Page',
          style: TextStyle(color: HexColor('008BD2'), fontSize: 18),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: HexColor('008BD2'),
            ),
            onPressed: () {
              Navigator.of(context).pop(SliderLeft(page2: HomeLayout));
            }),
      ),
      backgroundColor: HexColor('008BD2'),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 400,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Column(
              children: [
                itemDescription(size, '', image),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    dots(Colors.red, true),
                    dots(Colors.blue, false),
                    dots(Colors.green, false),
                  ],
                ),
                maintextandprice(title, price)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              decoration: BoxDecoration(),
              child: Text(
                desctription,
                overflow: TextOverflow.clip,
                maxLines: 4,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
