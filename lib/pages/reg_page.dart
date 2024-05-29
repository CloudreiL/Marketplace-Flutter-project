import 'dart:math';
import 'package:flutter/material.dart';
import 'package:phone_project/components/classes.dart';
import 'package:phone_project/pages/user_page.dart';

class RegForm extends StatelessWidget {
  const RegForm({super.key});

  static String email = '';
  static String login = '';
  static String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('ChillMart'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView( // Добавлено для прокрутки
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Icon(
                Icons.ac_unit,
                color: Colors.lightBlue,
                size: 100,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text('Введите данные для регистрации'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: 'Email',
                ),
                onChanged: (value) { email = value; },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: 'Логин',
                ),
                onChanged: (value) { login = value; },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: 'Пароль',
                ),
                onChanged: (value) { password = value; },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const UserPage(),
                  ),
                );
                Account.email = email;
                Account.login = login;
                Account.password = password;
              },
              child: const Text('Регистрация'),
            ),
          ],
        ),
      ),
    );
  }
}
