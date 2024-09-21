import "product.dart";
class Cart{
  List<Product> productsList = [];
  double get totalPrice {
    double total = 0;
    for (Product product in productsList){
      total += product.price;
    }
    return total;
  }
  void addProduct(Product productValue)=> productsList.add(productValue);

  void removeProduct(int id)=> productsList.removeWhere((e)=>e.id == id);
}