import 'package:json_annotation/json_annotation.dart';
import 'package:lpdw_project/structure.dart';

part 'comics_response.g.dart';

@JsonSerializable(explicitToJson: true)
class PreviewComicsResponse {
  final List<PreviewComicsResponseData> results;

  PreviewComicsResponse(this.results);

  factory PreviewComicsResponse.fromJson(Map<String, dynamic> json) =>
      _$PreviewComicsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewComicsResponseToJson(this);

  List<ComicPreview> getComics() {
    List<ComicPreview> preview = [];
    for (var element in results) {
      preview.add(ComicPreview(
          element.name,
          ImagePreview(element.image?.originalUrl),
          element.issueNumber,
          element.coverDate,
          Volume(element.volume?.name),
          element.detailUrl));
    }
    return preview;
  }

  @override
  String toString() {
    return '';
  }
}

@JsonSerializable(explicitToJson: true)
class PreviewComicsResponseData {
  final String? name;
  final PreviewImageData? image;
  @JsonKey(name: 'issue_number')
  final String? issueNumber;
  @JsonKey(name: 'cover_date')
  final String? coverDate;
  final VolumeData? volume;
  @JsonKey(name: 'api_detail_url')
  final String? detailUrl;

  PreviewComicsResponseData(this.name, this.image, this.issueNumber,
      this.coverDate, this.volume, this.detailUrl);

  factory PreviewComicsResponseData.fromJson(Map<String, dynamic> json) =>
      _$PreviewComicsResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewComicsResponseDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ComicsResponse {
  final ComicsResponseData results;

  ComicsResponse(this.results);

  factory ComicsResponse.fromJson(Map<String, dynamic> json) =>
      _$ComicsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ComicsResponseToJson(this);

  /*Comic getComic() {
    return Comic(results.name, results.description, ImagePreview(results.image.originalUrl), results.coverDate, results.issueNumber, , Volume())
  }*/

  @override
  String toString() {
    return '';
  }
}

@JsonSerializable(explicitToJson: true)
class ComicsResponseData {
  final String? name;
  final String? description;
  final PreviewImageData? image;
  @JsonKey(name: 'cover_date')
  final String? coverDate;
  @JsonKey(name: 'issue_number')
  final String? issueNumber;
  @JsonKey(name: 'person_credits')
  final List<PersonCreditData> personCredits;
  final VolumeData? volume;
  @JsonKey(name: 'api_detail_url')
  final String? detailUrl;

  ComicsResponseData(this.name, this.description, this.image, this.coverDate,
      this.issueNumber, this.personCredits, this.volume, this.detailUrl);

  factory ComicsResponseData.fromJson(Map<String, dynamic> json) =>
      _$ComicsResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$ComicsResponseDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VolumeData {
  final String? name;

  VolumeData(this.name);

  factory VolumeData.fromJson(Map<String, dynamic> json) =>
      _$VolumeDataFromJson(json);

  Map<String, dynamic> toJson() => _$VolumeDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PersonCreditData {
  final String? name;
  final String? role;

  PersonCreditData(this.name, this.role);

  factory PersonCreditData.fromJson(Map<String, dynamic> json) =>
      _$PersonCreditDataFromJson(json);

  Map<String, dynamic> toJson() => _$PersonCreditDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PreviewSeriesResponse {
  final List<PreviewSeriesResponseData> results;

  PreviewSeriesResponse(this.results);

  factory PreviewSeriesResponse.fromJson(Map<String, dynamic> json) =>
      _$PreviewSeriesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewSeriesResponseToJson(this);

  List<SeriesPreview> getSeries() {
    List<SeriesPreview> preview = [];
    for (var element in results) {
      preview.add(SeriesPreview(
          element.name,
          ImagePreview(element.image?.originalUrl),
          element.episodeCount,
          element.startYear,
          Publisher(element.publisher?.detailUrl, element.publisher?.id,
              element.publisher?.name),
          element.detailUrl));
    }
    return preview;
  }

  @override
  String toString() {
    return '';
  }
}

@JsonSerializable(explicitToJson: true)
class PreviewSeriesResponseData {
  final String? name;
  final PreviewImageData? image;
  @JsonKey(name: 'count_of_episodes')
  final int? episodeCount;
  @JsonKey(name: 'start_year')
  final String? startYear;
  final PublisherData? publisher;
  @JsonKey(name: 'api_detail_url')
  final String? detailUrl;

  PreviewSeriesResponseData(this.name, this.image, this.episodeCount,
      this.startYear, this.publisher, this.detailUrl);

  factory PreviewSeriesResponseData.fromJson(Map<String, dynamic> json) =>
      _$PreviewSeriesResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewSeriesResponseDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PublisherData {
  final String? detailUrl;
  final int? id;
  final String? name;

  PublisherData(this.detailUrl, this.id, this.name);

  factory PublisherData.fromJson(Map<String, dynamic> json) =>
      _$PublisherDataFromJson(json);

  Map<String, dynamic> toJson() => _$PublisherDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PreviewMovieResponse {
  final List<PreviewMovieResponseData> results;

  PreviewMovieResponse(this.results);

  factory PreviewMovieResponse.fromJson(Map<String, dynamic> json) =>
      _$PreviewMovieResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewMovieResponseToJson(this);

  List<MoviePreview> getMovies() {
    List<MoviePreview> preview = [];
    for (var element in results) {
      preview.add(MoviePreview(
          element.name,
          ImagePreview(element.image?.originalUrl),
          element.releaseDate,
          element.runtime,
          element.detailUrl));
    }
    return preview;
  }

  @override
  String toString() {
    return '';
  }
}

@JsonSerializable(explicitToJson: true)
class PreviewMovieResponseData {
  final String? name;
  final PreviewImageData? image;
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  final String? runtime;
  @JsonKey(name: 'api_detail_url')
  final String? detailUrl;

  PreviewMovieResponseData(
      this.name, this.image, this.releaseDate, this.runtime, this.detailUrl);

  factory PreviewMovieResponseData.fromJson(Map<String, dynamic> json) =>
      _$PreviewMovieResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewMovieResponseDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PreviewImageData {
  @JsonKey(name: 'original_url')
  final String? originalUrl;

  PreviewImageData(this.originalUrl);

  factory PreviewImageData.fromJson(Map<String, dynamic> json) =>
      _$PreviewImageDataFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewImageDataToJson(this);
}
