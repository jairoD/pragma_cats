// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:pragma_cats/models/image_model.dart';
import 'package:pragma_cats/models/weight_model.dart';

class CatModel {
  final WeightModel weight;
  final String id;
  final String name;
  final String vetstreetUrl;
  final String temperament;
  final String origin;
  final String countryCodes;
  final String countryCode;
  final String description;
  final String life_span;
  final int indoor;
  final String altNames;
  final int adaptability;
  final int affectionLevel;
  final int child_friendly;
  final int dog_friendly;
  final int energyLevel;
  final int grooming;
  final int healthIssues;
  final int intelligence;
  final int sheddingLevel;
  final int socialNeeds;
  final int strangerFriendly;
  final int vocalisation;
  final int experimental;
  final int hairless;
  final int natural;
  final int rare;
  final int rex;
  final int suppressedTail;
  final int shortLegs;
  final String wikipediaUrl;
  final int hypoallergenic;
  final String referenceImageId;
  final ImageModel? image;
  final String reference_image_id;
  CatModel({
    required this.weight,
    required this.id,
    required this.name,
    required this.vetstreetUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.life_span,
    required this.indoor,
    required this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.child_friendly,
    required this.dog_friendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    required this.wikipediaUrl,
    required this.hypoallergenic,
    required this.referenceImageId,
    required this.image,
    required this.reference_image_id,
  });

  CatModel copyWith({
    WeightModel? weight,
    String? id,
    String? name,
    String? vetstreetUrl,
    String? temperament,
    String? origin,
    String? countryCodes,
    String? countryCode,
    String? description,
    String? life_span,
    int? indoor,
    String? altNames,
    int? adaptability,
    int? affectionLevel,
    int? child_friendly,
    int? dog_friendly,
    int? energyLevel,
    int? grooming,
    int? healthIssues,
    int? intelligence,
    int? sheddingLevel,
    int? socialNeeds,
    int? strangerFriendly,
    int? vocalisation,
    int? experimental,
    int? hairless,
    int? natural,
    int? rare,
    int? rex,
    int? suppressedTail,
    int? shortLegs,
    String? wikipediaUrl,
    int? hypoallergenic,
    String? referenceImageId,
    ImageModel? image,
    String? reference_image_id,
  }) {
    return CatModel(
      weight: weight ?? this.weight,
      id: id ?? this.id,
      name: name ?? this.name,
      vetstreetUrl: vetstreetUrl ?? this.vetstreetUrl,
      temperament: temperament ?? this.temperament,
      origin: origin ?? this.origin,
      countryCodes: countryCodes ?? this.countryCodes,
      countryCode: countryCode ?? this.countryCode,
      description: description ?? this.description,
      life_span: life_span ?? this.life_span,
      indoor: indoor ?? this.indoor,
      altNames: altNames ?? this.altNames,
      adaptability: adaptability ?? this.adaptability,
      affectionLevel: affectionLevel ?? this.affectionLevel,
      child_friendly: child_friendly ?? this.child_friendly,
      dog_friendly: dog_friendly ?? this.dog_friendly,
      energyLevel: energyLevel ?? this.energyLevel,
      grooming: grooming ?? this.grooming,
      healthIssues: healthIssues ?? this.healthIssues,
      intelligence: intelligence ?? this.intelligence,
      sheddingLevel: sheddingLevel ?? this.sheddingLevel,
      socialNeeds: socialNeeds ?? this.socialNeeds,
      strangerFriendly: strangerFriendly ?? this.strangerFriendly,
      vocalisation: vocalisation ?? this.vocalisation,
      experimental: experimental ?? this.experimental,
      hairless: hairless ?? this.hairless,
      natural: natural ?? this.natural,
      rare: rare ?? this.rare,
      rex: rex ?? this.rex,
      suppressedTail: suppressedTail ?? this.suppressedTail,
      shortLegs: shortLegs ?? this.shortLegs,
      wikipediaUrl: wikipediaUrl ?? this.wikipediaUrl,
      hypoallergenic: hypoallergenic ?? this.hypoallergenic,
      referenceImageId: referenceImageId ?? this.referenceImageId,
      image: image ?? this.image,
      reference_image_id: reference_image_id ?? this.reference_image_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weight': weight.toMap(),
      'id': id,
      'name': name,
      'vetstreetUrl': vetstreetUrl,
      'temperament': temperament,
      'origin': origin,
      'countryCodes': countryCodes,
      'countryCode': countryCode,
      'description': description,
      'life_span': life_span,
      'indoor': indoor,
      'altNames': altNames,
      'adaptability': adaptability,
      'affectionLevel': affectionLevel,
      'child_friendly': child_friendly,
      'dog_friendly': dog_friendly,
      'energyLevel': energyLevel,
      'grooming': grooming,
      'healthIssues': healthIssues,
      'intelligence': intelligence,
      'sheddingLevel': sheddingLevel,
      'socialNeeds': socialNeeds,
      'strangerFriendly': strangerFriendly,
      'vocalisation': vocalisation,
      'experimental': experimental,
      'hairless': hairless,
      'natural': natural,
      'rare': rare,
      'rex': rex,
      'suppressedTail': suppressedTail,
      'shortLegs': shortLegs,
      'wikipediaUrl': wikipediaUrl,
      'hypoallergenic': hypoallergenic,
      'referenceImageId': referenceImageId,
      'image': image?.toMap(),
      'reference_image_id': reference_image_id,
    };
  }

  factory CatModel.fromMap(Map<String, dynamic> map) {
    return CatModel(
      weight: WeightModel.fromMap(map['weight'] as Map<String, dynamic>),
      id: (map['id'] ?? '') as String,
      name: (map['name'] ?? '') as String,
      vetstreetUrl: (map['vetstreetUrl'] ?? '') as String,
      temperament: (map['temperament'] ?? '') as String,
      origin: (map['origin'] ?? '') as String,
      countryCodes: (map['countryCodes'] ?? '') as String,
      countryCode: (map['countryCode'] ?? '') as String,
      description: (map['description'] ?? '') as String,
      life_span: (map['life_span'] ?? '') as String,
      indoor: (map['indoor'] ?? 0) as int,
      altNames: (map['altNames'] ?? '') as String,
      adaptability: (map['adaptability'] ?? 0) as int,
      affectionLevel: (map['affectionLevel'] ?? 0) as int,
      child_friendly: (map['child_friendly'] ?? 0) as int,
      dog_friendly: (map['dog_friendly'] ?? 0) as int,
      energyLevel: (map['energyLevel'] ?? 0) as int,
      grooming: (map['grooming'] ?? 0) as int,
      healthIssues: (map['healthIssues'] ?? 0) as int,
      intelligence: (map['intelligence'] ?? 0) as int,
      sheddingLevel: (map['sheddingLevel'] ?? 0) as int,
      socialNeeds: (map['socialNeeds'] ?? 0) as int,
      strangerFriendly: (map['strangerFriendly'] ?? 0) as int,
      vocalisation: (map['vocalisation'] ?? 0) as int,
      experimental: (map['experimental'] ?? 0) as int,
      hairless: (map['hairless'] ?? 0) as int,
      natural: (map['natural'] ?? 0) as int,
      rare: (map['rare'] ?? 0) as int,
      rex: (map['rex'] ?? 0) as int,
      suppressedTail: (map['suppressedTail'] ?? 0) as int,
      shortLegs: (map['shortLegs'] ?? 0) as int,
      wikipediaUrl: (map['wikipediaUrl'] ?? '') as String,
      hypoallergenic: (map['hypoallergenic'] ?? 0) as int,
      referenceImageId: (map['referenceImageId'] ?? '') as String,
      image: map['image'] != null
          ? ImageModel.fromMap(map['image'] as Map<String, dynamic>)
          : null,
      reference_image_id: (map['reference_image_id'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CatModel.fromJson(String source) =>
      CatModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CatModel(weight: $weight, id: $id, name: $name, vetstreetUrl: $vetstreetUrl, temperament: $temperament, origin: $origin, countryCodes: $countryCodes, countryCode: $countryCode, description: $description, life_span: $life_span, indoor: $indoor, altNames: $altNames, adaptability: $adaptability, affectionLevel: $affectionLevel, child_friendly: $child_friendly, dog_friendly: $dog_friendly, energyLevel: $energyLevel, grooming: $grooming, healthIssues: $healthIssues, intelligence: $intelligence, sheddingLevel: $sheddingLevel, socialNeeds: $socialNeeds, strangerFriendly: $strangerFriendly, vocalisation: $vocalisation, experimental: $experimental, hairless: $hairless, natural: $natural, rare: $rare, rex: $rex, suppressedTail: $suppressedTail, shortLegs: $shortLegs, wikipediaUrl: $wikipediaUrl, hypoallergenic: $hypoallergenic, referenceImageId: $referenceImageId, image: $image, reference_image_id: $reference_image_id)';
  }

  @override
  bool operator ==(covariant CatModel other) {
    if (identical(this, other)) return true;

    return other.weight == weight &&
        other.id == id &&
        other.name == name &&
        other.vetstreetUrl == vetstreetUrl &&
        other.temperament == temperament &&
        other.origin == origin &&
        other.countryCodes == countryCodes &&
        other.countryCode == countryCode &&
        other.description == description &&
        other.life_span == life_span &&
        other.indoor == indoor &&
        other.altNames == altNames &&
        other.adaptability == adaptability &&
        other.affectionLevel == affectionLevel &&
        other.child_friendly == child_friendly &&
        other.dog_friendly == dog_friendly &&
        other.energyLevel == energyLevel &&
        other.grooming == grooming &&
        other.healthIssues == healthIssues &&
        other.intelligence == intelligence &&
        other.sheddingLevel == sheddingLevel &&
        other.socialNeeds == socialNeeds &&
        other.strangerFriendly == strangerFriendly &&
        other.vocalisation == vocalisation &&
        other.experimental == experimental &&
        other.hairless == hairless &&
        other.natural == natural &&
        other.rare == rare &&
        other.rex == rex &&
        other.suppressedTail == suppressedTail &&
        other.shortLegs == shortLegs &&
        other.wikipediaUrl == wikipediaUrl &&
        other.hypoallergenic == hypoallergenic &&
        other.referenceImageId == referenceImageId &&
        other.image == image &&
        other.reference_image_id == reference_image_id;
  }

  @override
  int get hashCode {
    return weight.hashCode ^
        id.hashCode ^
        name.hashCode ^
        vetstreetUrl.hashCode ^
        temperament.hashCode ^
        origin.hashCode ^
        countryCodes.hashCode ^
        countryCode.hashCode ^
        description.hashCode ^
        life_span.hashCode ^
        indoor.hashCode ^
        altNames.hashCode ^
        adaptability.hashCode ^
        affectionLevel.hashCode ^
        child_friendly.hashCode ^
        dog_friendly.hashCode ^
        energyLevel.hashCode ^
        grooming.hashCode ^
        healthIssues.hashCode ^
        intelligence.hashCode ^
        sheddingLevel.hashCode ^
        socialNeeds.hashCode ^
        strangerFriendly.hashCode ^
        vocalisation.hashCode ^
        experimental.hashCode ^
        hairless.hashCode ^
        natural.hashCode ^
        rare.hashCode ^
        rex.hashCode ^
        suppressedTail.hashCode ^
        shortLegs.hashCode ^
        wikipediaUrl.hashCode ^
        hypoallergenic.hashCode ^
        referenceImageId.hashCode ^
        image.hashCode ^
        reference_image_id.hashCode;
  }
}
