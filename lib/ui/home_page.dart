import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            children: [
              SizedBox(height: 10),
              Text('This is a Cupertino App'),
              SizedBox(height: 10),
              CupertinoButton(
                onPressed: () {
                  // Perform some action here
                },
                child: Text('Tap Me'),
              ),
              SizedBox(height: 10),
              Text('This is a Material App'),
              SizedBox(height: 10),
              MaterialButton(
                onPressed: () {
                  // Perform some action here
                },
                child: Text('Tap Me'),
              ),
              SizedBox(height: 10),
              Text('This is a FAB'),
              SizedBox(height: 10),



            ]
        ),

      ),

    );
  }
}