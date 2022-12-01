class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id, :strength, :hero_id, :power_id
  has_one :hero

end
