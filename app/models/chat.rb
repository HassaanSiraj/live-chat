class Chat < ApplicationRecord
  after_create_commit {broadcast_append_to 'chats'}
  has_many :messages
end
