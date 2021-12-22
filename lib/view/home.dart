import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MVC-1'),
        backgroundColor: Colors.pink[100],
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                icon: const Icon(
                  Icons.add,
                  size: 40.0,
                )),
            const SizedBox(width: 20.0),
            Text(
              '$count',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 20.0),
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                  },
                  icon: const Icon(
                    Icons.minimize,
                    size: 40.0,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
