// Functions
String greet({
  String? name,
  required int age,
  bool? isClever,
}) {
  String? clever;

  if (isClever != null) {
    clever = isClever ? 'clever' : 'not clever';
  }

  return "My name is $name, I'm $age and I'm also $clever.";
}

void main() {
  // Basics
  // Declare variables with keywords: var, final, const
  var name = "Bella";
  final age = 4;
  const isClever = true;

  final greeting = greet(name: name, age: age, isClever: isClever);
  print(greeting);

  // Math operations
  print(age + 3);
  print(age - 1);
  print(age * 2);
  print(age / 2);
  print(age % 2);

  // ------------------------------------

  // Type Annotations (explicitly)
  String surname = "Jimmy";
  surname = "007";
  int age2 = 35;
  age2 = 37;
  bool isOpen = true;
  isOpen = false;
  double avarageRatong = 7.5;
  avarageRatong = 9.5;

  // Assigne Null to a variable
  int? points;

  print(surname);
  print(age2);
  print(isOpen);
  print(avarageRatong);
  print(points);

  // ------------------------------------

  // Lists
  List<int> scores = [21, 3, 9, 23, 56, 77, 99, 85, 11, 7];
  scores[1] = 12;
  scores.add(100);
  scores.shuffle();
  print(scores);
  print(scores.indexOf(12));

  scores.remove(21);
  scores.removeLast();
  print(scores);

  // Sets
  Set<String> names = {"Mario", "Luigi", "Peach"};
  names.add('Bella');
  names.add('Peach');
  names.remove("Luigi");
  print(names);
  print(names.length);

  // ------------------------------------

  // Control flow
  for (int i = 0; i < 9; i++) {
    print("The current value is $i");
  }

  for (int score in scores.where((s) => s >= 77)) {
    print("The score is $score");

    // if (score > 77) {
    //   print("The score is $score");
    // } else {
    //   print("Score not high enough");
    // }
  }

  // ------------------------------------

  // Maps
  Map<String, String> person = {
    "firstName": "Jim",
    "lastName": "BTK",
  };
  person["lastName"] = "JKO";
  person["adresse"] = "3 rue de Paris";

  print(person["firstName"]);
  print(person.containsKey("firstName"));
  print(person.remove("firstName"));
  print(person.values);
  print(person);
}
