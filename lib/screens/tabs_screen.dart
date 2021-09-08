import 'package:flutter/material.dart';
import 'package:galaxies/models/category.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vamos cozinhar?'),
      ),
      body: Center(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).errorColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorias'),
              BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoritos')
        ]),
    );
  }
}
