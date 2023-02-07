class User {
  final String userId;

  const User({
    required this.userId,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
    );
  }
}
