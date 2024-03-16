void main() {
  var noodle = MenuItem("veg noodle", 9.99);
  var kebab = MenuItem("Kebab classic", 8.99);
  var pizza1 = Pizza(["Mushroom", "Peppers"], "volcano pizza", 12.99);
  var pizza2 = Pizza(["Eggs", "Peppers"], "Conception pizza", 10.99);

  // Generic
  var foods1 = Collection<MenuItem>('Menu Items', [noodle, pizza1, kebab]);
  var foods2 = Collection<Pizza>('Menu Items', [pizza1, pizza2]);

  var random1 = foods1.randomItem();
  var random2 = foods2.randomItem();

  print(noodle);
  print(pizza1);
  print(pizza2);

  print(random1);
  print(random2);
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

// Generics
class Collection<T> {
  String name;
  List<T> data;

  Collection(this.name, this.data);

  T randomItem() {
    data.shuffle();

    return data[0];
  }
}
