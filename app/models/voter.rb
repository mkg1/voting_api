require 'securerandom'
class Voter < ActiveRecord::Base
  has_one :vote
  before_validation :get_token
  validates :name, presence: true
  validates :token, presence: true, uniqueness: true

  private def get_token
    self.token = SecureRandom.hex
  end

  def as_json(options = nil)
    {id: id,
      name: name,
      party: party,
    }
  end
end
