import 'package:dart_space_adventure/dart_space_adventure.dart';

const systemName = 'Solar System';
const planetData = {
  'Mercury': 'A very hot planet, closest to the sun.',
  'Venus': 'It\'s very cloudy here!',
  'Earth': 'There is something very familiar about this planet.',
  'Mars': 'Known as the red planet.'
};

void main(List<String> arguments) {
  SpaceAdventure(
    planetarySystem: PlanetarySystem(
      name: systemName, 
      planets: mockPlanets()
    )
  ).start();
}

List<Planet> mockPlanets() {
  return planetData.entries.map(
    (e) => Planet(name: e.key, description: e.value)
  ).toList();
}
