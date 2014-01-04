# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
some_groups = [
	{:name => 'The Valley', :organisation => 'Witkowski Family',
		:max_spend => '', :min_spend => ''},
	{:name => '21Fifty', :organisation => '21Fifty Ltd.',
		:max_spend => '20', :min_spend => '20'},
	{:name => 'Marketing dept.', :organisation => 'Toyota',
		:max_spend => '400', :min_spend => ''},
	{:name => 'IT dept.', :organisation => 'Cloud Corp',
		:max_spend => '', :min_spend => '10'}
]
