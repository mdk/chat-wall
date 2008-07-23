class Post < ActiveRecord::Base
  
  def to_jsonn
    self.attributes.to_json
  end
end