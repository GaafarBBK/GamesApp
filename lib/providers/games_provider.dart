import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:game_app2/models/GameCardModel.dart';
import 'package:game_app2/models/GameDetailsModel.dart';
import 'package:game_app2/services/api.dart';
import 'package:http/http.dart' as http;

class GamesProvider extends ChangeNotifier {
  GameDetailsModel? detailedGameModel;
  bool isLoading = false;
  List<GameModel> similarGames = [];
  List<GameModel> games = [];
  Api api = Api();

//-----------------------------------------fetchGameById--------------------------------
  fetchGameById(String id) async {
    isLoading = true;
    notifyListeners();

    final response =
        await api.get("https://www.freetogame.com/api/game?id=$id");

    if (response.statusCode == 200) {
      var decodedData = json.decode(response.body);
      detailedGameModel = GameDetailsModel.fromJson(decodedData);
      getGamesByCategory(detailedGameModel!.genre);
    }
    isLoading = false;
    notifyListeners();
  }

//-------------------------------------getGamesByCategory--------------------------------
  getGamesByCategory(String category) async {
    isLoading = true;
    notifyListeners();

    final response = await api
        .get("https://www.freetogame.com/api/games?category=$category");

    if (response.statusCode == 200) {
      var decodedData = json.decode(response.body);
      detailedGameModel = GameDetailsModel.fromJson(decodedData);
      getGamesByCategory(detailedGameModel!.genre);
    }

    if (response.statusCode == 200) {
      var decodedData = json.decode(response.body);
      similarGames =
          List<GameModel>.from(decodedData.map((e) => GameModel.fromJson(e)))
              .toList();
    }

    isLoading = false;
    notifyListeners();
  }

//--------------------------------fetchGames in the home screen-------------------------------

  fetchGames(String platform) async {
    isLoading = true;
    games.clear();
    final response = await http.get(
        Uri.parse("https://www.freetogame.com/api/games?platform=$platform"));

    if (kDebugMode) {
      print("STATUS CODE : ${response.statusCode}");
      print("BODY : ${response.body}");
    }

    if (response.statusCode == 200) {
      var decodedData = json.decode(response.body);
      games =
          List<GameModel>.from(decodedData.map((e) => GameModel.fromJson(e)))
              .toList();

      isLoading = false;
      notifyListeners();
    }
  }
}
