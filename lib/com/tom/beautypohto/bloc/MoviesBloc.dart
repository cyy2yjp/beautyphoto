import 'package:beautyphoto/com/tom/beautypohto/models/ItemModel.dart';
import 'package:beautyphoto/com/tom/beautypohto/resource/Repository.dart';
import 'package:rxdart/rxdart.dart';

class MoviesBloc{

  final _repository = Repository();
  final _moviesFetcher = PublishSubject<ItemModel>();

  Observable<ItemModel> get allMovies => _moviesFetcher.stream;

  fetchAllMovies() async {
    ItemModel itemModel = await _repository.fetchAllMovies();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose(){
    _moviesFetcher.close();
  }
}

final bloc = MoviesBloc();