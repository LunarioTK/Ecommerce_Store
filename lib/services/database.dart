import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_store/models/produto.dart';
import 'package:firebase_storage/firebase_storage.dart';

class DatabaseServices {
  late String? imgUrl;
  late String name;
  late String price;

  DatabaseServices({this.imgUrl});

  // Collection reference
  final CollectionReference productCollection =
      FirebaseFirestore.instance.collection('Produto');

  final storage = FirebaseStorage.instance;

  List<ProdutoModel> _produtoListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return ProdutoModel(
        name: doc.get('name') ?? '',
        price: doc.get('price') ?? '',
        imgUrl: doc.get('image') ?? '',
      );
    }).toList();
  }

  Stream<List<ProdutoModel>> get products {
    return productCollection.snapshots().map(_produtoListFromSnapshot);
  }
}
