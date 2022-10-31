import 'package:flutter/material.dart';
import 'screnTwo.dart';
void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});
  final name ="Sharif Dahir Siad";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              itemBuilder: ((context) => [
                    PopupMenuItem(value: "mogadishu", child: Text("Mogadishu")),
                    PopupMenuItem(value: "Hargesa", child: Text("Hargesa")),
                    PopupMenuItem(value: "Kismayo", child: Text("Kismayo"))
                  ]))
        ],
        title: Text("Screen one"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SafeArea(
              child: Image(
                image: AssetImage('images/a.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 300,
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => screenTwo(name)));
              },
              child: Text("go next Screen"),
            )
          ],
        ),
      ),
    );
    
  }
}