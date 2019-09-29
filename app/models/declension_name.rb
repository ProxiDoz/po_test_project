class DeclensionName < ApplicationRecord
	has_one :person
	has_one :case
end
