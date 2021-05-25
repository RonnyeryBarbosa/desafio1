import 'package:desafio1/data/movie_response.dart';
import 'package:desafio1/networking/API.dart';

class HomeModel {
  Future<MovieResponse> _movieResponse;
  Future<MovieResponse> get movieResponse => _movieResponse;

  final APIService api;

  HomeModel({this.api = const APIService()});

  fetchMovie() {
    _movieResponse = api.fetchMovie();
  }
}
