import 'package:flutter/material.dart';
import 'package:phone_project/pages/home_page.dart';
import 'package:phone_project/pages/reg_page.dart';

class LogPage extends StatelessWidget {
  const LogPage({Key? key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Авторизация'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [const Padding(
          padding: EdgeInsets.only(top:30),
          child: Icon(
              Icons.ac_unit,
              color: Colors.lightBlue,
              size: 100
          ),
        ),
          const Padding(
            padding: EdgeInsets.only(top:30),
            child: Text(
                'Введите логин и пароль'
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Логин'
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Пароль'
              ),
            ),
          ),ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage())
                );
              },
              child: const Text('Войти')
          ),
          TextButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegForm())
                );
              },
              child: const Text(
                'Регистрация',
              )

          )
        ],
      ),
    );
  }
}



