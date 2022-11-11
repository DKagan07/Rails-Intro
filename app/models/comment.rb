class Comment < ApplicationRecord

  #allows the use of the concern to be executed here -- only showing the comments we want to be seen
  include Visible

  belongs_to :article

end
