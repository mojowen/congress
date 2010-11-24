class Vote
  include Mongoid::Document
  include Mongoid::Timestamps
  
  index :roll_id, :unique => true
  index :chamber
  index :session
  index :type
  index :result
  index :voted_at
  index :roll_type
  index :bill_id
  
  def self.unique_keys
    [:roll_id]
  end
  
  def self.default_order
    :voted_at
  end
  
  def self.basic_fields
    [:how, :roll_id, :number, :year, :chamber, :session, :result, :bill_id, :voted_at, :last_updated, :roll_type,  :question, :required, :vote_breakdown]
  end
  
end