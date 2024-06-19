class Product < ApplicationRecord
  belongs_to :categories
  belongs_to :suppliers
  has_many :warehouse_records

  def self.buscador(termino)
    Product.where("nombre LIKE ?", "%#{termino}%")
  end
end
