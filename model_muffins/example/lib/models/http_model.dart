/// [HTTPModel] is an example of using a REST call representation and getting some data [foo]
import 'dart:convert';
import 'dart:collection';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value_generator/builder.dart';
import 'package:example/models/serializer.dart';

part 'http_model.g.dart';

abstract class HTTPModel implements Built<HTTPModel, HTTPModelBuilder>{
  HTTPModel._();

  factory HTTPModel([updates(HTTPModelBuilder b)]) = _$HTTPModel;

  @BuiltValueField(wireName: "foo")
  @BuiltValueSerializer(serializeNulls: true)
  String get foo;

  @BuiltValueField(wireName: "fizz")
  int get fizz;

  @BuiltValueField(wireName: "buzz")
  int get buzz;

  @BuiltValueField(wireName: "ada")
  String get ada;

  String toJson() => json.encode(serializers.serializeWith(HTTPModel.serializer, this));

  static HTTPModel fromJson(String response) => serializers.deserializeWith(HTTPModel.serializer, json.decode(response));

  static Serializer<HTTPModel> get serializer => _$hTTPModelSerializer;
}