class Contact {
  final int? id;
  final String firstName;
  final String lastName;
  final String phone;
  final String? email;

  Contact({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'email': email,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      id: map['id'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      phone: map['phone'],
      email: map['email'],
    );
  }

  String get fullName => '$firstName $lastName'.trim();
}
