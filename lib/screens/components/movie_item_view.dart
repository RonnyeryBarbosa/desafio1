import 'package:flutter/material.dart';

class ItemMovieView extends StatelessWidget {
  final String title;
  final String urlImage;
  const ItemMovieView({Key key, this.title, this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black,
      ),
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
            child: Image.network(
              "https://image.tmdb.org/t/p/w500$urlImage",
              height: 200,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "$title",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
