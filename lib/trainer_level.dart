class TrainerLevel {
  final expTable = {
    1: 0,
    2: 6,
    3: 15,
    4: 28,
    5: 45,
    6: 66,
    7: 91,
    8: 120,
    9: 153,
    10: 190,
  };
  int exp = 0;
  int level = 1;
  int toNextLevel = 10;
  
  void addExp(int addedExp) {
    exp += addedExp;
    calculateLevel();
    calculateToNextLevel()l
  }
  
  void calculateToNextLevel() {
    if (level < 50) {
      int next = expTable[level + 1]!;
      toNextLevel = next - exp;
    } else {
      toNextLevel = 0;
    }
  }
  
  void calculateLevel() {
    level = expTable.keys.lastWhere((lvl) => expTable[lvl]! <= exp);
  }
}