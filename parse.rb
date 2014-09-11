
require 'csv'

table = CSV.foreach('data/Animals.csv', headers: true)
new = table.map do |row|
  row.to_h
end
data =  new.group_by { |row| row["Animal"] }
data.each do |section|
  p section

end