import 'ap.dart';
import 'skill.dart';
import 'trainer_stat.dart';
import 'trainer_health.dart';
import 'trainer_level.dart';
class Trainer {
  String name = "";
  String gender = "";
  int age = 10;
  String size = "Medium";
  int weight = 4;
  TrainerLevel level = TrainerLevel();
  late AP ap = AP(level.level);
  late TrainerHealth hp = TrainerHealth(level.level);
  TrainerStat attack = TrainerStat();
  TrainerStat defense = TrainerStat();
  TrainerStat spAtk = TrainerStat();
  TrainerStat spDef = TrainerStat();
  TrainerStat speed = TrainerStat();
  int basePoints = 35;
  int featurePoints = 0;
  late int levelPoints = level.level * 2 + 10;
  Skill acrobatics = Skill();
  Skill athletics = Skill();
  Skill charm = Skill();
  Skill combat = Skill();
  Skill command = Skill();
  Skill focus = Skill();
  Skill generalEd = Skill();
  Skill guile = Skill();
  Skill intimidation = Skill();
  Skill intuition = Skill();
  Skill investigation = Skill();
  Skill medicalEd = Skill();
  Skill occultEd = Skill();
  Skill perception = Skill();
  Skill pokémonEd = Skill();
  Skill stealth = Skill();
  Skill survival = Skill();
  Skill techEd = Skill();
  late List<Feature> features = [];
  late List<Edge> edges = [];

  void 
  
  void addLevelPoints(TrainerStat stat, int points) {
    stat.setPoints(points);
    levelPoints -= points;
  }
  
  void addFeaturePoints(TrainerStat stat, int points) {
    stat.setFeatures(points);
    featurePoints -= points;
  }
  
  void addBasePoints(TrainerStat stat, int points) {
    stat.setBase(points);
    basePoints -= points;
  }
}