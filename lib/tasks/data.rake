
require 'csv'
namespace :data  do	

	task :import_pizzas => :environment do

		puts "imorting the pizzas"

		CSV.foreach(Rails.root.join('data', 'pizza.csv')) do |row|
  	puts row.inspect
  	value = {

  		:name => row[0],
  		:lat => row[1].to_f,
  		:lng => row[2].to_f
  	}
  	Pizza.create(value)

  	puts value.inspect
  # use row here...
end
end

end