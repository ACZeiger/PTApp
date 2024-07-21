class TrainerHealth {
  int base = 0;
  int features = 0;
  int points = 0;
  int total = 0;
  int max = 0;
  int tick = 0;
  int injuries = 0;
  int adjustedMax = 0;
  
  TrainerHealth(int level) {
    calculateAdjustedMax(level);
  }

  void setBase(int entry, int level) {
    if (entry < 2) {
      base = 4;
    } else if (entry > 10) {
      base = 10;
    } else {
      base = entry;
    }
    calculateAdjustedMax(level);
  }

  void setFeatures(int entry, int level) {
    features += entry;
    calculateAdjustedMax(level);
  }

  void setPoints(int entry, int level) {
    points += entry;
    calculateAdjustedMax(level);
  }

  void calculateAdjustedMax(int level) {
    calculateTick(level);
    adjustedMax = max - (injuries * tick);
  }
  
  void calculateTick(int level) {
    calculateMax(level);
    tick = (max / 10) as int;
  }
  
  void calculateMax(int level) {
    calculateTotal();
    max = 10 + (total * 3) + level * 2;
  }
  
  void calculateTotal() {
    total = base + features + points;
  }
}