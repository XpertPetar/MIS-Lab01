import 'package:flutter/material.dart';
import 'package:lab1/models/clothing_model.dart';
import 'package:lab1/widgets/clothing_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Clothing> clothingItems = [
      Clothing(id: 1, name: 'Red Baseball Cap', image: 'assets/Baseball-Cap.png', description: 'A stylish red baseball cap', price: 15.0),
      Clothing(id: 2, name: 'Blue Hoodie', image: 'assets/Hoodie.png', description: 'A cozy blue hoodie', price: 40.0),
      Clothing(id: 3, name: 'White Sneakers', image: 'assets/White-Sneakers.png', description: 'Comfortable white sneakers', price: 60.0),
      Clothing(id: 4, name: 'Light Grey T-Shirt', image: 'assets/Light-Grey-T-Shirt.png', description: 'Casual light grey t-shirt', price: 20.0),
      Clothing(id: 5, name: 'Lakers Jersey', image: 'assets/Lakers-Jersey.png', description: 'Signed Kobe Bryant Lakers jersey', price: 100.0),
      Clothing(id: 6, name: 'Leeds United Kit', image: 'assets/Leeds-United-Kit.png', description: 'Wilfried Gnonto Leeds United kit', price: 50.0),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('216109', style: TextStyle(fontSize: 30)),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        semanticChildCount: clothingItems.length,
        childAspectRatio: 0.8,
        shrinkWrap: true,
        children: clothingItems.map((clothing) => ClothingCard(
          id: clothing.id,
          name: clothing.name,
          image: clothing.image,
          description: clothing.description,
          price: clothing.price,
        )).toList(),
      ),
    );
  }
}
