void main() {
  var noodle = MenuItem("veg noodle", 9.99);
  var pizza = Pizza(["Mushroom", "Peppers"], "volcano pizza", 12.99);

  print(noodle);
  print(pizza);
}

class MenuItem {
  String title;
  double price;

  // Constructor
  MenuItem(this.title, this.price);

  // Methods
  String format() {
    return "$title --> $price";
  }

  @override
  String toString() {
    return format();
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  // Constructor
  Pizza(this.toppings, super.title, super.price);

  // Methods override
  @override
  String format() {
    var format = "Contains:";
    for (final t in toppings) {
      format = "$format $t";
    }

    return "$title --> £$price \n$format";
  }

  @override
  String toString() {
    return "Instance of pizza: " + this.format();
  }
}

// #10