class Case < ApplicationRecord
	has_many :case_ending

	def all_options(person)
		options = []
		Case.all.each do |c|
			first_name = person.first_name
			midle_name = get_midle_name(person,c)
			last_name = person.last_name
			options.push({ first_name, midle_name, last_name})
		end
		options
	end

	private

		def get_midle_name(person, cas)
			person.midle_name.chop + cas.case_ending.find_by_sex(person.sex)
		end
end
