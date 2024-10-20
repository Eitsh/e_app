// ignore_for_file: must_be_immutable, file_names

import 'package:e_app/details.dart';
import 'package:e_app/models/project.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  Product product;
  ProductCard({
    super.key,
    required this.product,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              product: widget.product,
            ),
          ),
        );
      },
      child: Stack(children: <Widget>[
        SizedBox(
          child: Column(children: [
            Text(widget.product.title),
            Text(r"$" "${widget.product.price.toString()}"),
            Image.asset(
              widget.product.imageUrl,
              height: 300,
              width: 300,
            )
          ]),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.black,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
        ),
      ]),
    );
  }
}
