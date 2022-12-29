class Pet < ActiveRecord::Base
    has_many :comments
  end