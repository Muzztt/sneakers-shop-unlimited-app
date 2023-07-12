import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '235',
      description: 'The forward-thingking design of this lates signature shoe',
      imagePath: 'lib/images/nike2.png',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '220',
      description: 'The forward-thingking design of this lates signature shoe',
      imagePath: 'lib/images/nike1.png',
    ),
    Shoe(
      name: 'KD Treys',
      price: '235',
      description: 'The forward-thingking design of this lates signature shoe',
      imagePath: 'lib/images/nike3.png',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '235',
      description: 'The forward-thingking design of this lates signature shoe',
      imagePath: 'lib/images/nike2.png',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
