import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class Users {
  UsersAddress? address;
  int? id;
  String? email;
  String? username;
  String? password;
  UsersName? name;
  String? phone;
  @JsonKey(name: '__v')
  int? v;

  Users(this.address, this.id, this.email, this.username, this.password,
      this.name, this.phone, this.v);

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  Map<String, dynamic> toJson() => _$UsersToJson(this);
}

@JsonSerializable()
class UsersAddress {
  UsersAddressGeolocation? geolocation;
  String? city;
  String? street;
  int? number;
  String? zipcode;

  UsersAddress(
      this.geolocation, this.city, this.street, this.number, this.zipcode);

  factory UsersAddress.fromJson(Map<String, dynamic> json) =>
      _$UsersAddressFromJson(json);

  Map<String, dynamic> toJson() => _$UsersAddressToJson(this);
}

@JsonSerializable()
class UsersAddressGeolocation {
  String? lat;
  String? long;

  UsersAddressGeolocation(this.lat, this.long);

  factory UsersAddressGeolocation.fromJson(Map<String, dynamic> json) =>
      _$UsersAddressGeolocationFromJson(json);

  Map<String, dynamic> toJson() => _$UsersAddressGeolocationToJson(this);
}

@JsonSerializable()
class UsersName {
  String? firstname;
  String? lastname;

  UsersName(this.firstname, this.lastname);

  factory UsersName.fromJson(Map<String, dynamic> json) =>
      _$UsersNameFromJson(json);

  Map<String, dynamic> toJson() => _$UsersNameToJson(this);
}
