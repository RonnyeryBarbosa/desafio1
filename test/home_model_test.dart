import 'package:desafio1/data/movie.dart';
import 'package:desafio1/data/movie_response.dart';
import 'package:desafio1/networking/API.dart';
import 'package:desafio1/screens/home/home_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('FetchMovie should fill movie variable', () {
    final model = HomeModel(api: MockServiceAPI());

    model.fetchMovie();
    expect(model.movieResponse, completion(isNotNull));

    model.movieResponse.then((value) {
      for (var movie in value.movies) {
        expect(movie.title, "Teste");
      }
    });
  });
}

class MockServiceAPI extends APIService {
  @override
  Future<MovieResponse> fetchMovie() {
    final movie = MovieResponse([Movie("Teste", "", "")]);
    return Future.value(movie);
  }
}
