import 'package:flutter/material.dart';
import 'categories.dart';
import 'package:bottlesapp/BottleCard.dart';
import 'package:bottlesapp/BottomCard.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return SizedBox(
      height: screensize.height,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: screensize.height * 0.20),
            height: 600,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Categories(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: <Widget>[
                        BottleCard(),
                        SizedBox(
                          width: 20,
                        ),
                        BottleCard(),
                        SizedBox(
                          width: 20,
                        ),
                        BottleCard(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40 ),
                  child: Text("Best Sellers",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                BottomCard(screensize: screensize),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20),
                child: Text(
                  "Explore\nBottles",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



