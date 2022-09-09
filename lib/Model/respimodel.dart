// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.vegetarian,
    this.vegan,
    this.glutenFree,
    this.dairyFree,
    this.veryHealthy,
    this.cheap,
    this.veryPopular,
    this.sustainable,
    this.lowFodmap,
    this.weightWatcherSmartPoints,
    this.gaps,
    this.preparationMinutes,
    this.cookingMinutes,
    this.aggregateLikes,
    this.healthScore,
    this.creditsText,
    this.license,
    this.sourceName,
    this.pricePerServing,
    this.extendedIngredients,
    this.id,
    this.title,
    this.readyInMinutes,
    this.servings,
    this.sourceUrl,
    this.image,
    this.imageType,
    this.summary,
    this.cuisines,
    this.dishTypes,
    this.diets,
    this.occasions,
    this.winePairing,
    this.instructions,
    this.analyzedInstructions,
    this.originalId,
    this.spoonacularSourceUrl,
  });

  bool ? vegetarian ;
  bool? vegan;
  bool? glutenFree;
  bool? dairyFree;
  bool? veryHealthy;
  bool? cheap;
  bool? veryPopular;
  bool? sustainable;
  bool? lowFodmap;
  int? weightWatcherSmartPoints;
  String? gaps;
  int? preparationMinutes;
  int? cookingMinutes;
  int? aggregateLikes;
  int? healthScore;
  String? creditsText;
  String? license;
  String? sourceName;
  double? pricePerServing;
  List<ExtendedIngredient>? extendedIngredients;
  int? id;
  String? title;
  int? readyInMinutes;
  int? servings;
  String? sourceUrl;
  String? image;
  String? imageType;
  String? summary;
  List<dynamic>? cuisines;
  List<String>? dishTypes;
  List<dynamic>? diets;
  List<dynamic>? occasions;
  WinePairing? winePairing;
  String? instructions;
  List<dynamic>? analyzedInstructions;
  dynamic originalId;
  String? spoonacularSourceUrl;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    ///This is actual code of serialization(converting json to your lang)
    vegetarian: json["vegetarian"],
    vegan: json["vegan"],
    glutenFree: json["glutenFree"],
    dairyFree: json["dairyFree"],
    veryHealthy: json["veryHealthy"],
    cheap: json["cheap"],
    veryPopular: json["veryPopular"],
    sustainable: json["sustainable"],
    lowFodmap: json["lowFodmap"],
    weightWatcherSmartPoints: json["weightWatcherSmartPoints"],
    gaps: json["gaps"],
    preparationMinutes: json["preparationMinutes"],
    cookingMinutes: json["cookingMinutes"],
    aggregateLikes: json["aggregateLikes"],
    healthScore: json["healthScore"],
    creditsText: json["creditsText"],
    license: json["license"],
    sourceName: json["sourceName"],
    pricePerServing: json["pricePerServing"].toDouble(),
    extendedIngredients: List<ExtendedIngredient>.from(json["extendedIngredients"].map((x) => ExtendedIngredient.fromJson(x))),
    id: json["id"],
    title: json["title"],
    readyInMinutes: json["readyInMinutes"],
    servings: json["servings"],
    sourceUrl: json["sourceUrl"],
    image: json["image"],
    imageType: json["imageType"],
    summary: json["summary"],
    cuisines: List<dynamic>.from(json["cuisines"].map((x) => x)),
    dishTypes: List<String>.from(json["dishTypes"].map((x) => x)),
    diets: List<dynamic>.from(json["diets"].map((x) => x)),
    occasions: List<dynamic>.from(json["occasions"].map((x) => x)),
    winePairing: WinePairing.fromJson(json["winePairing"]),
    instructions: json["instructions"],
    analyzedInstructions: List<dynamic>.from(json["analyzedInstructions"].map((x) => x)),
    originalId: json["originalId"],
    spoonacularSourceUrl: json["spoonacularSourceUrl"],
  );

  Map<String, dynamic> toJson() => {
    "vegetarian": vegetarian,
    "vegan": vegan,
    "glutenFree": glutenFree,
    "dairyFree": dairyFree,
    "veryHealthy": veryHealthy,
    "cheap": cheap,
    "veryPopular": veryPopular,
    "sustainable": sustainable,
    "lowFodmap": lowFodmap,
    "weightWatcherSmartPoints": weightWatcherSmartPoints,
    "gaps": gaps,
    "preparationMinutes": preparationMinutes,
    "cookingMinutes": cookingMinutes,
    "aggregateLikes": aggregateLikes,
    "healthScore": healthScore,
    "creditsText": creditsText,
    "license": license,
    "sourceName": sourceName,
    "pricePerServing": pricePerServing,
    "extendedIngredients": List<dynamic>.from(extendedIngredients!.map((x) => x.toJson())),
    "id": id,
    "title": title,
    "readyInMinutes": readyInMinutes,
    "servings": servings,
    "sourceUrl": sourceUrl,
    "image": image,
    "imageType": imageType,
    "summary": summary,
    "cuisines": List<dynamic>.from(cuisines!.map((x) => x)),
    "dishTypes": List<dynamic>.from(dishTypes!.map((x) => x)),
    "diets": List<dynamic>.from(diets!.map((x) => x)),
    "occasions": List<dynamic>.from(occasions!.map((x) => x)),
    "winePairing": winePairing!.toJson(),
    "instructions": instructions,
    "analyzedInstructions": List<dynamic>.from(analyzedInstructions!.map((x) => x)),
    "originalId": originalId,
    "spoonacularSourceUrl": spoonacularSourceUrl,
  };
}

class ExtendedIngredient {
  ExtendedIngredient({
    this.id,
    this.aisle,
    this.image,
    this.consistency,
    this.name,
    this.nameClean,
    this.original,
    this.originalName,
    this.amount,
    this.unit,
    this.meta,
    this.measures,
  });

  int? id;
  String? aisle;
  String? image;
  Consistency? consistency;
  String? name;
  String? nameClean;
  String? original;
  String? originalName;
  double? amount;
  String? unit;
  List<String>? meta;
  Measures? measures;

  factory ExtendedIngredient.fromJson(Map<String, dynamic> json) => ExtendedIngredient(
    id: json["id"],
    aisle: json["aisle"],
    image: json["image"],
    consistency: consistencyValues.map[json["consistency"]],
    name: json["name"],
    nameClean: json["nameClean"],
    original: json["original"],
    originalName: json["originalName"],
    amount: json["amount"].toDouble(),
    unit: json["unit"],
    meta: List<String>.from(json["meta"].map((x) => x)),
    measures: Measures.fromJson(json["measures"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "aisle": aisle,
    "image": image,
    "consistency": consistencyValues.reverse![consistency],
    "name": name,
    "nameClean": nameClean,
    "original": original,
    "originalName": originalName,
    "amount": amount,
    "unit": unit,
    "meta": List<dynamic>.from(meta!.map((x) => x)),
    "measures": measures!.toJson(),
  };
}

enum Consistency { SOLID, LIQUID }

final consistencyValues = EnumValues({
  "LIQUID": Consistency.LIQUID,
  "SOLID": Consistency.SOLID
});

class Measures {
  Measures({
    this.us,
    this.metric,
  });

  Metric? us;
  Metric? metric;

  factory Measures.fromJson(Map<String, dynamic> json) => Measures(
    us: Metric.fromJson(json["us"]),
    metric: Metric.fromJson(json["metric"]),
  );

  Map<String, dynamic> toJson() => {
    "us": us!.toJson(),
    "metric": metric!.toJson(),
  };
}

class Metric {
  Metric({
    this.amount,
    this.unitShort,
    this.unitLong,
  });

  double? amount;
  String? unitShort;
  String? unitLong;

  factory Metric.fromJson(Map<String, dynamic> json) => Metric(
    amount: json["amount"].toDouble(),
    unitShort: json["unitShort"],
    unitLong: json["unitLong"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "unitShort": unitShort,
    "unitLong": unitLong,
  };
}

class WinePairing {
  WinePairing({
    this.pairedWines,
    this.pairingText,
    this.productMatches,
  });

  List<dynamic>? pairedWines;
  String? pairingText;
  List<dynamic>? productMatches;

  factory WinePairing.fromJson(Map<String, dynamic> json) => WinePairing(
    pairedWines: List<dynamic>.from(json["pairedWines"].map((x) => x)),
    pairingText: json["pairingText"],
    productMatches: List<dynamic>.from(json["productMatches"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "pairedWines": List<dynamic>.from(pairedWines!.map((x) => x)),
    "pairingText": pairingText,
    "productMatches": List<dynamic>.from(productMatches!.map((x) => x)),
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> ?reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
