# == Schema Information
#
# Table name: events
#
#  id           :bigint           not null, primary key
#  title        :string           not null
#  details      :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  creator_id   :integer          not null
#  location     :string           not null
#  ticket_price :float            not null
#  date         :string           not null
#  category     :string
#
class Event < ApplicationRecord
    validates :title, :details, :location, :ticket_price, :date, presence:true

    belongs_to :creator,
        primary_key: :id,
        foreign_key: :creator_id,
        class_name: :User

    has_many :tickets,
        primary_key: :id,
        foreign_key: :event_id,
        class_name: :Ticket

    has_many :bookmarks,
        primary_key: :id,
        foreign_key: :event_id,
        class_name: :Bookmark

    has_one_attached :photo
end
