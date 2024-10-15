// a class for what a food is going to be

class Food {

  // Each food have the following attributes
  String name;
  String price;
  String imagePath;
  String rating;

  // Constructor
  Food({required this.name,
        required this.price,
        required this.imagePath,
        required this.rating});

  // getter method
  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rating => rating;

}