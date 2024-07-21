class AP {
  int max = 5;
  int bound = 0;
  int drained = 0;
  int adjusted = 0;
  
  AP(int level) {
    calculateAdjusted(level);
  }
  
  void calculateAdjusted(int level) {
    calculateMax(level);
    adjusted = max - bound - drained;
  }
  
  void calculateMax(int level) {
    max = 5 + (level / 5) as int;
  }
}