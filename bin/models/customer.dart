import "dart:math";
import "product.dart";
import "user.dart";
import "order_model.dart";
import "cart.dart";
class Customer extends User{
  Customer({required super.id, required super.name, required super.email,this.wallet = 500});
  List<Order> ordersList = [];
  double wallet = 0;
  Cart cart = Cart();

  puy(){

    /* code check balance
    double totalPrice = calculateTotalPrice();
    bool check = checkBalance(totalPrice);
    if(check){
      transferMoney(totalPrice);
      var order = createOrder();
      saveOrderToDatabase(order);
    }
    code start payment transaction
    ========================
    ========================
    ========================
    ========================
    ========================
    code create order/recite
    ========================
    ========================
    ========================
    ========================
    ========================
    save it on database
    ========================
    ========================
    ========================
    ========================
    ========================
    */
  }
  selectProduct(Product product){
    cart.addProduct(product);
  }
  removeProduct(int id){
    cart.removeProduct(id);
  }
  showOrders(){
    for (Order order in ordersList){
      order.printOrderSummary();
    }
  }
}

class CustomerData{

}