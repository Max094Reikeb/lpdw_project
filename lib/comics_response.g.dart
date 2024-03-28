// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviewComicsResponse _$PreviewComicsResponseFromJson(
        Map<String, dynamic> json) =>
    PreviewComicsResponse(
      (json['results'] as List<dynamic>)
          .map((e) =>
              PreviewComicsResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PreviewComicsResponseToJson(
        PreviewComicsResponse instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

PreviewComicsResponseData _$PreviewComicsResponseDataFromJson(
        Map<String, dynamic> json) =>
    PreviewComicsResponseData(
      json['name'] as String?,
      json['image'] == null
          ? null
          : PreviewImageData.fromJson(json['image'] as Map<String, dynamic>),
      json['issue_number'] as String?,
      json['cover_date'] as String?,
      json['volume'] == null
          ? null
          : VolumeData.fromJson(json['volume'] as Map<String, dynamic>),
      json['api_detail_url'] as String?,
    );

Map<String, dynamic> _$PreviewComicsResponseDataToJson(
        PreviewComicsResponseData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image?.toJson(),
      'issue_number': instance.issueNumber,
      'cover_date': instance.coverDate,
      'volume': instance.volume?.toJson(),
      'api_detail_url': instance.detailUrl,
    };

ComicsResponse _$ComicsResponseFromJson(Map<String, dynamic> json) =>
    ComicsResponse(
      ComicsResponseData.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ComicsResponseToJson(ComicsResponse instance) =>
    <String, dynamic>{
      'results': instance.results.toJson(),
    };

ComicsResponseData _$ComicsResponseDataFromJson(Map<String, dynamic> json) =>
    ComicsResponseData(
      json['name'] as String?,
      json['description'] as String?,
      json['image'] == null
          ? null
          : PreviewImageData.fromJson(json['image'] as Map<String, dynamic>),
      json['cover_date'] as String?,
      json['issue_number'] as String?,
      (json['person_credits'] as List<dynamic>)
          .map((e) => PersonCreditData.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['volume'] == null
          ? null
          : VolumeData.fromJson(json['volume'] as Map<String, dynamic>),
      json['api_detail_url'] as String?,
    );

Map<String, dynamic> _$ComicsResponseDataToJson(ComicsResponseData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image': instance.image?.toJson(),
      'cover_date': instance.coverDate,
      'issue_number': instance.issueNumber,
      'person_credits': instance.personCredits.map((e) => e.toJson()).toList(),
      'volume': instance.volume?.toJson(),
      'api_detail_url': instance.detailUrl,
    };

VolumeData _$VolumeDataFromJson(Map<String, dynamic> json) => VolumeData(
      json['name'] as String?,
    );

Map<String, dynamic> _$VolumeDataToJson(VolumeData instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

PersonCreditData _$PersonCreditDataFromJson(Map<String, dynamic> json) =>
    PersonCreditData(
      json['name'] as String?,
      json['role'] as String?,
    );

Map<String, dynamic> _$PersonCreditDataToJson(PersonCreditData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': instance.role,
    };

PreviewSeriesResponse _$PreviewSeriesResponseFromJson(
        Map<String, dynamic> json) =>
    PreviewSeriesResponse(
      (json['results'] as List<dynamic>)
          .map((e) =>
              PreviewSeriesResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PreviewSeriesResponseToJson(
        PreviewSeriesResponse instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

PreviewSeriesResponseData _$PreviewSeriesResponseDataFromJson(
        Map<String, dynamic> json) =>
    PreviewSeriesResponseData(
      json['name'] as String?,
      json['image'] == null
          ? null
          : PreviewImageData.fromJson(json['image'] as Map<String, dynamic>),
      json['count_of_episodes'] as int?,
      json['start_year'] as String?,
      json['publisher'] == null
          ? null
          : PublisherData.fromJson(json['publisher'] as Map<String, dynamic>),
      json['api_detail_url'] as String?,
    );

Map<String, dynamic> _$PreviewSeriesResponseDataToJson(
        PreviewSeriesResponseData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image?.toJson(),
      'count_of_episodes': instance.episodeCount,
      'start_year': instance.startYear,
      'publisher': instance.publisher?.toJson(),
      'api_detail_url': instance.detailUrl,
    };

PublisherData _$PublisherDataFromJson(Map<String, dynamic> json) =>
    PublisherData(
      json['detailUrl'] as String?,
      json['id'] as int?,
      json['name'] as String?,
    );

Map<String, dynamic> _$PublisherDataToJson(PublisherData instance) =>
    <String, dynamic>{
      'detailUrl': instance.detailUrl,
      'id': instance.id,
      'name': instance.name,
    };

PreviewMovieResponse _$PreviewMovieResponseFromJson(
        Map<String, dynamic> json) =>
    PreviewMovieResponse(
      (json['results'] as List<dynamic>)
          .map((e) =>
              PreviewMovieResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PreviewMovieResponseToJson(
        PreviewMovieResponse instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

PreviewMovieResponseData _$PreviewMovieResponseDataFromJson(
        Map<String, dynamic> json) =>
    PreviewMovieResponseData(
      json['name'] as String?,
      json['image'] == null
          ? null
          : PreviewImageData.fromJson(json['image'] as Map<String, dynamic>),
      json['release_date'] as String?,
      json['runtime'] as String?,
      json['api_detail_url'] as String?,
    );

Map<String, dynamic> _$PreviewMovieResponseDataToJson(
        PreviewMovieResponseData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image?.toJson(),
      'release_date': instance.releaseDate,
      'runtime': instance.runtime,
      'api_detail_url': instance.detailUrl,
    };

PreviewImageData _$PreviewImageDataFromJson(Map<String, dynamic> json) =>
    PreviewImageData(
      json['original_url'] as String?,
    );

Map<String, dynamic> _$PreviewImageDataToJson(PreviewImageData instance) =>
    <String, dynamic>{
      'original_url': instance.originalUrl,
    };
