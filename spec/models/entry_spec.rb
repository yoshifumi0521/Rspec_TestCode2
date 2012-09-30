#coding: utf-8
require 'spec_helper'

#Entryモデルのテストコード
describe Entry do
  #使うfixturesファイルを宣言する
  fixtures :entries,:blogs

  before(:each) do
    @entry = entries(:kakutani_earliest)
  end

  it "は特定のブログに属する" do
    @entry.blog.should == blogs(:kakutani)
  end











end
