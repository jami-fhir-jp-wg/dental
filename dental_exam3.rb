#!/bin/env ruby

class DentalExam3
  attr_accessor :tooth_existence, tooth_condition

  def def initialize(fhir_json)
    @fhir_json = fhir_json
  end
end

class ToothExamExist
  attr_accessor :existence
end

class ToothExamCondition
  attr_accessor :condition
end