class OnboardModel {
  String? title;
  String? imageUrl;
  String? body;
  OnboardModel(
      {required this.title, required this.body, required this.imageUrl});
}

List<OnboardModel> screens = <OnboardModel>[
  OnboardModel(
      title: 'Proven\nSpecialists',
      body: 'We check each specialists before he starts work',
      imageUrl: 'assets/images/o1.png'),
  OnboardModel(
      title: 'Honest Ratings',
      body: 'We carefully check each specialist and put honest ratings',
      imageUrl: 'assets/images/o2.png'),
  OnboardModel(
      title: 'Insured Orders',
      body: 'We insure each order for the amount of \$500',
      imageUrl: 'assets/images/o3.png'),
  OnboardModel(
      title: 'Create order',
      body: "It's easy, just click on the plus",
      imageUrl: 'assets/images/o4.png'),
];
