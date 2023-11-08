import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../../CustomWidget/MouvementCardCustomWidget.dart';
import '../../CustomWidget/ProduitCardCustomWidget.dart';
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

  // Fonction pour générer un Product avec des valeurs aléatoires
  Product generateRandomProduct() {
    final random = Random();
    return Product(
      random.nextBool(),
      'Description ${random.nextInt(1000)}',
      'Product ${random.nextInt(1000)}',
      'assets/image/metastock.png', // Suppose que vous avez une image par défaut
      random.nextInt(100),
      random.nextInt(10),
      random.nextInt(500) + 1, // +1 pour éviter un prix de 0
    );
  }

// Fonction pour générer une liste de ProduitCardCustomWidget avec des Products aléatoires
  List<ProduitCardCustomWidget> generateRandomProductCards(int count) {
    return List.generate(count,
        (index) => ProduitCardCustomWidget(product: generateRandomProduct()));
  }
}
