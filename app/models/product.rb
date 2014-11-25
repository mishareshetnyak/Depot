class Product < ActiveRecord::Base
  validates :title, presence: true
  def self.latest
    Product.order(:updated_at).last
  end
  before_destroy :ensure_not_referenced_by_any_line_item
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'существуют товарные позиции')
      return false
    end
  end
end
end
