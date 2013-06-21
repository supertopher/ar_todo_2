require_relative '../../config/application'

class Task < ActiveRecord::Base
  has_one :list
end

