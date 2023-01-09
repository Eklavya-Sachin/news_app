import 'dart:convert';

News newsFromJson(String str) => News.fromJson(json.decode(str));

String newsToJson(News data) => json.encode(data.toJson());

class News {
  String? status;
  int? totalResults;
  List<Articles>? articles;

  News({this.status, this.totalResults, this.articles});

  News.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <Articles>[];
      json['articles'].forEach((v) {
        articles?.add(Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['totalResults'] = totalResults;
    if (articles != null) {
      data['articles'] = articles?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Articles {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? urlToImage;
  DateTime? publishedAt;

  Articles({
    this.source,
    this.author,
    this.title,
    this.description,
    this.urlToImage,
    this.publishedAt,
  });

  factory Articles.fromJson(Map<String, dynamic> json) => Articles(
        source: Source.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "source": source!.toJson(),
        "author": author,
        "title": title,
        "description": description,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt!.toIso8601String(),
      };
}

class Source {
  Source({
    this.id,
    this.name,
  });

  String? id;
  String? name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
