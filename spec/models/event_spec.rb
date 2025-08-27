require "rails_helper"

RSpec.describe Event, type: :model do
  it "is valid with valid attributes" do
    event = build(:event)
    expect(event).to be_valid
  end

  it "is invalid without a title" do
    event = build(:event, title: nil)
    expect(event).not_to be_valid
    expect(event.errors[:title]).to include("can't be blank")
  end

  it "is invalid without a start_date" do
    event = build(:event, start_date: nil)
    expect(event).not_to be_valid
    expect(event.errors[:start_date]).to include("can't be blank")
  end

  it "is invalid without an end_date" do
    event = build(:event, end_date: nil)
    expect(event).not_to be_valid
    expect(event.errors[:end_date]).to include("can't be blank")
  end
end
