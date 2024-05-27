import 'package:flutter/material.dart';

import 'package:phone_project/pages/user_page.dart';
import 'package:phone_project/pages/home_page.dart';
import 'package:phone_project/pages/cart_page.dart';

class FavPage extends StatelessWidget{
  const FavPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Сохраненное')
      ),

      body: Center(
                child: Container(
                  height: 150,
                  child: Column(
                    children: [
                      Icon(Icons.ac_unit, size: 100,),
                      Text('Здесь пока ничего нет:(',
                      style: TextStyle(
                        fontSize: 20
                      ),
                      )
                    ],
                  ),
                ),
        ),

      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              icon: const Icon(Icons.home_outlined),
            ),
            IconButton(
              onPressed: () {},
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