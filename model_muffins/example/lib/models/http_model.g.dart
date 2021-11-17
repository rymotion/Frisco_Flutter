// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HTTPModel> _$hTTPModelSerializer = new _$HTTPModelSerializer();

class _$HTTPModelSerializer implements StructuredSerializer<HTTPModel> {
  @override
  final Iterable<Type> types = const [HTTPModel, _$HTTPModel];
  @override
  final String wireName = 'HTTPModel';

  @override
  Iterable<Object> serialize(Serializers serializers, HTTPModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'foo',
      serializers.serialize(object.foo, specifiedType: const FullType(String)),
      'fizz',
      serializers.serialize(object.fizz, specifiedType: const FullType(int)),
      'buzz',
      serializers.serialize(object.buzz, specifiedType: const FullType(int)),
      'ada',
      serializers.serialize(object.ada, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  HTTPModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HTTPModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'foo':
          result.foo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fizz':
          result.fizz = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'buzz':
          result.buzz = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ada':
          result.ada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HTTPModel extends HTTPModel {
  @override
  final String foo;
  @override
  final int fizz;
  @override
  final int buzz;
  @override
  final String ada;

  factory _$HTTPModel([void Function(HTTPModelBuilder) updates]) =>
      (new HTTPModelBuilder()..update(updates)).build();

  _$HTTPModel._({this.foo, this.fizz, this.buzz, this.ada}) : super._() {
    BuiltValueNullFieldError.checkNotNull(foo, 'HTTPModel', 'foo');
    BuiltValueNullFieldError.checkNotNull(fizz, 'HTTPModel', 'fizz');
    BuiltValueNullFieldError.checkNotNull(buzz, 'HTTPModel', 'buzz');
    BuiltValueNullFieldError.checkNotNull(ada, 'HTTPModel', 'ada');
  }

  @override
  HTTPModel rebuild(void Function(HTTPModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HTTPModelBuilder toBuilder() => new HTTPModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HTTPModel &&
        foo == other.foo &&
        fizz == other.fizz &&
        buzz == other.buzz &&
        ada == other.ada;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, foo.hashCode), fizz.hashCode), buzz.hashCode),
        ada.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HTTPModel')
          ..add('foo', foo)
          ..add('fizz', fizz)
          ..add('buzz', buzz)
          ..add('ada', ada))
        .toString();
  }
}

class HTTPModelBuilder implements Builder<HTTPModel, HTTPModelBuilder> {
  _$HTTPModel _$v;

  String _foo;
  String get foo => _$this._foo;
  set foo(String foo) => _$this._foo = foo;

  int _fizz;
  int get fizz => _$this._fizz;
  set fizz(int fizz) => _$this._fizz = fizz;

  int _buzz;
  int get buzz => _$this._buzz;
  set buzz(int buzz) => _$this._buzz = buzz;

  String _ada;
  String get ada => _$this._ada;
  set ada(String ada) => _$this._ada = ada;

  HTTPModelBuilder();

  HTTPModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _fizz = $v.fizz;
      _buzz = $v.buzz;
      _ada = $v.ada;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HTTPModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HTTPModel;
  }

  @override
  void update(void Function(HTTPModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HTTPModel build() {
    final _$result = _$v ??
        new _$HTTPModel._(
            foo: BuiltValueNullFieldError.checkNotNull(foo, 'HTTPModel', 'foo'),
            fizz: BuiltValueNullFieldError.checkNotNull(
                fizz, 'HTTPModel', 'fizz'),
            buzz: BuiltValueNullFieldError.checkNotNull(
                buzz, 'HTTPModel', 'buzz'),
            ada:
                BuiltValueNullFieldError.checkNotNull(ada, 'HTTPModel', 'ada'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
