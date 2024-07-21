class Skill {
  final rankTable = {
    1: 'Pathe`tic',
    2: 'Untrained',
    3: 'Novice',
    4: 'Adept',
    5: 'Expert',
    6: 'Master',
    8: 'Virtuoso',
  }
  int rank = 2;
  int modifier = 0;
  String rankName = 'Untrained';
  
  void setRank(int entry) {
    if (rankTable.containsKey(entry)) {
      rank = entry;
      rankName = rankTable[rank]!;
    }
  }
  void setModifier(int entry) {
    modifier = entry;
  }
}