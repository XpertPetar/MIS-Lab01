import 'package:flutter/material.dart';
import 'package:lab1/models/clothing_model.dart';

class ClothingCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final String description;
  final double price;

  const ClothingCard({
    super.key,
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.blue[50],
        onTap: () => {
          Navigator.pushNamed(
            context,
            '/details',
            arguments: Clothing(id: id, name: name, image: image, description: description, price: price),
          )
        },
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.8), width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image, height: 100, width: 100),
              Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const Spacer(),
              Text('\$${price.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 14, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
