class UpdateColumnYearMovie < ActiveRecord::Migration[6.0]
  def change
    change_column :movies, :year, :date
  end
end
