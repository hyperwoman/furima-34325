class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :name
    validates :introduction
    validates :prefecture_id, numericality: { other_than: 0 }
    validates_inclusion_of :price, in: 300..9_999_999
    validates :price, numericality: true
    with_options numericality: { other_than: 1 } do
      validates :category_id
      validates :status_id
      validates :shipping_cost_id
      validates :shipping_day_id
    end
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :shipping_cost
  belongs_to :prefecture
  belongs_to :shipping_day
end
