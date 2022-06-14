import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductListRowWidget extends StatelessWidget{
  Product product;
  ProductListRowWidget(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: SingleChildScrollView(  // ben ekledim
          child: Column(
            children: [
              SizedBox(
                height: 120.0,
                width: MediaQuery.of(context).size.width/2,
                child: Image.network("https://cdn.pixabay.com/photo/2016/10/25/13/16/pumpkin-1768857_960_720.jpg"),
              ),
              Text(product.productName),
              Text(
                product.unitPrice.toString(),
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}








