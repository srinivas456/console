class Project
  include Mongoid::Document

  field :ProjectName, type: String
  field :version, type: Float
  field :Title, type: String
  field :devicetype, type: String
  field :viewtype, type: String

end
