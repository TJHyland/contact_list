class Contact < ApplicationRecord
  has_many :notes, dependant: :destroy
  has_one :address, dependant: :destroy
  # Associations
    # belongs_to
    # has_many
    # has_one

    # has_many :through
    # has_one :through

    # has_and_belongs_to_many
    # has_and_belongs_to_one
    # has_many :through and_has_and_belong_to_many

    # dependant


  # Validations
    # confirmation
    #   - have two fields match
    #     text_field :password
    #     text_field :password_confirmation
      
    #     validates :password, confrimation: true
    #     validates :password, confrimation: {case_sensitive: false}

    # inclusion
    #   validates the attr values are included in a given set

    #   class Coffee < Active...
    #     validates :size, inclusion: {
    #       in: %w(small medium large), 
    #       messge: "not a valid size"
    #     }
    #   end
    # exclusion does the opposite
  
    # length
    #   the length or size of the attr values
    #   class Person < Active...
    #     validates :name, length: { minimum: 3 }
    #     validates :bio, length: { maximum: 500}
    #     validates :password, length: { in: 6..20}
    #     validates :zip_code, length: { is 5 }
    #   end

    # numericality
    #   only numbers
    #   class Player < ApplicationRecord
    #     validates :points, numericality: true
    #     validates :games_played, numericality: { only_integers: true}
    #     validates :golf_handicap, numericality: { 
    #       less_than_or_equal_to: 40.4,
    #        greater_than_or_equal_to: 2
    #       }
    #   end

    # presence
    #   not empty

    #   class Person < App...
    #     validates :name, :email, :password, presence: true
    #   end


    # uniqueness
    #   unique in the database
      
    # class Account < App
    #   validates :email, uniqueness: true
    # end
      # validation options
      #   allow_nil
      #     boolean option, nil pass in

      #       class Coffee < Active...
      #         validates :size, inclusion: {
      #           in: %w(small medium large), 
      #           message: "not a valid size"
      #         }, allow_nil: true
      #       end


      #  allow_blank
      #    "" empty string or nil, blank?
          
      #       class Coffee < Active...
      #         validates :size, inclusion: {
      #           in: %w(small medium large), 
      #           message: "not a valid size"
      #         }, allow_blank: true
      #       end

        # message
          # string to be displayed, when fails or errors
        
        #  on
        #    when the validation should happen
        #     class Person < App...
        #       validates :name, :email, :password, presence: true, on: :create
        #       validates :age, numericality: true on: :update
        #     end

      # Callbacks - triger logic based on the action/event

      # before_validation
      # after_validation
      # before_save
      # after_save
      # around_save
      # before_create
      # after_create
      # around_create

      # class CC < ActiveRecord...
      #   before_save :encrypt_cc

      #   private
      #     def encrypt_cc
      #       self.cc = encryptedcode(self.cc)
      #     end
      # end

     # contact = group ++ ppl
     # Array Serialization - array of items
     # serialize :group, Array
  
  # Class Method

  #  class Person < act...

  #   called on a class of Person.sort_by_first_name
  #    def self.sort_by_first_name
  #      order(:first_name)
  #    end

  #  end

  # Instance Method

  # class Person < act...

  #   # call method @person.full_name
  #   def full_name
  #     "#{self.first_name} #{self.last_name}"
  #   end
  # end


end
