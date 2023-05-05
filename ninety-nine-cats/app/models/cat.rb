# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'action_view'

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    CAT_COLORS = ["black", "white", "orange", "brown", "gray"]


    validates :color, inclusion: CAT_COLORS
    validates :sex, inclusion: {in: %w(M F)}

    validates :birth_date, :name, presence: true 
    validate :birth_date_cannot_be_future

    def birth_date_cannot_be_future
        if birth_date.present? && birth_date > Date.today
            errors.add(:birth_date, "can't be in the future")
        end 
    end 

    def age 
        time_ago_in_words(birth_date)
    end 

    # def expiration_date_cannot_be_in_the_past
    #     if expiration_date.present? && expiration_date < Date.today
    #       errors.add(:expiration_date, "can't be in the past")
    #     end
    # end

    #   cat_birth_date = change_date(self.birth_date)
    #   current_date = change_date(Date.today)
    #   if cat_birth_date.first 
    # def change_date(the_date)
    #     the_date.to_s.split("-").map{|day| day.to_i}
    # end 
end
