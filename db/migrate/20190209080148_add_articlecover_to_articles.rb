class AddArticlecoverToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :articlecover, :string
  end
end
