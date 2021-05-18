class DataModel {
  final String firstTeamLogo;
  final String secondTeamLogo;
  final String firstTeamName;
  final String secondTeamName;
  final String matchStatus;
  final DateTime dateTime;

  DataModel(
      {this.firstTeamLogo,
      this.secondTeamLogo,
      this.firstTeamName,
      this.secondTeamName,
      this.matchStatus,
      this.dateTime});
}

List<DataModel> data = [
  DataModel(
    firstTeamLogo:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzsSpqeo0mZbz7S3gwNIjzVn8V1OxXrBAUKbrFnT5hlp8pLk6DHRQB14NFO45oykigWZ8&usqp=CAU',
    secondTeamLogo:
        'https://images-na.ssl-images-amazon.com/images/I/61tyTfiqc7L._SX342_.jpg',
    firstTeamName: 'Real Madrid',
    secondTeamName: 'Barcelona',
    matchStatus: 'Match starts soon',
    dateTime: DateTime.parse('2021-05-19 00:29:00.090427+0500'),
  ),
  DataModel(
    firstTeamLogo:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzsSpqeo0mZbz7S3gwNIjzVn8V1OxXrBAUKbrFnT5hlp8pLk6DHRQB14NFO45oykigWZ8&usqp=CAU',
    secondTeamLogo:
        'https://upload.wikimedia.org/wikipedia/en/thumb/f/f4/Atletico_Madrid_2017_logo.svg/1200px-Atletico_Madrid_2017_logo.svg.png',
    firstTeamName: 'Real Madrid',
    secondTeamName: 'Atletico Madrid',
    matchStatus: 'Match starts soon',
    dateTime: DateTime.parse('2021-05-16 19:10:10.090427+0500'),
  ),
  DataModel(
    firstTeamLogo:
        'https://logoeps.com/wp-content/uploads/2011/08/liverpool-logo-vector.png',
    secondTeamLogo:
        'https://upload.wikimedia.org/wikipedia/en/thumb/e/eb/Manchester_City_FC_badge.svg/1200px-Manchester_City_FC_badge.svg.png',
    firstTeamName: 'Liverpool',
    secondTeamName: 'Man City',
    matchStatus: 'Match starts soon',
    dateTime: DateTime.parse('2021-05-16 19:10:10.090427+0500'),
  ),
  DataModel(
    firstTeamLogo:
        'https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Manchester_United_FC_crest.svg/1200px-Manchester_United_FC_crest.svg.png',
    secondTeamLogo:
        'https://upload.wikimedia.org/wikipedia/en/thumb/e/eb/Manchester_City_FC_badge.svg/1200px-Manchester_City_FC_badge.svg.png',
    firstTeamName: 'Man Utd',
    secondTeamName: 'Man City',
    matchStatus: 'Match starts soon',
    dateTime: DateTime.parse('2021-05-16 19:10:10.090427+0500'),
  ),
  DataModel(
    firstTeamLogo:
        'https://creativereview.imgix.net/content/uploads/2017/01/Juve-sq.jpg',
    secondTeamLogo:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Logo_of_AC_Milan.svg/1200px-Logo_of_AC_Milan.svg.png',
    firstTeamName: 'Juventus',
    secondTeamName: 'AC Milan',
    matchStatus: 'Match starts soon',
    dateTime: DateTime.parse('2021-05-16 19:10:10.090427+0500'),
  ),
  DataModel(
    firstTeamLogo:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzsSpqeo0mZbz7S3gwNIjzVn8V1OxXrBAUKbrFnT5hlp8pLk6DHRQB14NFO45oykigWZ8&usqp=CAU',
    secondTeamLogo:
        'https://creativereview.imgix.net/content/uploads/2017/01/Juve-sq.jpg',
    firstTeamName: 'Real Madrid',
    secondTeamName: 'Juventus',
    matchStatus: 'Match starts soon',
    dateTime: DateTime.parse('2021-05-16 19:10:10.090427+0500'),
  ),
  DataModel(
    firstTeamLogo:
        'https://cdn.freelogovectors.net/wp-content/uploads/2018/08/Paris-Saint-Germain-Logo.png',
    secondTeamLogo:
        'https://images-na.ssl-images-amazon.com/images/I/61tyTfiqc7L._SX342_.jpg',
    firstTeamName: 'PSG',
    secondTeamName: 'Barcelona',
    matchStatus: 'Match starts soon',
    dateTime: DateTime.parse('2021-05-16 19:10:10.090427+0500'),
  ),
];
