// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      json['address'] == null
          ? null
          : UsersAddress.fromJson(json['address'] as Map<String, dynamic>),
      (json['id'] as num?)?.toInt(),
      json['email'] as String?,
      json['username'] as String?,
      json['password'] as String?,
      json['name'] == null
          ? null
          : UsersName.fromJson(json['name'] as Map<String, dynamic>),
      json['phone'] as String?,
      (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'address': instance.address,
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'phone': instance.phone,
      '__v': instance.v,
    };

UsersAddress _$UsersAddressFromJson(Map<String, dynamic> json) => UsersAddress(
      json['geolocation'] == null
          ? null
          : UsersAddressGeolocation.fromJson(
              json['geolocation'] as Map<String, dynamic>),
      json['city'] as String?,
      json['street'] as String?,
      (json['number'] as num?)?.toInt(),
      json['zipcode'] as String?,
    );

Map<String, dynamic> _$UsersAddressToJson(UsersAddress instance) =>
    <String, dynamic>{
      'geolocation': instance.geolocation,
      'city': instance.city,
      'street': instance.street,
      'number': instance.number,
      'zipcode': instance.zipcode,
    };

UsersAddressGeolocation _$UsersAddressGeolocationFromJson(
        Map<String, dynamic> json) =>
    UsersAddressGeolocation(
      json['lat'] as String?,
      json['long'] as String?,
    );

Map<String, dynamic> _$UsersAddressGeolocationToJson(
        UsersAddressGeolocation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
    };

UsersName _$UsersNameFromJson(Map<String, dynamic> json) => UsersName(
      json['firstname'] as String?,
      json['lastname'] as String?,
    );

Map<String, dynamic> _$UsersNameToJson(UsersName instance) => <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
    };
