import 'package:flutter/material.dart';

class RegForm extends StatelessWidget {
  const RegForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('ChillMart'),
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
           Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: 'Email'
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
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
                Navigator.pop(context);
              },
              child: const Text('Регистрация')
          ),
        ],
      ),
    );
  }
}
