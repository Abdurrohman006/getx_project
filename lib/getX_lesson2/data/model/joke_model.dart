// {
// "type": "general",
// "setup": "Why are ghosts bad liars?",
// "punchline": "Because you can see right through them!",
// "id": 305
// },

class JokeModel {
  final String? type;
  final String? setup;
  final String? punchline;
  final int? id;

  JokeModel({
    required this.type,
    required this.setup,
    required this.punchline,
    required this.id,
  });

  factory JokeModel.fromJson(Map<String, dynamic> json) {
    String type = json["type"] ?? "no data";
    String setup = json["setup"] ?? "no data";
    String punchline = json["punchline"] ?? "no data";
    int id = json["id"] ?? 0;

    return JokeModel(type: type, setup: setup, punchline: punchline, id: id);
  }
}
