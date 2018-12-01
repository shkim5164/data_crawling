class Home3Controller < ApplicationController
  def index2
    require 'open-uri'
    require 'nokogiri'
    @centers = Center.all
    @page = Nokogiri::HTML(open("https://shkim5164.github.io/sido/jn_3.html"), nil, 'UTF-8')
    @css = @page.css("li")
    @events = @page.css("small.events")
     @gg = Array.new
      #@css.each do |m|
      #@sp_word = m['id'].split('_')
      # unless @a_center.include? @sp_word[1]
      #   @center = Center.new
       #  @center.jigu = j.name
      #   @center.code = @sp_word[1]
        # @rt = @page.css("#center_#{@sp_word[1]} > a > div.info > small").text.join(",")
         # @center.save
        # @a_center.push(@sp_word[1])
      # end
      #end
   # @center.event = @page.css("#center_#{@sp_word[1]} > a > div.info > small").text.join(",")
    
  end
  def index
    @jigus = Jigu.all
    
    require 'open-uri'
    require 'nokogiri'
    @centers = Center.all
    @a_center = Array.new
    
    @jigus.each do |j|
      @page = Nokogiri::HTML(open("https://shkim5164.github.io/sido/#{j.name}.html"), nil, 'UTF-8')

      @css = @page.css("li")
      @events = @page.css("small.events")
     
      @css.each do |m|
      @sp_word = m['id'].split('_')
       unless @a_center.include? @sp_word[1]
        @center_ev = Array.new
         @center = Center.new
         @center.jigu = j.name
         @center.code = @sp_word[1]
         @events = @page.css("#center_#{@sp_word[1]} small.events")
         @events.each do |ev|
           @center_ev.push(ev.text)
         end
         @center.event = @center_ev.join(",").gsub(/\s+/, "")
         @center.save
         @a_center.push(@sp_word[1])
       end
      end
      
    end
  end
  
  def detail
    require 'open-uri'
    require 'nokogiri'
    @centers = Center.all
    
    @centers.each do |c|
      @page = Nokogiri::HTML(open(""))
      @sec_numb1 = @page.css("body > div.wrap > div.centerMasterHead > div.fcRecord > div > div.fcRecordLeft > div > b").text
      @sec_numb = @sec_numb1.gsub(/,(?=\d{3}\b)/, '').to_i
      
      @new_info = Info.new
      @new_info.hit = @sec_numb
        if @sec_numb < 800
          @new_info.section = 0
        elsif @sec_numb > 799.9 && @sec_numb < 1000.1
          @new_info.section = 1
        elsif @sec_numb > 1000.1 && @sec_numb < 2000.1
          @new_info.section = 2
        elsif @sec_numb > 2000.1 && @sec_numb < 3000.1
          @new_info.section = 3
        elsif @sec_numb > 3000.1 && @sec_numb < 4000.1
          @new_info.section = 4
        elsif @sec_numb > 4000.1 && @sec_numb < 5000.1
          @new_info.section = 5
        elsif @sec_numb > 5000.1 && @sec_numb < 6000.1
          @new_info.section = 6
        elsif @sec_numb > 6000.1 && @sec_numb < 7000.1
          @new_info.section = 7
        elsif @sec_numb > 7000.1 && @sec_numb < 8000.1
          @new_info.section = 8
        elsif @sec_numb > 8000.1 && @sec_numb < 9000.1
          @new_info.section = 9
        elsif @sec_numb > 9000.1 && @sec_numb < 10000.1
          @new_info.section = 10
        else
          @new_info.section = 11
        end
      @new_info.address = @page.css("body > div.wrap > div.centerMasterHead > div.container > div > div > div > div > address").text
      @new_info.phone = @page.css("body > div.wrap > div.container > div > div > div > div > div > div > div.col-lg-7.col-md-7 > div.row.centerTel > p").text.strip
      @new_info.name = @page.css("body > div.wrap > div.centerMasterHead > div.container > div > div > div > div > h3 > strong > span").text
      @new_info.kinds = @page.css("body > div.wrap > div.container > div > div > div > div > div > div > div.col-lg-7.col-md-7 > div.row.centerItems > div > div > span.events.type2 > span").text.strip
      @new_info.event = c.event
      @new_info.save
    end
  end
  
  def exdown
    @all = Info.all
    @event0 = Info.where(section: 0)
    @event1 = Info.where(section: 1)
    @event2 = Info.where(section: 2)
    @event3 = Info.where(section: 3)
    @event4 = Info.where(section: 4)
    @event5 = Info.where(section: 5)
    @event6 = Info.where(section: 6)
    @event7 = Info.where(section: 7)
    @event8 = Info.where(section: 8)
    @event9 = Info.where(section: 9)
    @event10 = Info.where(section: 10)
    @event11 = Info.where(section: 11)
    
    @health = Info.where("event like ?", "%헬스%")
    @gx = Info.where("event like ?", "%G.X%") 
    @pt = Info.where("event like ?", "%P.T%") 
    @golf = Info.where("event like ?", "%골프%") 
    @yoga = Info.where("event like ?", "%요가%") 
    @pila = Info.where("event like ?", "%필라테스%") 
    @swim = Info.where("event like ?", "%수영%") 
    @squash = Info.where("event like ?", "%스쿼시%") 
    @airobic = Info.where("event like ?", "%에어로빅%") 
    @screengolf = Info.where("event like ?", "%스크린골프%") 
    @sauna = Info.where("event like ?", "%사우나%") 
    @jimjil = Info.where("event like ?", "%찜질방%") 
    @spinning = Info.where("event like ?", "%스피닝%") 
    @crossfit = Info.where("event like ?", "%크로스핏%") 
    @boxing = Info.where("event like ?", "%복싱%") 
    @masage = Info.where("event like ?", "%마사지%") 
    @dance = Info.where("event like ?", "%댄스%") 
    @pingpong = Info.where("event like ?", "%탁구%") 
    @baseball = Info.where("event like ?", "%야구%") 
    @gumdo = Info.where("event like ?", "%검도%") 
    @climbing = Info.where("event like ?", "%클라이밍%") 
    @kickboxing = Info.where("event like ?", "%킥복싱%") 
    @fighting = Info.where("event like ?", "%격투기%") 
    @soonhwan = Info.where("event like ?", "%순환운동%") 
    @flyingyoga = Info.where("event like ?", "%플라잉요가%") 
    @falldance = Info.where("event like ?", "%폴댄스%") 
    @nail = Info.where("event like ?", "%네일%") 
    @beauty = Info.where("event like ?", "%뷰티%") 
    @etc = Info.where("event like ?", "%기타%") 
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def except
   
     require 'open-uri'
    require 'nokogiri'
    @centers = Center.where('id > 1555')
    
    @centers.each do |c|
      @page = Nokogiri::HTML(open(""))
      @sec_numb1 = @page.css("body > div.wrap > div.centerMasterHead > div.fcRecord > div > div.fcRecordLeft > div > b").text
      @sec_numb = @sec_numb1.gsub(/,(?=\d{3}\b)/, '').to_i
      
      @new_info = Info.new
      @new_info.hit = @sec_numb
        if @sec_numb < 800
          @new_info.section = 0
        elsif @sec_numb > 799.9 && @sec_numb < 1000.1
          @new_info.section = 1
        elsif @sec_numb > 1000.1 && @sec_numb < 2000.1
          @new_info.section = 2
        elsif @sec_numb > 2000.1 && @sec_numb < 3000.1
          @new_info.section = 3
        elsif @sec_numb > 3000.1 && @sec_numb < 4000.1
          @new_info.section = 4
        elsif @sec_numb > 4000.1 && @sec_numb < 5000.1
          @new_info.section = 5
        elsif @sec_numb > 5000.1 && @sec_numb < 6000.1
          @new_info.section = 6
        elsif @sec_numb > 6000.1 && @sec_numb < 7000.1
          @new_info.section = 7
        elsif @sec_numb > 7000.1 && @sec_numb < 8000.1
          @new_info.section = 8
        elsif @sec_numb > 8000.1 && @sec_numb < 9000.1
          @new_info.section = 9
        elsif @sec_numb > 9000.1 && @sec_numb < 10000.1
          @new_info.section = 10
        else
          @new_info.section = 11
        end
      @new_info.address = @page.css("body > div.wrap > div.centerMasterHead > div.container > div > div > div > div > address").text
      @new_info.phone = @page.css("body > div.wrap > div.container > div > div > div > div > div > div > div.col-lg-7.col-md-7 > div.row.centerTel > p").text.strip
      @new_info.name = @page.css("body > div.wrap > div.centerMasterHead > div.container > div > div > div > div > h3 > strong > span").text
      @new_info.kinds = @page.css("body > div.wrap > div.container > div > div > div > div > div > div > div.col-lg-7.col-md-7 > div.row.centerItems > div > div > span.events.type2 > span").text.strip
      @new_info.event = c.event
      @new_info.save
    end
    
    
  end
  def except2
    require 'open-uri'
    require 'nokogiri'
     @centers = Center.where('id > 3170')
    # @centers = Center.where('id > 2884')
    # @centers = Center.where('id > 3043')
    @centers.each do |c|
      @page = Nokogiri::HTML(open(""))
      @sec_numb1 = @page.css("body > div.wrap > div.centerMasterHead > div.fcRecord > div > div.fcRecordLeft > div > b").text
      @sec_numb = @sec_numb1.gsub(/,(?=\d{3}\b)/, '').to_i
      
      @new_info = Info.new
      @new_info.hit = @sec_numb
        if @sec_numb < 800
          @new_info.section = 0
        elsif @sec_numb > 799.9 && @sec_numb < 1000.1
          @new_info.section = 1
        elsif @sec_numb > 1000.1 && @sec_numb < 2000.1
          @new_info.section = 2
        elsif @sec_numb > 2000.1 && @sec_numb < 3000.1
          @new_info.section = 3
        elsif @sec_numb > 3000.1 && @sec_numb < 4000.1
          @new_info.section = 4
        elsif @sec_numb > 4000.1 && @sec_numb < 5000.1
          @new_info.section = 5
        elsif @sec_numb > 5000.1 && @sec_numb < 6000.1
          @new_info.section = 6
        elsif @sec_numb > 6000.1 && @sec_numb < 7000.1
          @new_info.section = 7
        elsif @sec_numb > 7000.1 && @sec_numb < 8000.1
          @new_info.section = 8
        elsif @sec_numb > 8000.1 && @sec_numb < 9000.1
          @new_info.section = 9
        elsif @sec_numb > 9000.1 && @sec_numb < 10000.1
          @new_info.section = 10
        else
          @new_info.section = 11
        end
      @new_info.address = @page.css("body > div.wrap > div.centerMasterHead > div.container > div > div > div > div > address").text
      @new_info.phone = @page.css("body > div.wrap > div.container > div > div > div > div > div > div > div.col-lg-7.col-md-7 > div.row.centerTel > p").text.strip
      @new_info.name = @page.css("body > div.wrap > div.centerMasterHead > div.container > div > div > div > div > h3 > strong > span").text
      @new_info.kinds = @page.css("body > div.wrap > div.container > div > div > div > div > div > div > div.col-lg-7.col-md-7 > div.row.centerItems > div > div > span.events.type2 > span").text.strip
      @new_info.event = c.event
      @new_info.save
    end
  end
  def except3
    require 'open-uri'
    require 'nokogiri'
    @centers = Center.where('id > 3242')
    
    @centers.each do |c|
      @page = Nokogiri::HTML(open(""))
      @sec_numb1 = @page.css("body > div.wrap > div.centerMasterHead > div.fcRecord > div > div.fcRecordLeft > div > b").text
      @sec_numb = @sec_numb1.gsub(/,(?=\d{3}\b)/, '').to_i
      
      @new_info = Info.new
      @new_info.hit = @sec_numb
        if @sec_numb < 800
          @new_info.section = 0
        elsif @sec_numb > 799.9 && @sec_numb < 1000.1
          @new_info.section = 1
        elsif @sec_numb > 1000.1 && @sec_numb < 2000.1
          @new_info.section = 2
        elsif @sec_numb > 2000.1 && @sec_numb < 3000.1
          @new_info.section = 3
        elsif @sec_numb > 3000.1 && @sec_numb < 4000.1
          @new_info.section = 4
        elsif @sec_numb > 4000.1 && @sec_numb < 5000.1
          @new_info.section = 5
        elsif @sec_numb > 5000.1 && @sec_numb < 6000.1
          @new_info.section = 6
        elsif @sec_numb > 6000.1 && @sec_numb < 7000.1
          @new_info.section = 7
        elsif @sec_numb > 7000.1 && @sec_numb < 8000.1
          @new_info.section = 8
        elsif @sec_numb > 8000.1 && @sec_numb < 9000.1
          @new_info.section = 9
        elsif @sec_numb > 9000.1 && @sec_numb < 10000.1
          @new_info.section = 10
        else
          @new_info.section = 11
        end
      @new_info.address = @page.css("body > div.wrap > div.centerMasterHead > div.container > div > div > div > div > address").text
      @new_info.phone = @page.css("body > div.wrap > div.container > div > div > div > div > div > div > div.col-lg-7.col-md-7 > div.row.centerTel > p").text.strip
      @new_info.name = @page.css("body > div.wrap > div.centerMasterHead > div.container > div > div > div > div > h3 > strong > span").text
      @new_info.kinds = @page.css("body > div.wrap > div.container > div > div > div > div > div > div > div.col-lg-7.col-md-7 > div.row.centerItems > div > div > span.events.type2 > span").text.strip
      @new_info.event = c.event
      @new_info.save
    end
  end
  
  def yoyak
    
    
    
    
    
    
  end
  
  
  
  def savej
    require 'roo'

      
      a = Roo::Excelx.new(Rails.root.join('app', 'assets', 'regions2.xlsx'))
      a.default_sheet = a.sheets.second
      for k in 2..18
        @k = Junguk.new
        @k.region1 = a.cell('E', k)
        @k.save
      end
      
      @jj = Junguk.all
      
      
      for i in 1..204
        @jj.each do |h|
         
          if a.cell('B', i) == h.region1
             @n = Smallj.new
            @n.junguk_id = h.id
            @n.name = a.cell('C', i)
          end
          @n.save
        end
      end
      
      #@sj = Smallj.all
      
      
      xlsx = Roo::Excelx.new(Rails.root.join('app', 'assets', 'all.xlsx'))
      xlsx.default_sheet = xlsx.sheets.second
      for i in 2..4023
          @new = Info.new
          @new.name = xlsx.cell('A', i) 
          @new.event = xlsx.cell('B', i)
          @new.address = xlsx.cell('C', i)
          @new.phone = xlsx.cell('D', i)
          @new.section = xlsx.cell('E', i)
          @new.hit = xlsx.cell('F',i)
          @jj.each do |jj|
            @rr = jj.smalljs
            if @new.address.include? jj.region1
              @new.region1 = jj.region1
              @rr.each do |k|
                if @new.address.include? k.name
                  @new.region2 = k.name
                end  
              end
            elsif @new.address.include? '전라남도'
              @new.region1 = '전남'
              @rr.each do |k|
                if @new.address.include? k.name
                  @new.region2 = k.name
                end  
              end
            elsif @new.address.include? '전라북도'
              @new.region1 = '전북'
              @rr.each do |k|
                if @new.address.include? k.name
                  @new.region2 = k.name
                end  
              end
            elsif @new.address.include? '경상남도'
              @new.region1 = '경남'
              @rr.each do |k|
                if @new.address.include? k.name
                  @new.region2 = k.name
                end  
              end
            elsif @new.address.include? '경상북도'
              @new.region1 = '경북'
              @rr.each do |k|
                if @new.address.include? k.name
                  @new.region2 = k.name
                end  
              end
            elsif @new.address.include? '충청북도'
              @new.region1 = '충북'
              @rr.each do |k|
                if @new.address.include? k.name
                  @new.region2 = k.name
                end  
              end
            elsif @new.address.include? '충청남도'
              @new.region1 = '충남'
              @rr.each do |k|
                if @new.address.include? k.name
                  @new.region2 = k.name
                end  
              end
            end
           
          end
          @new.save
      end
      
  end
  
  def sibal
      #@sections = Section.all
      @jigus = Junguk.all.order("region1")
  
      @allinfo = Info.all
      respond_to do |format|
          format.html
          format.xlsx {
            response.headers['Content-Disposition'] = "attachment; filename='전체데이터.xlsx'"
          }
      end
  end
  
  def kkk
      @events = Event.all
      # @sections = Section.all
      @jigus = Junguk.all #대분류
      @jigus2 = Smallj.all #소분류
      @allinfo = Info.all
      respond_to do |format|
          format.html
          format.xlsx {
            response.headers['Content-Disposition'] = "attachment; filename='요약.xlsx'"
          }
      end
  end
  def kkk2
      @events = Event.all
      # @sections = Section.all
      @jigus = Junguk.all #대분류
      @jigus2 = Smallj.all #소분류
      @allinfo = Info.all
      respond_to do |format|
          format.html
          format.xlsx {
            response.headers['Content-Disposition'] = "attachment; filename='세부.xlsx'"
          }
      end
  end
  def kkk3
      @events = Event.all
      # @sections = Section.all
      @jigus = Junguk.all #대분류
      @jigus2 = Smallj.all #소분류
      @allinfo = Info.all
      respond_to do |format|
          format.html
          format.xlsx {
            response.headers['Content-Disposition'] = "attachment; filename='세부.xlsx'"
          }
      end
  end
end
