module V1::Users::Representer
  class Register < ApplicationRepresenter
    type 'users'

    attributes :email
  end
end