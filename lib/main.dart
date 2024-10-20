// ignore_for_file: must_be_immutable

import 'package:e_app/Custom%20widget/Card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'models/project.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  List<Product> products = [
    Product(
        id: 'n',
        price: 200,
        title: "Green",
        imageUrl: 'assets/images/chair1.jpg'),
    Product(
        id: 'n',
        price: 200,
        title: "Grey",
        imageUrl: 'assets/images/chair2.jpg'),
    Product(
        id: 'n',
        price: 200,
        title: "Wood",
        imageUrl: 'assets/images/chair3.jpg'),
    Product(
        id: 'n',
        price: 200,
        title: "Softy Mint",
        imageUrl: 'assets/images/chair4.jpg'),
    Product(
        id: 'n',
        price: 200,
        title: "Red Metal",
        imageUrl: 'assets/images/chair5.PNG'),
    Product(
        id: 'n',
        price: 200,
        title: "Lux",
        imageUrl: 'assets/images/chair6.PNG'),
    Product(
        id: 'n',
        price: 200,
        title: "Petrol",
        imageUrl: 'assets/images/chair8.PNG'),
    Product(
        id: 'n',
        price: 200,
        title: "Mint",
        imageUrl: 'assets/images/chair9.PNG'),
    Product(
        id: 'n',
        price: 200,
        title: "Lazy",
        imageUrl: 'assets/images/chair10.PNG'),
    Product(
        id: 'n',
        price: 200,
        title: "FIg",
        imageUrl: 'assets/images/chair11.PNG'),
    Product(
        id: 'n',
        price: 200,
        title: "Softy Pink",
        imageUrl: 'assets/images/chair12.PNG'),
    Product(
        id: 'n',
        price: 200,
        title: "Pinky",
        imageUrl: 'assets/images/chair7.PNG'),
  ];
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.shopping_cart),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.profile_tick,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade700,
                  ),
                  prefixIcon: const Icon(Iconsax.search_normal),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  runSpacing: 20,
                  spacing: 10,
                  children: products
                      .map((product) => ProductCard(product: product))
                      .toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
