require 'rails_helper'

describe Types::TagType do
  subject { described_class }
  it { is_expected.to have_field(:name).of_type(String) }
end
