import 'package:ecommerce_store/models/produto.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  late String imgUrl;
  final ProdutoModel produto;
  ProductPage({super.key, required this.produto});

  @override
  Widget build(BuildContext context) {
    //final produtProvider = Provider.of<List<ProdutoModel>?>(context) ?? [];

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 30, 5, 5),
        child: Column(
          children: [
            Image.network(produto.imgUrl),
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: Navigator.of(context).pop,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
