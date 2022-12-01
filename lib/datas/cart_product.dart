import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:loja_virtual/datas/product_data.dart';

class CartProduct{

  String cid; //id do carinho
  String category; //categoria do produto
  String pid; //id do produto
  int quantity; //quantidade de produtos
  String size; //tamanho do produto
  ProductData productData;

  CartProduct();

  CartProduct.fromDocument(DocumentSnapshot document){

    //adicionando produto no carinho
    cid = document.documentID;
    category = document.data["category"];
    pid = document.data["pid"];
    quantity = document.data["quantity"];
    size = document.data["size"];
  }

  //adicionando produto no banco de dados, para isso transformar em um mapa
  Map<String, dynamic> toMap (){

    return {
      "category": category,
      "pid": pid,
      "quantity": quantity,
      "size": size,
      "product": productData.toResumeMap(),
    };
  }

}


