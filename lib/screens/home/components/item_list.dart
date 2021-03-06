import 'package:flutter/material.dart';
import 'package:food_app/screens/details/details-screen.dart';
import 'package:food_app/screens/home/components/item_card.dart';
import 'package:food_app/screens/details/screen2.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burgers",
            shopName: "McDonald's",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            svgSrc: "assets/icons/chinese_noodles.svg",
            title: "Noodles and Soups",
            shopName: "Chings",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return screen2();
                  },
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}
