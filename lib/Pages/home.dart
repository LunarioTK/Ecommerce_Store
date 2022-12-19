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

            // Sale Box
            Center(
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/sale_img.jpg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
