import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import '../const/Style.dart';
import '../model/product.dart';

class ProduitCardCustomWidget extends StatelessWidget {
  const ProduitCardCustomWidget({required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              offset: Offset(1, 1),
              blurRadius: 2,
              spreadRadius: 5,
              color: Colors.black54,
              inset: true,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              children: [
                const Image(
                  image: AssetImage("assets/image/metastock.png"),
                  height: 100,
                ),
                Text("Stock : " + product.stock.toString() + " ",
                    style: styleSmall),
                Text("Price : ", style: styleSmall),
                Text(product.uniprice.toString() + "\$", style: styleSmall),
              ],
            ),
            const SizedBox(
              width: 5,
            ),
            Flexible(
              flex: 1,
              child: Text(
                product.name,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
