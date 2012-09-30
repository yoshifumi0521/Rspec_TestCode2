#coding: utf-8
class Blog < ActiveRecord::Base
  attr_accessible :name

  validates :name,:presence => true

  #BlogモデルからEntryモデルを参照できるようにする。@blog.entriesという処理が可能になる。
  has_many :entries


end
