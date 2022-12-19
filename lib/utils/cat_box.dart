import 'package:flutter/material.dart';

class CatBox extends StatelessWidget {
  final String catName;
  const CatBox({super.key, required this.catName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        catName,
      ),
    );
  }
}
