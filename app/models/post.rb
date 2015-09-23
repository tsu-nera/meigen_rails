# coding: utf-8
class Post < ActiveRecord::Base

  # 前後のパスを取得する
  # http://easyramble.com/active-record-prev-next.html
  def previous
    Post.where("id < ?", self.id).order("id DESC").first
  end
  
  def next
    Post.where("id > ?", self.id).order("id ASC").first
  end  
end
