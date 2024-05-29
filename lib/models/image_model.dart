import 'dart:convert';

class ImageModel {
  final String id;
  final int width;
  final int height;
  final String url;
  ImageModel({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
  });

  ImageModel copyWith({
    String? id,
    int? width,
    int? height,
    String? url,
  }) {
    return ImageModel(
      id: id ?? this.id,
      width: width ?? this.width,
      height: height ?? this.height,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'width': width,
      'height': height,
      'url': url,
    };
  }

  factory ImageModel.fromMap(Map<String, dynamic> map) {
    return ImageModel(
      id: (map['id'] ?? '') as String,
      width: (map['width'] ?? 0) as int,
      height: (map['height'] ?? 0) as int,
      url: (map['url'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageModel.fromJson(String source) =>
      ImageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ImageModel(id: $id, width: $width, height: $height, url: $url)';
  }

  @override
  bool operator ==(covariant ImageModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.width == width &&
        other.height == height &&
        other.url == url;
  }

  @override
  int get hashCode {
    return id.hashCode ^ width.hashCode ^ height.hashCode ^ url.hashCode;
  }
}
