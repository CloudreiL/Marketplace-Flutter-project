import 'package:flutter/material.dart';
import 'package:phone_project/pages/login_page.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Home Page'),
        backgroundColor: Colors.lightBlue,
      ),
      body:  Column(
          children: [const Padding(
            padding: EdgeInsets.only(top:50),
            child: Center(
              child: Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Center(
                child: Icon(
                  Icons.ac_unit,
                  size: 40,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top:30),
              child: Text(
                'We have nothing here! :D',
                style: TextStyle(
                    fontSize: 30
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(top:30),
                child: Container(
                  width: 400,
                  height: 130,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 180, 153, 236),
                            Color.fromARGB(255, 0, 183, 255),
                            Color.fromARGB(150, 0, 176, 255),
                          ],
                          tileMode: TileMode.mirror
                      )
                  ),
                )
            ),
          ]
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        child: Row(
          children: [
            IconButton(
                onPressed: (){}, icon: const Icon(
                Icons.favorite_border
            )
            ),
            IconButton(
                onPressed: (){}, icon: const Icon(
               Icons.shopping_basket_outlined
            )
            ),
            IconButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LogPage(title: '',))
              );
            },
            icon: const Icon(
                Icons.account_circle_outlined
            ),
          ),
          ],
        ),
      ),
    );
  }

}