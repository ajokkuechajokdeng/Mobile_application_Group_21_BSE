import 'package:flutter/material.dart';

void main() {
  runApp(const FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpeedyServe Food Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('SpeedyServe')
          ),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 200,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2wJaHc06HVfFrkUc-xb3dl3h8oPYiZEM-hA&s',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            const Text(
              'Popular Dishes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const [
                  FoodItemCard(
                    imageUrl: 'https://www.inspiredtaste.net/wp-content/uploads/2023/08/Cheese-Pizza-2-1200.jpg',
                    title: 'Pizza',
                    description: 'Delicious cheese pizza',
                  ),
                  FoodItemCard(
                    imageUrl: 'https://www.foodiesfeed.com/wp-content/uploads/2023/05/juicy-cheeseburger.jpg',
                    title: 'Burger',
                    description: 'Juicy beef burger',
                  ),
                  FoodItemCard(
                    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1etkmzZ2WuDN3qC1IVUpq25-09NZCelRFkw&s',
                    title: 'Pasta',
                    description: 'Tasty pasta with tomato sauce',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  // ignore: use_super_parameters
  const FoodItemCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.network(
            imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(description),
                Align(
                  alignment: Alignment.bottomRight,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Order Now'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
