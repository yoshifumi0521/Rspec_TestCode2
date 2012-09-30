#coding: utf-8
require 'spec_helper'

#blogモデルのテストを書く。
describe Blog do
  fixtures :blogs,:entries

  before do
    @blog = blogs(:kakutani)
  end

  it "Blog#nameが設定されてない場合:バリデーションに失敗すること" do
    @blog = Blog.new
    @blog.should_not be_valid
    @blog.errors[:name].should == ["can't be blank"]
    @blog.should have(1).error_on(:name)
  end

  it "は複数の記事を所有していること" do
    @blog.should have_at_least(2).entries
  end





end
