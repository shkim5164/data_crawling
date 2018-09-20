class RefreshController < ApplicationController
    def crawling
        require 'open-uri'
        require 'nokogiri'
        @page = Nokogiri::HTML(open("https://shkim5164.github.io/refc/all"), nil, 'UTF-8')
        @css = @page.css("li")
         @all_center = []
         
          @css.each do |m|
          @club_n = m['data-idx']
           unless @all_center.include? @club_n
             @center = Refcenter.new
             @center.club_n = @club_n
             @center.save
             @all_center.push(@sp_word[1])
           end
          end
          redirect_to '/refresh/done'
    end
    
    def info_cr
        require 'open-uri'
        require 'nokogiri'
        @all = Refcenter.all
        @all.each do |rf|
            @page = Nokogiri::HTML(open("https://refreshclub.co.kr/club/#{rf.club_n}"), nil, 'UTF-8')
            @css = @page.css("li")
        
          @css.each do |m|
          @club_n = m['data-idx']
           unless @all_center.include? @club_n
             @center = Refcenter.new
             @center.club_n = @club_n
             @center.save
             @all_center.push(@sp_word[1])
           end
          end
      end
          redirect_to '/refresh/done'
    end
end
