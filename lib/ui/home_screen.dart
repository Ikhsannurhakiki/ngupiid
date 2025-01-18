import 'package:flutter/material.dart';
import 'package:ngupiid/ui/mainScreen.dart';
import 'package:ngupiid/data/dummydata.dart';
import 'package:ngupiid/ui/components/itemCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: dummyProducts.length,
        itemBuilder: (context, index) {
          final product = dummyProducts[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: ItemCard(product: product),
          );
        },
      ),
    );
  }
}
