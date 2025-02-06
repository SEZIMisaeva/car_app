import 'package:car_app/core/enam/car_filters.dart';
import 'package:car_app/data/car_model.dart';
import 'package:flutter/material.dart';
import 'package:car_app/data/cars_data.dart' as data;

class CarsProvider extends ChangeNotifier {

  List<CarModel> carrentList = data.list;
  void showAllCars(){
    carrentList=data.list;
    notifyListeners();
  }

  
  
  void showFamilyCars() {
    List<CarModel> familyCars = [];
    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.familyCars ) {
        familyCars.add(data.list[i]);
        
      }

      carrentList = familyCars;
      notifyListeners();
      
    }

  }

  void showCheapCars() {
    List<CarModel> list = [];
    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.cheapCars ) {
        list.add(data.list[i]);
        
      }

      carrentList = list;
      notifyListeners();
      
    }

  }
  void showLuxuryCars() {
    List<CarModel> list = [];
    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.luxuryCars ) {
        list.add(data.list[i]);
        
      }

      carrentList = list;
      notifyListeners();
      
    }

  }

  void showSportCars() {
    List<CarModel> familyCars = [];
    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.sportCars ) {
        familyCars.add(data.list[i]);
        
      }

      carrentList = familyCars;
      notifyListeners();
      
    }

  }

  void showPopularCars() {
    List<CarModel> familyCars = [];
    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.popularCars ) {
        familyCars.add(data.list[i]);
        
      }

      carrentList = familyCars;
      notifyListeners();
      
    }

  }
}