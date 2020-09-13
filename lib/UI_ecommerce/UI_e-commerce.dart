import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/FadeAnimation.dart';
import 'package:page_transition/page_transition.dart';

import 'Shop.dart';

class Homeecommerce extends StatefulWidget {
  @override
  _HomeecommerceState createState() => _HomeecommerceState();
}

class _HomeecommerceState extends State<Homeecommerce>
    with TickerProviderStateMixin {
  AnimationController _scaleController;
  Animation<double> _scaleAnimation;
  bool hide = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(_scaleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(context,
                  PageTransition(child: Shop(), type: PageTransitionType.fade));
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/236x/b6/1e/db/b61edbfe1684775f9050b8f456f81a30.jpg"),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.4),
          ])),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FadeAnimation(
                  1,
                  Text(
                    "Brand New Perspective",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                  1,
                  Text(
                    "Lets start with our summer collection ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                    _scaleController.forward();
                    setState(() {
                      hide = true;
                    });
                  },
                  child: AnimatedBuilder(
                    animation: _scaleController,
                    builder: (context, child) => Transform.scale(
                      scale: _scaleAnimation.value,
                      child: FadeAnimation(
                        1.5,
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: hide == false
                                ? Text(
                                    "Get Start",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                : Container(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                  1.7,
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        "Create Account ",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
