class Transaction < ApplicationRecord

  scope :last_4_search, -> (q) { where("last_4 = #{q}")}
  scope :amount_search, -> (q) { where("amount = #{q}")}

  def self.ransackable_scopes(_auth_object = nil)
    [:last_4_search, :amount_search]
  end
end
