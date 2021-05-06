import 'package:desafio1/screens/components/movie_item_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("dsadada"),
          Expanded(
              child: ListView(
            children: [ItemMovieView(), ItemMovieView()],
          ))
        ],
      ),
    );
  }
}
