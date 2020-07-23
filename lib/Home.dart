import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1C1F24),
        elevation: 0,
        leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg", color: Colors.white ,),
        onPressed: (){},),
        actions: <Widget>[
          IconButton(icon: SvgPicture.asset("assets/icons/search.svg", color: Colors.white,),
          onPressed: (){},)
        ],
      ),
      backgroundColor: Color(0xFF1C1F24),
      body: Body(),
    );
  }
}
