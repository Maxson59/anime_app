class  Anime {
  final String name;
  final double score;
  final int number;
  final String poster;
  const Anime({
    required this.name,
    required this.score,
    required this.number,
    required this.poster
  });
}

const trendsData = [
  Anime(
    name: 'Yozakura-san Chi no Daisakusen',
    score: 4.3,
    number: 170,
    poster: 'assets/images/yozakura.png'
  ),
  Anime(
    name: 'Mushoku Tensei II: Isekai Ittara Honki Dasu',
    score: 4.7,
    number: 132,
    poster: 'assets/images/tensei.png'
  ),
  Anime(
    name: 'Kaii to Otome to Kamikakushi',
    score: 4.5,
    number: 70,
    poster: 'assets/images/dissap.png'
  )
];
const recentData = [
  Anime(
    name: 'Unnamed Memory',
    score: 4.5,
    number: 1700,
    poster: 'assets/images/memori.png'
  ),Anime(
    name: 'Touken Ranbu Kai: Kyoden Moyuru Honnouji',
    score: 2.4,
    number: 2100,
    poster: 'assets/images/touken.png'
  ),
  Anime(
    name: 'Boukyaku Battery (TV)',
    score: 4.0,
    number: 189,
    poster: 'assets/images/yozakura.png'
  ),
  Anime(
    name: 'Rinkai',
    score: 2.7,
    number: 524,
    poster: 'assets/images/rinkai.png'
  )
];