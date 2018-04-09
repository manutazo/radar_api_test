require 'rails_helper'

RSpec.describe Handler, type: :model do

it "no attack argument" do
  expect{Handler.new.parsed("nada")}.to raise_error(RuntimeError)
end

it "no radar argument" do
expect{Handler.new.parsed({"attack-mode":["closest-first"]})}.to raise_error(RuntimeError)
end

end
