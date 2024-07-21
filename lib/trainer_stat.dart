class TrainerStat {
  int base = 0;
  int features = 0;
  int points = 0;
  int adjusted = 0;
  int stage = 0;
  int total = 0;
  int modifier = 0;
  
  void setBase(int entry) {
    if (entry < 2) {
      base = 2;
    } else if (entry > 10) {
      base = 10;
    } else {
      base = entry;
    }
    calculateTotal();
  }
  
  void setFeatures(int entry) {
    features += entry;
    calculateTotal();
  }
  
  void setPoints(int entry) {
    points += entry;
    calculateTotal();
  }
  
  void setStage(int entry) {
    stage += entry;
    calculateTotal();
  }
  
  void calculateTotal() {
    double multiplier = 0;
    calculateAdjusted()
    if (stage < 0) {
      multiplier = 0.1;
    } else {
      multiplier = 0.2;
    }
    total = (adjusted * stage * multiplier) as int;
    if (total < 1) {
      total = 1;
    }
    calculateModifier();
  }
  
  void calculateAdjusted() {
    adjusted = base + features + points;
  }
  
  void calculateModifier() {
    modifier = (total / 5) as int;
  }
}