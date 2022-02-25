require 'test_helper'

class Mutations::CreateUserTest < ActiveSupport::TestCase
    def perform(**args)
        Mutations::CreateUser.new(object: nil, field: nil, context: {}).resolve(**args)
    end

    test 'create new user' do
        user = perform(
            name: 'Test User1',
            auth_provider: {
                credentials: {
                    email: 'email@example.com',
                    password: '23456'
                }
            }
        )
        
        assert user.persisted?
        assert_equal user.name, 'Test User1'
        assert_equal user.email, 'email@example.com'
    end
end