import 'package:flutter/material.dart';
import 'package:senobookstore/models/product_model.dart';
import 'package:senobookstore/pages/product_page.dart';
import 'package:senobookstore/theme.dart';

class ProductFamiliar extends StatelessWidget {
  final ProductModel product;

  ProductFamiliar(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductPage(product),
          ),
        );
      },
      child: Container(
        width: 65,
        height: 65,
        margin: EdgeInsets.only(
          right: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color(0xffECEDEF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              // 'assets/image_example.png',
              product.galleries![0].url.toString(),
              // product.galleries![0].url.toString(),
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            
          ],
        ),
      ),
    );
  }
}
