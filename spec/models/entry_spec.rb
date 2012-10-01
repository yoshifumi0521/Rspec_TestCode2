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

  describe Entry,"#posted_onが入力された場合" do
    fixtures :blogs

    before do 
      @posted_on = Date.today - 10
      @entry = Entry.new(
        :blog => blogs(:kakutani),
        :title => "タイトル",
        :body => "本文",
        :posted_on => @posted_on
      )
      @entry.save
      p @posted_on
    end

    it "入力された日付が投稿日であること" do
      @entry.posted_on.should == @posted_on
    end





  end







end
