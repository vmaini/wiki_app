class Article < ActiveRecord::Base
	belongs_to :user
	has_many :article_categories
	has_many :categories, through: :article_categories
	#specify relationship to other models

	validates :title, presence: true
	validates :content, presence:true
	validates :categories, presence:true
end
