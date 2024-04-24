import 'package:flutter/material.dart';

class RegForm extends StatelessWidget {
  const RegForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Регистрация'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top:30),
            child: Icon(
                Icons.ac_unit,
                color: Colors.lightBlue,
                size: 100
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top:50),
            child: Text(
                'Введите данные для регистрации'
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email'
              ),
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
                Navigator.pop(context);
              },
              child: const Text('Регистрация')
          ),
        ],
      ),
    );
  }
}
