import 'package:flutter/material.dart';

class UserPage extends StatelessWidget{
  const UserPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(Icons.ac_unit),
            Text('ChillMart'),
          ],
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset('assets/images/untitled_user.png'),
              )
            )
          ],
        ),
      ),
    );
  }
}