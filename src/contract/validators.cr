require "./validators/*"

module Contract
  include Validators

  VALIDATOR = {
    eq:     Equal,
    ex:     Exclusion,
    gt:     GreaterThan,
    gte:    GreaterThanOrEqual,
    in:     Inclusion,
    lt:     LessThan,
    lte:    LessThanOrEqual,
    regex:  RegularExpression,
    length: Length,
  }

  def self.validator_for(kind, field, value, expected_value, message : String? = nil)
    VALIDATOR[kind].new(field, value, expected_value, message)
  end
end
