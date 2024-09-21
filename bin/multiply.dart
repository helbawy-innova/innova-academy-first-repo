dynamic multiply(dynamic x,dynamic y){
  if(!(x is int) || !(y is int)){
    throw Exception("One of the parameters is not an integer");
  }
  return (x * y );
}