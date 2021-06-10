import 'package:flutter/material.dart';
import './favourites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  final String title;
  const TabsScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.category,
                ),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favourites',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(title: 'Kiyungu'),
            FavouritesScreen(),
          ],
        ),
      ),
    );
  }
}
