/*
  Multiplication Test
  Goal: multiply two numbers
  Input: two parameters, of type : integer
  Output: return value of type integer (positive or negative)
  Edge cases:
    - if one of the parameters is 0, the result is 0
    - if one of the parameters is 1, the result is the other parameter
    - if one of the parameters is -1, the result is the negative of the other parameter
    - if both parameters are negative, the result is positive
    - if both parameters are positive, the result is positive
  Exceptions:
    - if one of the parameters is null, throw an exception
    - if one of the parameters is not an integer, throw an exception
    - if both parameters are null, throw an exception
    - if both parameters are not integers, throw an exception
*/
import 'package:test/test.dart';
import '../bin/models/cart.dart';
import '../bin/models/product.dart';
import '../bin/multiply.dart';

void main() {
  test(
    "test adding product to cart",
    () {
      // Arrange
      Product product = Cloth(size: "M", gender: "Male", id: 1, color: "Black", name: "T-shirt", price: 1000);
      Cart cart = Cart();
      // Act
      cart.addProduct(product);
      // Assert
      expect(cart.productsList.length, equals(1));
      expect((cart.productsList[0] as Cloth).size,equals("M"));
    },
  );
}
