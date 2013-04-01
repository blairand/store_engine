#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

StoreEngine::Application.load_tasks

begin
  require 'rspec/core/rake_task'

  task :default => :spec

  RSpec::Core::RakeTask.new("spec:acceptance") do |t|
    t.rspec_opts = "--tag acceptance"
  end
end

namespace :sanitation do
  desc "Check line lengths & whitespace with Cane"
  task :lines do
    puts ""
    puts "== using cane to check line length =="
    system("cane --no-abc --style-glob 'lib/**/*.rb' --no-doc")
    puts "== done checking line length =="
    puts ""
  end

  desc "Check method length with Reek"
  task :methods do
    puts ""
    puts "== using reek to check method length =="
    system("reek -n lib/**/*.rb 2>&1 | grep -v ' 0 warnings'")
    puts "== done checking method length =="
    puts ""
  end

  desc "Check both line length and method length"
  task :all => [:lines, :methods]
end

desc "add photos to categories"
task :cat_photos do 
  soft_storage = Category.find_by_name("soft-storage")
  soft_storage.update_attributes(photo_url:soft_storage.products.first.photo_url.to_s)

  hangers = Category.find_by_name("hangers")
  hangers.update_attributes(photo_url:hangers.products.first.photo_url.to_s)

  ironing_board_covers = Category.find_by_name("ironing-board-covers")
  ironing_board_covers.update_attributes(photo_url:ironing_board_covers.products.first.photo_url.to_s)

  kitchen_accessories = Category.find_by_name("kitchen-accessories")
  kitchen_accessories.update_attributes(photo_url:kitchen_accessories.products.first.photo_url.to_s)

  hampers = Category.find_by_name("hampers")
  hampers.update_attributes(photo_url:hampers.products.first.photo_url.to_s)

  shelves = Category.find_by_name("shelves")
  shelves.update_attributes(photo_url:shelves.products.first.photo_url.to_s)

  shelf = Category.find_by_name("shelf")
  shelf.update_attributes(photo_url:shelf.products.first.photo_url.to_s)

  shelving = Category.find_by_name("shelving")
  shelving.update_attributes(photo_url:shelving.products.first.photo_url.to_s)

  storage_accessories = Category.find_by_name("storage-accessories")
  storage_accessories.update_attributes(photo_url:storage_accessories.products.first.photo_url.to_s)

  trash_cans = Category.find_by_name("trash-cans")
  trash_cans.update_attributes(photo_url:trash_cans.products.first.photo_url.to_s)

  carts = Category.find_by_name("carts")
  carts.update_attributes(photo_url:carts.products.first.photo_url.to_s)

  garment_racks = Category.find_by_name("garment-racks")
  garment_racks.update_attributes(photo_url:garment_racks.products.first.photo_url.to_s)

  ironing_boards = Category.find_by_name("ironing-boards")
  ironing_boards.update_attributes(photo_url:ironing_boards.products.first.photo_url.to_s)

  laundry_bag = Category.find_by_name("laundry-bag")
  laundry_bag.update_attributes(photo_url:laundry_bag.products.first.photo_url.to_s)

  laundry = Category.find_by_name("laundry")
  laundry.update_attributes(photo_url:laundry.products.first.photo_url.to_s)

  drying = Category.find_by_name("drying")
  drying.update_attributes(photo_url:drying.products.first.photo_url.to_s)

  shoe_storage = Category.find_by_name("shoe-storage")
  shoe_storage.update_attributes(photo_url:shoe_storage.products.first.photo_url.to_s)

  laundry_sorters = Category.find_by_name("laundry-sorters")
  laundry_sorters.update_attributes(photo_url:laundry_sorters.products.first.photo_url.to_s)

  laundry_centers = Category.find_by_name("laundry-centers")
  laundry_centers.update_attributes(photo_url:laundry_centers.products.first.photo_url.to_s)

  vacuum_storage = Category.find_by_name("vacuum-storage")
  vacuum_storage.update_attributes(photo_url:vacuum_storage.products.first.photo_url.to_s)

  wardrobe = Category.find_by_name("wardrobe")
  wardrobe.update_attributes(photo_url:wardrobe.products.first.photo_url.to_s)

  closets = Category.find_by_name("closets")
  closets.update_attributes(photo_url:closets.products.first.photo_url.to_s)

  tv_mounting_brackets  = Category.find_by_name("tv-mounting-brackets")
  tv_mounting_brackets .update_attributes(photo_url:tv_mounting_brackets .products.first.photo_url.to_s)

  laundry_for_dummies = Category.find_by_name("laundry-for-dummies")
  laundry_for_dummies.update_attributes(photo_url:laundry_for_dummies.products.first.photo_url.to_s)

end
