import 'package:flutter/material.dart';

class screenTwo extends StatelessWidget {
  const screenTwo(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen two"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage('images/a.jpg'),
              fit: BoxFit.fill,
              width: 200,
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("back"),
            )
          ],
        ),
      ),
    );
  }
}
