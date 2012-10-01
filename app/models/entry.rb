#coding: utf-8
class Entry < ActiveRecord::Base
  attr_accessible :title, :body,:blog

  #これで、EntryモデルからBlogモデル参照できる。@entry.blogのような処理が可能になる
  belongs_to :blog

  #before_saveは、モデルを保存する前にするメソッドを指定して実行できる。
  before_save :fill_posted_on

  def fill_posted_on 
    self.posted_on = Date.today
  end


end
