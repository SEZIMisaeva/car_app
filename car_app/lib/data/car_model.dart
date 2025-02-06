

import 'package:car_app/core/enam/car_filters.dart';

class CarModel {
  final String brand;
  final String model;
  final double price;
  final String image;
  final CarFilters type;
  final int count;

  CarModel({
    required this.image,
    required this.brand,
     required this.model,
      required this.price,
      required this.type,
      this.count = 0,
       });

       CarModel addToCart({
        final String? brand,
  final String? model,
  final double? price,
  final String? image,
  final CarFilters? type,
       }) {
        return CarModel(
          image: image ?? this.image,
          brand: brand ?? this.brand,
           model: model ?? this.model,
            price: price ?? this.price,
             type: type ?? this.type,
        count: count + 1,
        );
       }
}