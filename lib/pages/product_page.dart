import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:phone_project/components/classes.dart';// Импортируем класс Liked для избранного

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key, required this.title, required this.productIndex}) : super(key: key);

  final String title;
  final int productIndex;

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final product = products[widget.productIndex];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.ac_unit),
            Text('ChillMart'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 350.0),
              items: product.photos.map((photo) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: ClipRRect(
                        child: Image.network(photo),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.cost,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                              if (isFavorite) {
                                Liked.items.add(LikedItem(product.name, product.cost, product.photo));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('${product.name} добавлен в избранное')),
                                );
                              } else {
                                Liked.items.removeWhere((item) => item.name == product.name);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('${product.name} удален из избранного')),
                                );
                              }
                            });
                          },
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10), // Добавляем отступ между стоимостью и описанием
                  Text(product.description),
                  SizedBox(height: 20), // Отступ перед кнопкой
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Cart.items.add(CartItem(product.name, product.cost, product.photo));
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${product.name} добавлен в корзину')),
                      );
                    },
                    child: Text('В корзину'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5), // Размер кнопки
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
