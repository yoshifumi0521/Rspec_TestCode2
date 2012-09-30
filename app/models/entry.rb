#coding: utf-8
class Entry < ActiveRecord::Base
  # attr_accessible :title, :body

  #これで、EntryモデルからBlogモデル参照できる。@entry.blogのような処理が可能になる
  belongs_to :blog




end
