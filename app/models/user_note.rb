class UserNote < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :character, optional: true
end
