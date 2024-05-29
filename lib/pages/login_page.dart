import 'package:flutter/material.dart';
import 'package:phone_project/pages/home_page.dart';
import 'package:phone_project/pages/reg_page.dart';

class LogPage extends StatelessWidget {
  const LogPage({super.key});

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
      body: SingleChildScrollView(
        child: Column(
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
             Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    labelText: 'Логин'
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    labelText: 'Пароль'
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage())
                  );
                },
                child: const Text('Войти')
            ),
            TextButton(
                onPressed: (){
                  Navigator.pushReplacement(
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
      ),
    );
  }
}



