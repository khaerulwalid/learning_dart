import "dart:io";

void main() {
  List<String> contacts = [];
  bool running = true;

  while (running) {
    print("Simple Contact Manager");
    print("1. Add Contact");
    print("2. View Contacts");
    print("3. Remove Contact");
    print("4. Exit");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addContact(contacts);
        break;
      case '2':
        viewContacts(contacts);
        break;
      case '3':
        removeContact(contacts);
        break;
      case '4':
        print("Exit program ...");
        running = false;
        break;
      default:
        print("Invalid choice. Please select a valid option.");
    }

    print(""); // Line break for better readability
  }
}

void addContact(List<String> contacts) {
  print("Enter contact name : ");
  String? name = stdin.readLineSync();
  if (name != null && name.isNotEmpty) {
    contacts.add(name);
    print("Contact added: $name");
  } else {
    print("Contact name cannot be empty");
  }
}

void viewContacts(List<String> contacts) {
  if (contacts.isEmpty) {
    print("No contacts to display.");
  } else {
    print("contacts :");
    for (var contact in contacts) {
      print(contact);
    }
  }
}

void removeContact(List<String> contacts) {
  if (contacts.isEmpty) {
    print("No contacts to remove.");
    return;
  }

  print("Enter contact name to remove : ");
  String? name = stdin.readLineSync();
  if (name != null && name.isNotEmpty) {
    if (contacts.contains(name)) {
      contacts.remove(name);
      print("Contact removed: $name");
    } else {
      print("Contact not found");
    }
  } else {
    print("Contact name cannot be empty");
  }
}
