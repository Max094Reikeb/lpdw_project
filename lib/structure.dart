class ComicPreview {
  final String? name;
  final ImagePreview? image;
  final String? issueNumber;
  final String? coverDate;
  final Volume? volume;
  final String? detailUrl;

  ComicPreview(this.name, this.image, this.issueNumber, this.coverDate,
      this.volume, this.detailUrl);
}

class Comic {
  final String? name;
  final String? description;
  final ImagePreview? image;
  final String? coverDate;
  final String? issueNumber;
  final List<PersonCredit>? personCredits;
  final Volume? volume;

  Comic(this.name, this.description, this.image, this.coverDate,
      this.issueNumber, this.personCredits, this.volume);
}

class Volume {
  final String? name;

  Volume(this.name);
}

class PersonCredit {
  final String? name;
  final String? role;

  PersonCredit(this.name, this.role);
}

class SeriesPreview {
  final String? name;
  final ImagePreview? image;
  final int? episodeCount;
  final String? startYear;
  final Publisher? publisher;
  final String? detailUrl;

  SeriesPreview(this.name, this.image, this.episodeCount, this.startYear,
      this.publisher, this.detailUrl);
}

class Publisher {
  final String? detailUrl;
  final int? id;
  final String? name;

  Publisher(this.detailUrl, this.id, this.name);
}

class MoviePreview {
  final String? name;
  final ImagePreview? image;
  final String? releaseDate;
  final String? runtime;
  final String? detailUrl;

  MoviePreview(
      this.name, this.image, this.releaseDate, this.runtime, this.detailUrl);
}

class ImagePreview {
  final String? originalImage;

  ImagePreview(this.originalImage);
}
