import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({
    Key key,
    @required this.screensize,
  }) : super(key: key);

  final Size screensize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: screensize.width,
      decoration: BoxDecoration(
        color: Color(0xFFF1F1F1),
        borderRadius: BorderRadius.all(Radius.circular(24),),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset("assets/images/bottle1.png", height: 90,),
                      Text("Bottle with\nFlip",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset("assets/icons/arrow.svg", color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}