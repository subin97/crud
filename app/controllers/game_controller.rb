class GameController < ApplicationController
  def main
  end
  def result
    @all=["치킨","라면","햄버거","파스타","밥버거","찜닭","돈까스","불고기","연어덮밥","김밥","토스트","알밥","떡볶이",""]
    @lunch=@all.sample(1)
  end
end
