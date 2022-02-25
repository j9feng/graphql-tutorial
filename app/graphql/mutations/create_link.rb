module Mutations
    class CreateLink < BaseMutation
        # args
        argument :description, String, required: true
        argument :url, String, required: true
        #return:
        type Types::LinkType

        def resolve(description: nil, url: nil)
            Link.create!(
                description: description,
                url: url,
                user: context[:current_user]
            )
        end
    end
end