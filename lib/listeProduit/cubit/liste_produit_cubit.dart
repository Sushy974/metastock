import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../CustomWidget/MouvementCardCustomWidget.dart';
import '../../model/product.dart';

part 'liste_produit_state.dart';

class ListeProduitCubit extends Cubit<ListeProduitState> {
  ListeProduitCubit() : super(const ListeProduitState());

  void changeVisibility({required int index}) {
    if (index == 0) {
      emit(state.copyWith(
        visibilityListePorduit: true,
      ));
    }
    if (index == 1) {
      emit(state.copyWith(
        visibilityListePorduit: false,
      ));
    }
  }

  TypeMouvement getRandomTypeMouvement() {
    // Création d'une instance de Random
    final random = Random();

    // Génération d'un index aléatoire basé sur le nombre d'éléments dans l'énum
    int index = random.nextInt(TypeMouvement.values.length);

    // Retourne la valeur de l'énum correspondant à l'index aléatoire
    return TypeMouvement.values[index];
  }

  int getRandomNumber() {
    // Crée une instance de Random
    final random = Random();

    // Génère un nombre aléatoire entre 0 (inclus) et 101 (exclus)
    return random.nextInt(101);
  }

  List<Product> generateRandomProducts(int count) {
    final random = Random();
    List<Product> products = [];

    for (int i = 0; i < count; i++) {
      bool archive = random.nextBool();
      String description = 'Product Description ${random.nextInt(1000)}';
      String name = 'Product ${random.nextInt(1000)}';
      String picture = 'assets/images/product_${random.nextInt(100)}.png';
      int stock = random.nextInt(100);
      int threshold = random.nextInt(10);
      int uniprice = random.nextInt(1000);

      products.add(Product(
          archive, description, name, picture, stock, threshold, uniprice));
    }

    return products;
  }
}
