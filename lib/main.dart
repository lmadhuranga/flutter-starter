import 'package:flutter/material.dart';
import 'package:flutter1/CounterPage.dart';
import 'package:flutter1/shopping/shopping-list.dart';
import 'package:flutter1/TabsPage.dart';
import 'shopping/product.dart';
import 'shopping/shopping-list.dart';
import 'SecondPage.dart';
import 'HomePage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey,
      ),
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => SecondScreen(),
        '/tabs': (context) => TabsPage(),
        '/counter': (context) => CounterPage(),
        '/shoppinglist': (context) => ShoppingList(
              products: <Product>[
                Product(name: 'Eggs'),
                Product(name: 'Flour'),
                Product(name: 'Chocolate chips'),
              ],
            ),
      },

    ),
  );
}
