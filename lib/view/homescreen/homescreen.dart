// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coockingui/model/dummydb.dart';
import 'package:coockingui/view/widget/foodcontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 30,
                    ),
                    Text(
                      "Habiganj City",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffe3e3e3),
                  child: Icon(Icons.sort),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Find The ",
                  style: TextStyle(fontSize: 34),
                ),
                Text("Best",
                    style:
                        TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
              ],
            ),
            Row(
              children: [
                Text(
                  "Food ",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Around You",
                  style: TextStyle(fontSize: 34),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                  decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffe3e3e3),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.tune),
                hintText: "Search your favorite food",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide.none),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Find  ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "5km >",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.symmetric(),
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Salads",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    )),
                  ),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.symmetric(),
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffe3e3e3)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Hot Sale",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    )),
                  ),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.symmetric(),
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffe3e3e3)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Popularity",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: saladRecipes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 15,
                    mainAxisExtent: 254,
                    crossAxisSpacing: 15,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => FoodContainer(
                  img: saladRecipes[index]["img"],
                  food: saladRecipes[index]["title"],
                  time: saladRecipes[index]["title2"],
                  rating: saladRecipes[index]["title3"],
                  price: saladRecipes[index]["title4"],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
