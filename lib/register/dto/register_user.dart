class RegisterUser {
  final String email;
  final String password;
  final String name;

  RegisterUser({
    required this.email,
    required this.password,
    required this.name,
  });

  factory RegisterUser.fromJson(Map<String, dynamic> json) {
    return RegisterUser(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'RegisterUser(email: $email, password: $password, name: $name)';
  }
}