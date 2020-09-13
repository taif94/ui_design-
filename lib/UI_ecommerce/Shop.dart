import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_ui/FadeAnimation.dart';

import 'CategoryPage.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: <Widget>[
            FadeAnimation(
              1,
              Container(
                height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/236x/17/90/30/1790308e4caf717d0f46b63173600b24.jpg"),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2),
                  ])),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FadeAnimation(
                              1.2,
                              IconButton(
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            FadeAnimation(
                              1.3,
                              IconButton(
                                icon: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              FadeAnimation(
                                1.5,
                                Text(
                                  "Our New  Products",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FadeAnimation(
                                1.7,
                                Row(
                                  children: <Widget>[
                                    Text(
                                      " VIEW MORE",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 15,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[Text("Categories"), Text("All")],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                    1.4,
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeCategory(
                              image:
                                  "https://i.pinimg.com/236x/74/41/ca/7441cac3181ef9a847ee2e498215679c.jpg",
                              title: "Beauty",
                              tag: "Beauty"),
                          makeCategory(
                              image:
                                  "https://i.pinimg.com/236x/50/56/a1/5056a1c61a8a37e6753a0ebf96732bcf.jpg",
                              title: "Clothes",
                              tag: "Clothes"),
                          makeCategory(
                              image:
                                  "https://i.pinimg.com/236x/31/16/d4/3116d4af6694d7c0360d01d2be0a2789.jpg",
                              title: "Perfume",
                              tag: "Perfume"),
                          makeCategory(
                              image:
                                  "https://i.pinimg.com/236x/be/e6/88/bee68856733baaea70c8598549b819e1.jpg",
                              title: "Bags",
                              tag: "Bugs"),
                          makeCategory(
                              image:
                                  "https://i.pinimg.com/236x/d6/53/34/d65334e65c95679cb6e94e0cfbe8e13d.jpg",
                              title: "Shose",
                              tag: " Shose"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Best Selling bt Category"),
                      Text("All")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.5,
                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            makeBestCatecory(
                                image:
                                    "https://i.pinimg.com/236x/0a/a2/bc/0aa2bc73a82d7c277cdb83d9871ea804.jpg",
                                title: "tech"),
                            makeBestCatecory(
                                image:
                                    "https://i.pinimg.com/236x/d1/a0/02/d1a0029d585c439420be880e149060fe.jpg",
                                title: "watch"),
                            makeBestCatecory(
                                image:
                                    "https://i.pinimg.com/564x/bd/28/73/bd287380171e942a8059e0a78ea84448.jpg",
                                title: "glass"),
                            makeBestCatecory(
                                image:
                                    "https://i.pinimg.com/236x/be/e6/88/bee68856733baaea70c8598549b819e1.jpg",
                                title: "Bags"),
                            makeBestCatecory(
                                image:
                                    "https://i.pinimg.com/236x/d6/53/34/d65334e65c95679cb6e94e0cfbe8e13d.jpg",
                                title: "Shose"),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

  Widget makeCategory({image, title, tag}) {
    return AspectRatio(
      aspectRatio: 2 / 2.2,
      child: Hero(
        tag: tag,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoryPage(
                          image: image,
                          title: title,
                          tag: tag,
                        )));
          },
          child: Material(
            child: Container(
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.0),
                    ])),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget makeBestCatecory({image, title}) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.0),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ),
          ),
        ),
      ),
    );
  }
}
