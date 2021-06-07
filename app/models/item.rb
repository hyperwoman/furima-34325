class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :image, presence: true
  validates :name, presence: true
  validates :introduction, presence: true
  validates :category_id, presence: true, numericality: { other_than: 1 } 
  validates :status_id, presence: true, numericality: { other_than: 1 } 
  validates :shipping_cost_id, presence: true, numericality: { other_than: 1 } 
  validates :prefecture_id, presence: true, numericality: { other_than: 0 } 
  validates :shipping_day_id, presence: true, numericality: { other_than: 1 } 
  validates :price,  presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :shipping_cost
  belongs_to :Prefecture
  belongs_to :shipping_day

end