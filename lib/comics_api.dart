import 'package:dio/dio.dart';
import 'package:lpdw_project/comics_response.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'comics_api.g.dart';

@RestApi()
abstract class ComicsAPI {
  factory ComicsAPI(Dio dio, {required String baseUrl}) = _ComicsAPI;

  @GET('/issues')
  Future<PreviewComicsResponse> getComics();

  @GET('/issue/:id')
  Future<ComicsResponse> getComicWithId(@Path('id') String id);

  @GET('/series_list')
  Future<PreviewSeriesResponse> getSeries();

  @GET('/series/:id')
  Future<PreviewSeriesResponse> getSeriesWithId(@Path('id') String id);

  @GET('/movies')
  Future<PreviewMovieResponse> getMovies();

  @GET('/movie/:id')
  Future<PreviewMovieResponse> getMovieWithId(@Path('id') String id);
}

class ComicsApiManager {
  final ComicsAPI _api = ComicsAPI(
      Dio(BaseOptions(queryParameters: {
        'api_key': '9e1118381d0fab2cbf7bd532534d5b3bee0cab4e',
        'format': 'json'
      })),
      baseUrl: 'https://comicvine.gamespot.com/api/');

  Future<PreviewComicsResponse> getComics() {
    return _api.getComics();
  }

  Future<ComicsResponse> getComicWidthId(String id) {
    return _api.getComicWithId(id);
  }

  Future<PreviewSeriesResponse> getSeries() {
    return _api.getSeries();
  }

  Future<PreviewSeriesResponse> getSeriesWithId(String id) {
    return _api.getSeriesWithId(id);
  }

  Future<PreviewMovieResponse> getMovies() {
    return _api.getMovies();
  }

  Future<PreviewMovieResponse> getMovieWithId(String id) {
    return _api.getMovieWithId(id);
  }
}
