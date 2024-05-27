import 'package:flutter/material.dart';
import 'package:phone_project/pages/user_page.dart';
import 'package:phone_project/pages/product_page.dart';
import 'package:phone_project/pages/cart_page.dart';
import 'package:phone_project/pages/fav_page.dart';

import 'package:phone_project/components/classes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static int ind = 0;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    List<Products> filteredProducts = products.where((product) {
      return product.name.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.ac_unit),
            Text('ChillMart',)
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Поиск...',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (query) {
                setState(() {
                  searchQuery = query;
                });
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    InkWell(
                      onTap: () {
                        HomePage.ind = products.indexOf(filteredProducts[index]); // Получаем индекс из оригинального списка
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductPage(
                              title: filteredProducts[index].name,
                              productIndex: HomePage.ind,
                            ),
                          ),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        margin: EdgeInsets.all(5),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  filteredProducts[index].photo,
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                filteredProducts[index].cost,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                filteredProducts[index].name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 0.7,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home_outlined),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavPage(),
                  ),
                );
              },
              icon: const Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartPage(),
                  ),
                );
              },
              icon: const Icon(Icons.shopping_basket_outlined),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserPage(),
                  ),
                );
              },
              icon: const Icon(Icons.account_circle_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
