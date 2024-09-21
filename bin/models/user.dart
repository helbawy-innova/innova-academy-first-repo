import "address.dart";
abstract class User{
  int id;
  String name;
  String email;
  Address? address;
  User({required this.id, required this.name, required this.email, this.address});
}