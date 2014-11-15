# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Group.delete_all
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
some_groups.each do |group|
  Group.create!(group)
end

User.delete_all
some_users = [
	{:name => 'Pete', :email => 'pete@home.es'},
	{:name => 'Manre', :email => 'manrique@21fifty.com'},
	{:name => 'Dirk', :email => 'd.gently@marketing.toyota.jp'},
	{:name => 'Dave', :email => 'dave_evans@cloudcorp.com'}
]
some_users.each do |user|
  User.create!(user)
end

work = Group.find_by(name: '21Fifty')
work.members << User.find_by(name: 'Pete')
work.members << User.find_by(name: 'Manre')

marketing = Group.find_by(name: 'Marketing dept.')
marketing.members << User.find_by(name: 'Dirk')
marketing.members << User.find_by(name: 'Dave')