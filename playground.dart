int mustGreaterThanZero(int val) {
  if (val <= 0) {
    throw Exception('Value must be greater than zero');
  }
  return val;
}

void verifyTheValue(var val) {
  var valueVerification;

  try {
    valueVerification = mustGreaterThanZero(val);
  } catch (e) {
    print(e);
  } finally {
    if (valueVerification == null) {
      print("Value is not accepted");
    } else {
      print("Value verified: $valueVerification");
    }
  }
}

void main() {
  verifyTheValue(-123);
}
