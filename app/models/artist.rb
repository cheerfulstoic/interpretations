class Artist
  include Neo4j::ActiveNode

  property :name
  property :link
  property :photo

  validates :name, :link, :photo, presence: true

  index :name

  has_many :out, :musics, origin: :artist

end
