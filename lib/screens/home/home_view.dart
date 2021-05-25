import 'package:desafio1/data/movie_response.dart';
import 'package:desafio1/screens/components/movie_item_view.dart';
import 'package:desafio1/screens/home/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: FutureBuilder<MovieResponse>(
                  future: controller.movieResponse,
                  builder: (context, snapshot) {
                    print(snapshot.connectionState);
                    if (snapshot.connectionState != ConnectionState.done &&
                        snapshot.connectionState != ConnectionState.none) {
                      return CircularProgressIndicator();
                    }
                    print(snapshot.hasData);

                    if (snapshot.hasData) {
                      print("*******");
                      print(snapshot.data.movies[0].title.toString());
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text("Upcoming"),
                          ),
                          Expanded(
                              child: ListView.builder(
                                  itemCount: snapshot.data.movies.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ItemMovieView(
                                      title: snapshot.data.movies[index].title,
                                      urlImage:
                                          snapshot.data.movies[index].poster,
                                    );
                                  }))
                        ],
                      );
                    } else {
                      return Text('Nenhum filme');
                    }
                  }),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    controller.loadMovies();
                  });
                },
                child: Text("Carregar Filmes")),
          ),
        ],
      ),
    );
  }
}
