class Post < ApplicationRecord
  belongs_to :user

  def self.csv_attributes
    ["title", "body", "created_at", "updated_at", "rank", "genres"]
  end

  def self.generate_csv
    CSV.generate(headers: true) do |csv|
      csv << csv_attributes
      all.each do |post|
        csv << csv_attributes.map{ |attr| post.send(attr) }
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      post = new
      post.attributes = row.to_hash.slice(*csv_attributes)
      post.save!
    end
  end

end
