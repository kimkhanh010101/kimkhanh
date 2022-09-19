import '../../../models/cart_item.dart';

class CartManager {
  final Map<String, CartItem> _items = {
    'p1': CartItem(
      id: 'c1',
      title: 'Red Shift',
      price: 29.29,
      quantity: 2,
    ),
  };

  int get productCount {
    return _items.length;
  }

  List <CartItem> get products {
    return _items.values.toList();
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }
}