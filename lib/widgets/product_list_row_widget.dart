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
        child: Column(
          children: [
            SizedBox(
              height: 130.0,
              width: MediaQuery.of(context).size.width/2,
              child: Image.network("https://cdn.pixabay.com/photo/2015/12/09/11/vegetables-1085063_960_720.jpg"),
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
    );
  }

}
