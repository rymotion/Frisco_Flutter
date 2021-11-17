// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'method_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MethodModel> _$methodModelSerializer = new _$MethodModelSerializer();

class _$MethodModelSerializer implements StructuredSerializer<MethodModel> {
  @override
  final Iterable<Type> types = const [MethodModel, _$MethodModel];
  @override
  final String wireName = 'MethodModel';

  @override
  Iterable<Object> serialize(Serializers serializers, MethodModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'foo',
      serializers.serialize(object.foo, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MethodModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MethodModelBuilder();

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
      }
    }

    return result.build();
  }
}

class _$MethodModel extends MethodModel {
  @override
  final String foo;

  factory _$MethodModel([void Function(MethodModelBuilder) updates]) =>
      (new MethodModelBuilder()..update(updates)).build();

  _$MethodModel._({this.foo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(foo, 'MethodModel', 'foo');
  }

  @override
  MethodModel rebuild(void Function(MethodModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MethodModelBuilder toBuilder() => new MethodModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MethodModel && foo == other.foo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, foo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MethodModel')..add('foo', foo))
        .toString();
  }
}

class MethodModelBuilder implements Builder<MethodModel, MethodModelBuilder> {
  _$MethodModel _$v;

  String _foo;
  String get foo => _$this._foo;
  set foo(String foo) => _$this._foo = foo;

  MethodModelBuilder();

  MethodModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MethodModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MethodModel;
  }

  @override
  void update(void Function(MethodModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MethodModel build() {
    final _$result = _$v ??
        new _$MethodModel._(
            foo: BuiltValueNullFieldError.checkNotNull(
                foo, 'MethodModel', 'foo'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
