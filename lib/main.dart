import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  // TODO: runAPP(application: APP())
  runApp(const MyApp());
}

// * StatelessWidget -> method override -> build method
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  myCustomBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)) // Text()
            );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shopping List"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                myCustomBar("Cart is empty", context);
              },
              icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text("Apples"),
                  onTap: () {

                  }),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text("Bananas"),
                onTap: () {

                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text("Bread"),
                onTap: () {
                },
              ),
              ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text("Milk"),
                  onTap: () {

                  }),
              ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text("Eggs"),
                  onTap: () {

                  })
            ],
          ),
        ),
      ),
    );
  }
}
