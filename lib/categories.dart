import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["New", "Bestsellers", "Premium", "Best Value"];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedindex = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15),),
                      color: selectedindex == index ? Colors.black : Colors.transparent,
                    ),
                    child: Text(categories[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectedindex == index ? Colors.white : Colors.black,
                      ),),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

