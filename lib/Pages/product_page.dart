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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 450,
                  width: 400,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  child: Image.network(
                    produto.imgUrl,
                    fit: BoxFit.fill,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: Navigator.of(context).pop,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: IconButton(
                            icon: const Icon(Icons.favorite_outline),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: IconButton(
                            icon: const Icon(Icons.share),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name
                  Text(
                    produto.name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Price
                  Text(
                    '${produto.price}€',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
