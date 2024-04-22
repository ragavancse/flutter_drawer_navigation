import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ]),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Image.asset(
                          'assets/pexels-chloekalaartist-1043474.jpg'),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text(
              'John Doe',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'johndoe@example.com',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Dob :'), Text('01/12/2000')],
            )
          ],
        ),
      ),
    );
  }
}
