class Music
  include Neo4j::ActiveNode

  property :title
  property :link

  validates :title, :link, presence: true

  index :title

  has_one :in, :artist, type: :performed_by

end
