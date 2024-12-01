import 'package:flutter/material.dart';
import 'package:lab1/models/clothing_model.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final Clothing clothing = ModalRoute.of(context)!.settings.arguments as Clothing;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          clothing.name,
          style: const TextStyle(fontSize: 26),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  clothing.image,
                  height: 250,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                clothing.name,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  clothing.description,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Price: \$${clothing.price}',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
