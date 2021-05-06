import 'package:flutter/material.dart';

class ItemMovieView extends StatelessWidget {
  final String title;
  final String urlImage;
  const ItemMovieView({Key key, this.title, this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: [Text("dsdds")],
      ),
    );
  }
}
