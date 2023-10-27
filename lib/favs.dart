import 'package:flutter/material.dart';
import 'package:flutter_codelabs_app/main.dart';
import 'package:provider/provider.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favourites.isEmpty) {
      return Center(
        child: Text('No favourites yet :c'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.favourites.length} favourites'),
        ),
        for (var fav in appState.favourites)
          Card(
            child: ListTile(
              leading: Icon(Icons.favorite),
              title: Text(fav.asLowerCase),
            ),
          ),
      ],
    );
  }
}
