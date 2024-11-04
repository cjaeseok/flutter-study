import 'package:dart_01/dart_01.dart' as dart_01;
import 'dart:io';


String homeline = '''
--------------------------------------------------------------------------------
[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보 / [4]프로그램종료
--------------------------------------------------------------------------------
''';
String choose1 = '[1] 상품 목록 보기';
String choose2 = '[2] 장바구니에 담기';
String choose3 = '[3] 장바구니에 담긴 상품의 총 가격 보기';
String choose4 = '[4] 프로그램 종료';

class Product {
  String name;
  int price;

  Product(this.name, this.price);

  @override
  String toString() {
    return '''$name / $price원''';
  }
}

class ShoppingMall {
  List<Product> Products = [
    Product('셔츠', 45000),
    Product('원피스', 30000),
    Product('반팔티', 35000),
    Product('반바지', 38000),
    Product('양말', 5000),
  ];

  void showProducts() {
    for (var product in Products) {
      print(product);
    }
  }
}


void main() {
  print(homeline);

  String? input = stdin.readLineSync();
  ShoppingMall shoppingmall = ShoppingMall();

  if (input == '1') {
    print(homeline);
    print(choose1);
    shoppingmall.showProducts();
  }
  else if (input == '2') {
    print(homeline);
    print(choose2);
  }
  else if (input == '3') {
    print(homeline);
    print(choose3);
  }
  else if (input == '4') {
    print(homeline);
    print(choose4);
  }
  else {
    print('1,2,3,4 중에 입력해야 알려준다')
    ;
  }
}