class ItemModel {
  int page;
  int totalResults;
  int totalPages;
  List<ResultsListBean> results;

  ItemModel({this.page, this.totalResults, this.totalPages, this.results});

  ItemModel.fromJson(Map<String, dynamic> json) {    
    this.page = json['page'];
    this.totalResults = json['total_results'];
    this.totalPages = json['total_pages'];
    this.results = (json['results'] as List)!=null?(json['results'] as List).map((i) => ResultsListBean.fromJson(i)).toList():null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['total_results'] = this.totalResults;
    data['total_pages'] = this.totalPages;
    data['results'] = this.results != null?this.results.map((i) => i.toJson()).toList():null;
    return data;
  }

}

class ResultsListBean {
  String title;
  String posterPath;
  String originalLanguage;
  String originalTitle;
  String backdropPath;
  String overview;
  String releaseDate;
  bool video;
  bool adult;
  var voteAverage;
  double popularity;
  int voteCount;
  int id;
  List<int> genreIds;

  ResultsListBean({this.title, this.posterPath, this.originalLanguage, this.originalTitle, this.backdropPath, this.overview, this.releaseDate, this.video, this.adult, this.voteAverage, this.popularity, this.voteCount, this.id, this.genreIds});

  ResultsListBean.fromJson(Map<String, dynamic> json) {    
    this.title = json['title'];
    this.posterPath = json['poster_path'];
    this.originalLanguage = json['original_language'];
    this.originalTitle = json['original_title'];
    this.backdropPath = json['backdrop_path'];
    this.overview = json['overview'];
    this.releaseDate = json['release_date'];
    this.video = json['video'];
    this.adult = json['adult'];
    this.voteAverage = json['vote_average'];
    this.popularity = json['popularity'];
    this.voteCount = json['vote_count'];
    this.id = json['id'];

    List<dynamic> genreIdsList = json['genre_ids'];
    this.genreIds = new List();
    this.genreIds.addAll(genreIdsList.map((o) => int.parse(o.toString())));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['poster_path'] = this.posterPath;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['backdrop_path'] = this.backdropPath;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['video'] = this.video;
    data['adult'] = this.adult;
    data['vote_average'] = this.voteAverage;
    data['popularity'] = this.popularity;
    data['vote_count'] = this.voteCount;
    data['id'] = this.id;
    data['genre_ids'] = this.genreIds;
    return data;
  }
}
