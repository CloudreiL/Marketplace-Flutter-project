import 'package:flutter/material.dart';

import 'package:phone_project/pages/home_page.dart';
import 'package:phone_project/pages/login_page.dart';
import 'package:phone_project/pages/reg_page.dart';
import 'package:phone_project/pages/cart_page.dart';
import 'package:phone_project/pages/fav_page.dart';
import 'package:phone_project/components/classes.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  void _logout(BuildContext context) {
    // Сбрасываем данные аккаунта
    Account.email = "";
    Account.login = "";
    Account.password = "";
    // Обновляем UI
    (context as Element).markNeedsBuild();
  }

  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = Account.email.isNotEmpty && Account.login.isNotEmpty && Account.password.isNotEmpty;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 70, left: 20, right: 20), // Отступы сверху и по бокам
            child: Align(
              alignment: Alignment.topCenter, // Выравнивание по верхнему центру
              child: Container(
                width: double.infinity, // Контейнер занимает всю ширину за вычетом отступов
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(64, 196, 255, 50),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Image.network(
                          'https://i.ibb.co/jH9v82r/im-bf1a2c44-4bc1-41e3-be65-cd5ac9a5b438.png',
                          width: 70,
                          height: 70,
                        ),
                      ),
                    ),
                    if (isLoggedIn) ...[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          Account.login,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            _logout(context);
                          },
                          child: Text('Выйти'),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.red,
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ] else ...[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LogPage(),
                              ),
                            );
                          },
                          child: Text('Войти'),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                            foregroundColor: Colors.blueGrey,
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegForm(),
                              ),
                            );
                          },
                          child: Text('Регистрация'),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                            foregroundColor: Colors.blueGrey,
                            textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20), // Отступы сверху и по бокам
            child: Align(
              alignment: Alignment.topCenter, // Выравнивание по верхнему центру
              child: Container(
                width: double.infinity, // Контейнер занимает всю ширину за вычетом отступов
                height: 180,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(64, 196, 255, 50),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(onPressed: (){},
                      child: Text('Заказы',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(color: Colors.white),
                    TextButton(onPressed: (){},
                      child: Text('Возвраты',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(color: Colors.white,),
                    TextButton(onPressed: (){},
                      child: Text('Скидки',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20), // Отступы сверху и по бокам
            child: Align(
              alignment: Alignment.topCenter, // Выравнивание по верхнему центру
              child: Container(
                width: double.infinity, // Контейнер занимает всю ширину за вычетом отступов
                height: 120,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(64, 196, 255, 50),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(onPressed: (){},
                      child: Text('Отзывы',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(color: Colors.white),
                    TextButton(onPressed: (){},
                      child: Text('Настройки',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
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
              onPressed: () {},
              icon: const Icon(Icons.account_circle_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
