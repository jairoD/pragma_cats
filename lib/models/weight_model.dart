import 'dart:convert';

class WeightModel {
  final String imperial;
  final String metric;
  WeightModel({
    required this.imperial,
    required this.metric,
  });

  WeightModel copyWith({
    String? imperial,
    String? metric,
  }) {
    return WeightModel(
      imperial: imperial ?? this.imperial,
      metric: metric ?? this.metric,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imperial': imperial,
      'metric': metric,
    };
  }

  factory WeightModel.fromMap(Map<String, dynamic> map) {
    return WeightModel(
      imperial: (map['imperial'] ?? '') as String,
      metric: (map['metric'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory WeightModel.fromJson(String source) =>
      WeightModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'WeightModel(imperial: $imperial, metric: $metric)';

  @override
  bool operator ==(covariant WeightModel other) {
    if (identical(this, other)) return true;

    return other.imperial == imperial && other.metric == metric;
  }

  @override
  int get hashCode => imperial.hashCode ^ metric.hashCode;
}
