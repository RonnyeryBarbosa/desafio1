import 'package:desafio1/data/movie_response.dart';
import 'package:desafio1/screens/home/home_model.dart';

class HomeController {
  final model = HomeModel();

  Future<MovieResponse> get movieResponse => model.movieResponse;

  loadMovies() {
    model.fetchMovie();
  }
}
