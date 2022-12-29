import 'package:ecommerce_store/models/produto.dart';
import 'package:flutter/material.dart';

class ClothesCard extends StatelessWidget {
  final ProdutoModel produto;
  //final String img, clothesName, price;
  const ClothesCard({super.key, required this.produto});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 190,
          height: 260,
          margin: const EdgeInsets.only(left: 15, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                produto.imgUrl,
              ),
            ),
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.favorite_outline,
                size: 25,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        Text(
          produto.name,
          style: TextStyle(
            color: Colors.grey.shade600,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          '${produto.price} €',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
