class Post < ActiveRecord::Base
    belongs_to :user 
    has_many :post_tags
    has_many :tags, through: :post_tags

    validates :name, presence: true 
    validates :content, presence: true 


    #can use tags and create custommethod 
    # accepts_nested_attributes_for :tags
    
    # def tags=(tag_hash)
    #     tag_hash.delete_if(&:empty?).each do |tag_ids|
    #         self.tags << Tag.find_by(id: tag_ids.to_i)
    #     end
    # end


end
