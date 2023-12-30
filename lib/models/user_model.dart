class UserModel {
  int? id;
  String? name;
  String? email;
  String? username;
  String? password;
  // String? passwordConfirmation;
  // url
  String? profilePhotoUrl;
  String? phone;
  String? token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.username,
    this.password,
    // this.passwordConfirmation,
    required this.profilePhotoUrl,
    this.phone,
    this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      username: json['username'],
      password: json['password'] ?? '',
      // passwordConfirmation: json['password_confirmation'],
      profilePhotoUrl: json['profile_photo_url'],
      phone: json['phone'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'password': password,
      // 'password_confirmation': passwordConfirmation,
      'profile_photo_url': profilePhotoUrl,
      'phone': phone,
      'token': token,
    };
  }
}
