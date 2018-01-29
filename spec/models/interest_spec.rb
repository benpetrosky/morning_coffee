require 'rails_helper'

describe Interest do
  it { should validate_presence_of :interest_name }
  it { should belong_to :user }
end
