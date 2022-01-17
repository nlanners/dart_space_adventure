import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:dart_space_adventure/dart_space_adventure.dart';

void main(List<String> arguments) {

  final parser = ArgParser();

  ArgResults argResults = parser.parse(arguments);
  File(argResults.rest[0]).readAsString()
    .then((String contents) {
      final system = jsonDecode(contents);

      SpaceAdventure(
        planetarySystem: PlanetarySystem(
        name: system['name'], 
        planets: mockPlanets(system['planets'])
        )
      ).start();
    });
}

List<Planet> mockPlanets(planetData) {
  List<Planet> planetList = [];
  planetData.forEach( (e) =>
      planetList.add(Planet(name: e['name'], description: e['description']))
  );

  return planetList;
}
