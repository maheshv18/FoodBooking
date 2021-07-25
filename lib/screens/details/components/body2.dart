import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/details/components/item_image.dart';
import 'package:food_app/screens/details/components/order_button.dart';
import 'package:food_app/screens/details/components/title_price_rating.dart';

class body2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width:400,
          height:200,
    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjuk-ZnhaT3m-_xsKvuNke7wupq-EzJm8KKA&usqp=CAU",
      fit: BoxFit.fitWidth,)
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffF7EDDF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopName(name: "Chings"),
          TitlePriceRating(
            name: "Noodles and Soup",
            numOfReviews: 32,
            rating: 5,
            price: 15,
            onRatingChanged: (value) {},
          ),
          Text(
            "Why order-in when you can enjoy easy-to-cook Schezwan noodles at home in just two minutes. Chings Schezwan Noodles are the best noodles for a quick-fix meal or a masaledar snack that will send your tastebuds on a crazy, spice-licious journey. Prepared in a state-of-the-art factory with a patented recipe for non-sticky, non-mushy and uniformly coated Chinese noodles, Chings masala noodles veg. are nothing like you have tasted before and promise to satiate your hunger with a melange of desi and Schezwan spices.",
            style: TextStyle(
              height: 1.5,
              color: Colors.black,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          // Free space  10% of total height
          OrderButton(
            size: size,
            press: () {Navigator.pop(context);},
          ),

        ],
      ),

    );
  }

  Row shopName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: Colors.deepOrange,
        ),
        SizedBox(width: 10),
        Text(name,style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
            fontSize: 15)),
      ],
    );
  }
}
