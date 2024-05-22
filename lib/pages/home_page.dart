import 'package:flutter/material.dart';
import 'package:phone_project/pages/login_page.dart';
import 'package:phone_project/pages/product_page.dart';
import 'package:phone_project/components/classes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static int ind = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.ac_unit),
            Text('ChillMart')
          ],
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: GridView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                InkWell(
                  onTap: () {
                    HomePage.ind = index; // Сохраняем индекс выбранного продукта
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductPage(
                          title: products[index].name,
                          productIndex: index, // Передаем индекс
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 260,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueGrey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Image.network(
                          products[index].photo,
                          width: 150,
                          height: 150,
                        ),
                        Text(
                          products[index].cost,
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          products[index].name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_basket_outlined),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogPage(title: ''),
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
