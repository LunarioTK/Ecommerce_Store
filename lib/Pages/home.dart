import 'package:ecommerce_store/utils/Cat_box.dart';
import 'package:ecommerce_store/utils/clothes_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 30, 5, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Menu button
                const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.menu,
                    size: 35.0,
                    color: Colors.black,
                  ),
                ),

                Row(
                  children: const [
                    // Search button
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.search,
                        size: 35.0,
                        color: Colors.black,
                      ),
                    ),

                    // Bag button
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.wallet_rounded,
                        size: 35.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // Find Your Clothes Text
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Find Your Clothes',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Sale Banner
            Center(
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/sale_img.jpg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Categories
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 10, 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    CatBox(catName: 'All'),
                    CatBox(catName: 'Winter'),
                    CatBox(catName: 'Man'),
                    CatBox(catName: 'Woman'),
                    CatBox(catName: 'Sports'),
                  ],
                ),
              ),
            ),

            // Clothes
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  ClothesCard(
                    img: 'assets/clothes_01.jpg',
                    clothesName: 'All in jorney jacket',
                    price: '200',
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
