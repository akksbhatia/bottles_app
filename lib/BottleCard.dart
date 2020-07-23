import 'package:flutter/material.dart';
class BottleCard extends StatelessWidget {
  const BottleCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 60),
              height: 180,
              width: 140,
              decoration: BoxDecoration(
                color: Color(0xFFF1F1F1),
                borderRadius: BorderRadius.all(Radius.circular(24),),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: <Widget>[
                    Text("Bottle with\nFlip",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),),
                    SizedBox(
                      height: 10,
                    ),
                    Text("\$33.99",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),),
                  ],
                ),
              ),
            ),
            Positioned(
                left: -6,
                child: Image.asset("assets/images/bottle1.png", height: 150,)),
          ],
        ),
      ],
    );
  }
}