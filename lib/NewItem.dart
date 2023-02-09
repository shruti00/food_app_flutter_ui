import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app/dish.dart';
import 'package:food_app/food.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            _fooditems('Pasta', 'images/pass.jpg',
                'Taste the Italian Pizza with some sauce', 'Rs.250'),
            _fooditems('Pizza', 'images/pizz.jpg',
                'Pizza topped with cheese & herbs', 'Rs.300'),
            _fooditems('Burger', 'images/bur.jpg',
                'Veg burger with crispy pattice', 'Rs.200'),
            _fooditems('Biryani', 'images/hydbiryani.jpg',
                'Hyderabadi chicken biryani', 'Rs.400')
          ],
        ),
      ),
    );
  }

  Widget _fooditems(
      String name, String imageurl, String description, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 360,
        height: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3))
            ]),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Dish()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  imageurl,
                  height: 120,
                  width: 150,
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                /*  mainAxisAlignment: MainAxisAlignment.spaceAround,*/
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                        size: 25,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 18,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4),
                      itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                      onRatingUpdate: (index) {}),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    price,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
