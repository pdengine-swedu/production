# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CSV.foreach("db/tagsTest.csv") do |row|
	row.each do |tag|
		Tag.create(title: tag);
	end
end

CSV.foreach("db/PD Engine Submissions (Responses) - Form Responses.csv") do |row|
		isOnline = false;
		if row[1] != nil && row[1].downcase == 'online'
			isOnline = true;
		end
		isFree = true;
		if row[2] != nil && row[2].downcase == 'paid'
			isFree = false;
		end
		title = row[3];
		startDate = row[4];
		endDate = row[5];
		instructorName = row[6];
		twitterHandle = row[7];
		description = row[8];

		#address
		lineOne = row[9];
		city = ''
		state = '';
		if row[10] != nil
			cityState = row[10].split(',');
			city = cityState[0];
			if cityState[1] != nil
				state = cityState[1];
			end
		end
		zip = row[11];

		eventLink = row[12];
		supportingResourceLink = row[13];

		seminar = Seminar.create(title: title, startDate: startDate, endDate: endDate, instructorName: instructorName,
		 twitterHandle: twitterHandle, description: description, line_1: lineOne, city: city, state: state, 
		 zip_code: zip, isOnline: isOnline, isFree: isFree, seminar_link: eventLink, additional_resource_link: supportingResourceLink);

		if row[14] != nil
			tags = row[14].split(',');
			print tags
			tags.each do |tag|
				seminar.tags.push(Tag.new(title: tag));
			end
			print seminar.tags;
		end
		seminar.save;

end