5.times do
  category = ProductCategory.create name: Faker::Lorem.word

  (rand(10) + 1).times do
    group = Faker::Lorem.word

    parent = category.products.create(
      name: Faker::Product.product_name,
      group: group
    )
    
    rand(5).times do
      parent.children.create(
        name: Faker::Product.product_name,
        price: rand(100) + 1,
        group: group
      )
    end

    if parent.has_children?
      parent.update_attribute(:price, parent.children.sum(&:price))
    end
  end
end
