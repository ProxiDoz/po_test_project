class Person < ApplicationRecord

  has_many :declension_names

  before_create do
    self.full_name = "#{self.first_name} #{self.midle_name} #{self.last_name}"
  end

  after_create :create_full_name_case
  after_save :update_full_name_case

  private
    def create_full_name_case
      Case.all.each do |c|
        self.declension_names.create(full_name: Petrovich(
          firstname: self.first_name,
          middlename: self.midle_name,
          lastname: self.last_name    
        ).send(c.method).to_s, case_id: c.id)
      end
    end

    def update_full_name_case
      self.declension_names.each do |dn|
        dn.update(full_name: Petrovich(
          firstname: self.first_name,
          middlename: self.midle_name,
          lastname: self.last_name
        ).send(Case.find(dn.case_id).method).to_s)
      end
    end
end
