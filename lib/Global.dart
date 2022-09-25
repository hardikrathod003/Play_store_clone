class Global {
  static bool isIOS = false;
  static List name = [
    {
      "title": "Recommended for you",
    },
    {
      "title": "New & updated for you",
    },
    {
      "title": "Suggested for you",
    },
  ];
  static List Icons = [
    {
      'image':
          "https://www.freepnglogos.com/uploads/logo-ig-png/logo-ig-instagram-new-logo-vector-download-13.png",
      'name': "Instagram",
      "rating": "4.3 ⭐",
      'download': "1B+",
    },
    {
      'image':
          "https://1000logos.net/wp-content/uploads/2020/04/Google-Pay-Logo.png",
      'name': "Google pay ",
      "rating": "4.3 ⭐",
      'download': "500M+",
    },
    {
      'image':
          "https://png.pngitem.com/pimgs/s/173-1730013_burger-king-retro-logo-hd-png-download.png",
      'name': "Burger King india ",
      "rating": "3.2 ⭐",
      'download': "1M+",
    },
    {
      'image':
          "https://play-lh.googleusercontent.com/3yi7Fo-OtJUZ7nAlB8WB0v1WTOdz76Z1kqvuuubhNlHzU9jhP97TnI-6eVThWZMV31A",
      'name': "Messho ",
      "rating": "4.8 ⭐",
      'download': "50M+",
    },
    {
      'image':
          "https://www.datocms-assets.com/40390/1617189380-brave-browser-tiny.png",
      'name': "Brave",
      "rating": "4.5 ⭐",
      'download': "100M+",
    },
  ];
  static List New = [
    {
      'image':
          "https://www.kindpng.com/picc/m/3-31853_snapchat-logo-picaboo-snapchat-logo-dwg-hd-png.png",
      'name': "Snapchat",
      "rating": "4.2 ⭐",
      'download': "1B+",
    }
  ];
}

class IToday {
  String name;
  String subName;
  String img;
  String description;

  IToday({
    required this.name,
    required this.subName,
    required this.img,
    required this.description,
  });
}

class AppsSecond {
  String sname;
  // List listname;

  AppsSecond({
    required this.sname,
    // required this.listname,
  });
}

List<AppsSecond> appsList = <AppsSecond>[
  AppsSecond(
    sname: "Recommended for you",
  ),
  AppsSecond(
    sname: "New & updated apps",
  ),
  AppsSecond(
    sname: "Suggested for you",
  ),
  AppsSecond(
    sname: "Shoppings Apps",
  ),
];

List<IToday> todayList = <IToday>[
  IToday(
      name: "Pokemon Go",
      subName: "Bizarre Sports Games",
      img:
          "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource115/v4/a6/e8/b4/a6e8b487-acdd-444e-4f6c-7a013ec184d4/417050bb-74d9-4d82-aaad-26c24b2f9c26_EN_S1_iOS_6.5.png/300x0w.webp",
      description: "Compete in thrilling battles"),
  IToday(
      name: "Heart Stone",
      subName: "Bizarre Sports Games",
      img:
          "https://gamein.wiki/wp-content/uploads/2022/06/Hearthstone-Poster.jpg",
      description: "Compete in thrilling battles"),
  IToday(
      name: "Train Crisis",
      subName: "Bizarre Sports Games",
      img: "https://images.igdb.com/igdb/image/upload/t_cover_big/co44ur.png",
      description: "Compete in thrilling battles"),
  IToday(
      name: "Test Drive",
      subName: "Bizarre Sports Games",
      img:
          "https://www.gamespot.com/a/uploads/scale_tiny/mig/2/1/0/3/2212103-box_tdu.png",
      description: "Compete in thrilling battles"),
  IToday(
      name: "Subway surfer miami",
      subName: "Bizarre Sports Games",
      img:
          "https://gamein.wiki/wp-content/uploads/2022/06/Subway-Surfers-Poster-1.jpg",
      description: "Compete in thrilling battles"),
  IToday(
      name: "Valorant",
      subName: "Bizarre Sports Games",
      img:
          "https://cdna.artstation.com/p/assets/images/images/036/947/866/large/ismael-fofana-valorant-game-poster-design.jpg?1619051884",
      description: "Compete in thrilling battles"),
  IToday(
      name: "Pokemon Go",
      subName: "Bizarre Sports Games",
      img:
          "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource115/v4/a6/e8/b4/a6e8b487-acdd-444e-4f6c-7a013ec184d4/417050bb-74d9-4d82-aaad-26c24b2f9c26_EN_S1_iOS_6.5.png/300x0w.webp",
      description: "Compete in thrilling battles"),
  IToday(
      name: "Heart Stone",
      subName: "Bizarre Sports Games",
      img:
          "https://gamein.wiki/wp-content/uploads/2022/06/Hearthstone-Poster.jpg",
      description: "Compete in thrilling battles"),
  IToday(
      name: "Train Crisis",
      subName: "Bizarre Sports Games",
      img: "https://images.igdb.com/igdb/image/upload/t_cover_big/co44ur.png",
      description: "Compete in thrilling battles"),
  IToday(
      name: "Test Drive",
      subName: "Bizarre Sports Games",
      img:
          "https://www.gamespot.com/a/uploads/scale_tiny/mig/2/1/0/3/2212103-box_tdu.png",
      description: "Compete in thrilling battles"),
  IToday(
      name: "Subway surfer miami",
      subName: "Bizarre Sports Games",
      img:
          "https://gamein.wiki/wp-content/uploads/2022/06/Subway-Surfers-Poster-1.jpg",
      description: "Compete in thrilling battles"),
  IToday(
      name: "Valorant",
      subName: "Bizarre Sports Games",
      img:
          "https://cdna.artstation.com/p/assets/images/images/036/947/866/large/ismael-fofana-valorant-game-poster-design.jpg?1619051884",
      description: "Compete in thrilling battles"),
];
