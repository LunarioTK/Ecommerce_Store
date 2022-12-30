class ProdutoModel {
  String name;
  String price;
  String imgUrl;

  ProdutoModel({required this.name, required this.price, required this.imgUrl});
}

class ProdutoData {
  String name;
  String price;
  String imgUrl;
  String uid;

  ProdutoData(
      {required this.uid,
      required this.name,
      required this.price,
      required this.imgUrl});
}
