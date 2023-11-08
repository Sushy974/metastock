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
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
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
          padding: EdgeInsets.all(15.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              children: [
                Image(
                  image: AssetImage("assets/image/metastock.png"),
                  height: 100,
                ),
                Text("Stock : " + $product. + " ", style: styleSmall),
                Text("Price : ", style: styleSmall),
                Text("679,90 \$", style: styleSmall),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Flexible(
              flex: 1,
              child: Text(
                "GIGABYTE GEFORCE RTX 4070",
              ),
            )
          ]),
        ),
      ),
    );
  }
}
