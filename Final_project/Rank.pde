class Rank{
  String country;
  String abbrev;
  int[] scores = new int[5];
  
  Rank(String name, int score1, int score2, int score3, int score4, int score5, String smallname) {
    country = name;
    scores[0] = score1;
    scores[1] = score2;
    scores[2] = score3;
    scores[3] = score4;
    scores[4] = score5;
    abbrev = smallname;
  }
}
