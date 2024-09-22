import "product.dart";
import "cart.dart";
class Order{
  int id = -1;
  List<Product> productList = [];
  double totalAmount = 0;
  DateTime date = DateTime.now();
  Order(this.id,this.productList);

  Order.fromCart({required Cart cart,required int id}){
    this.id = id;
    this.productList = cart.productsList;
    this.totalAmount = cart.totalPrice;
  }

  printOrderSummary(){
    print("""
    Order ID: $id
    Date: $date
    ===========================
    Products: ${
      productList.map((e)=>"""
      Product ID: ${e.id}
      Product Name: ${e.name}
      Product Price: ${e.price}
      ===========================
      """).join("\n")
    }
    =================================================================================
    """);
  }
}