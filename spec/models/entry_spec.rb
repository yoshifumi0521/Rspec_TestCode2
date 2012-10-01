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

  describe Entry, "#posted_onが入力されずに保存された場合" do
    fixtures :blogs
    before do
      @entry = Entry.new(
        :blog => blogs(:kakutani),
        :title => "タイトル",
        :body => "本文"
      )
      @entry.save
      p @entry
    end

    it "Entryの作成日は投稿日であること" do
      @entry.posted_on.should == Date.today
    end

  end









end
