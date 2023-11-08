import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

enum TypeMouvement { add, remouve }

class MouvementCardCustomWidget extends StatelessWidget {
  const MouvementCardCustomWidget({
    super.key,
    required this.typeMouvement,
    required this.quantity,
  });

  final TypeMouvement typeMouvement;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0.5, 0.5),
            blurRadius: 2,
            spreadRadius: 5,
            color: Colors.black54,
            inset: true,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("07/11/2023"),
                Text("GIGABYTE GEFORCE RTX 4070"),
              ],
            ),
            Icon(Icons.storefront),
            Visibility(
              visible: typeMouvement == TypeMouvement.add ? true : false,
              child: Icon(Icons.add),
            ),
            Visibility(
                visible: typeMouvement == TypeMouvement.remouve ? true : false,
                child: Icon(Icons.remove)),
            Text(quantity.toString(), style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
