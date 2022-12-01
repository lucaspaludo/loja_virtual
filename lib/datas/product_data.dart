import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData {
  String category;
  String title;
  String id;
  String description;

  double price;

  List images;
  List size;

  ProductData.fromDocument(DocumentSnapshot snapshot){
    id = snapshot.documentID;
    title = snapshot.data["title"];
    description = snapshot.data["description"];
    price = snapshot.data["price"];
    images = snapshot.data["images"];
    size = snapshot.data["size"];
  }

  Map<String, dynamic> toResumeMap(){

    return {
      "title": title,
      "description": description,
      "price": price,
    };


  }
}