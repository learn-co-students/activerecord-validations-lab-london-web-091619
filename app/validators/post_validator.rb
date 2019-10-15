class PostValidator < ActiveModel::Validator
    def validate(post)
        # unless record.title.match?("Won't Believe", "Secret", "Top[number]", "Guess")
        unless post.title && ["Won't Believe", "Secret", "Top", "Guess"].any? {|clickbait| post.title.include?(clickbait) }
            post.errors[:title] << "Not clickbaity enough"
        end
    end
end


