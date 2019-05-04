import 'dart:async';
import 'package:beautyphoto/com/tom/beautypohto/models/ItemModel.dart';
import 'MoviceApiProvier.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}
