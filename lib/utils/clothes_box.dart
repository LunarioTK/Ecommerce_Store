import 'package:flutter/material.dart';

class ClothesCard extends StatelessWidget {
  final String img, clothesName, price;
  const ClothesCard(
      {super.key,
      required this.img,
      required this.clothesName,
      required this.price});

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
              image: AssetImage(
                img,
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
          clothesName,
          style: TextStyle(
            color: Colors.grey.shade600,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          '$price €',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
