import 'package:flutter/material.dart';
import 'package:flutter1/CounterPage.dart';
import 'package:flutter1/PhotosList.dart';
import 'package:flutter1/SendData.dart';
import 'package:flutter1/ThirdPage.dart';
import 'package:flutter1/ToDoList.dart';
import 'package:flutter1/FetchHttp.dart';
import 'package:flutter1/WebSocketPage.dart';
import 'package:flutter1/WriteFile.dart';
import 'package:flutter1/shopping/shopping-list.dart';
import 'package:flutter1/TabsPage.dart';
import 'shopping/product.dart';
import 'shopping/shopping-list.dart';
import 'SecondPage.dart';
import 'HomePage.dart';
import 'FormPage.dart';

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
      '/third': (context) => ThirdPage(),
        '/tabs': (context) => TabsPage(),
        '/counter': (context) => CounterPage(),
        '/shoppinglist': (context) => ShoppingList(
              products: <Product>[
                Product(name: 'Eggs'),
                Product(name: 'Flour'),
                Product(name: 'Chocolate chips'),
              ],
            ),
        '/form': (context) => FormPage(),
        '/todo': (context) => TodosScreen(
              todos: List.generate(
                20,
                (i) => Todo(
                  'Todo $i',
                  'A description of what needs to be done for Todo $i',
                ),
              ),
            ),
        '/fetchHttp': (context) => FetchHttp(),
        '/sendHttp': (context) => SendDataHttp(),
        '/photosList': (context) => PhotosListPage(title: 'Photo List Page'),
        '/webSocket': (context) => WebSocketPage(title: 'Web Socket page'),
        '/writeFile': (context) => WriteFile(),
      },
    ),
  );
}
