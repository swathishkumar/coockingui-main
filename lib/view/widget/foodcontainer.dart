// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FoodContainer extends StatelessWidget {
  const FoodContainer({
    super.key,
    required this.img,
    required this.food,
    required this.time,
    required this.rating,
    required this.price,
  });
  final String img;
  final String food;
  final String time;
  final String price;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        border: Border.symmetric(),
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffe3e3e3),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Icon(Icons.favorite_border)],
            ),
          ),
          CircleAvatar(
            radius: 65,
            backgroundImage: NetworkImage(img),
          ),
          Text(
            food,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(time),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.star_border,
                    size: 16,
                    color: Colors.amber,
                  ),
                  Text(rating),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      price,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.symmetric(),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    color: Colors.green),
                child: Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
