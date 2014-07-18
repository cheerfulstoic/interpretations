class Music < ActiveRecord::Base
  include Neo4j::ActiveNode

  property :title
  property :link

  validates :title, :link, presence: true

  index :title

  has_one(:artist).from(Artist, :musics)

end
