class DownController < ApplicationController
  before_action :infos
  def health
    @health = Info.where("event like ?", "%헬스%")
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def gx
    
    @health = Info.where("event like ?", "%G.X%") 
    
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def pt
    
  @health = Info.where("event like ?", "%P.T%") 
    
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def golf
    
  @health = Info.where("event like ?", "%골프%") 
    
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end
  

  def yoga
    
    @health = Info.where("event like ?", "%요가%") 
    
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def pila
    
    @health = Info.where("event like ?", "%필라테스%") 
    
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def swim
   
  @health = Info.where("event like ?", "%수영%") 
    
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def squash
   
    @health = Info.where("event like ?", "%스쿼시%") 
    
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def airobic
    
    @health = Info.where("event like ?", "%에어로빅%") 
   
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def screengolf
   
  @health = Info.where("event like ?", "%스크린골프%") 
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def sauna
   
    @health = Info.where("event like ?", "%사우나%") 
    
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def jimjil
   
    @health = Info.where("event like ?", "%찜질방%") 
   
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def spinning
   
  @health = Info.where("event like ?", "%스피닝%") 
 
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def crossfit
   
    @health = Info.where("event like ?", "%크로스핏%") 
   
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def boxing
  
    @health = Info.where("event like ?", "%복싱%") 
   
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def masage
   
    @health = Info.where("event like ?", "%마사지%") 
  
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def dance
    
    @health= Info.where("event like ?", "%댄스%") 
   
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def pingpong
   
    @health = Info.where("event like ?", "%탁구%") 
   
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def baseball
    
    @health = Info.where("event like ?", "%야구%") 
   
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def gumdo
   
    @health = Info.where("event like ?", "%검도%") 
   
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def climbing
   
    @health = Info.where("event like ?", "%클라이밍%") 
   
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def kickboxing
   
    @health = Info.where("event like ?", "%킥복싱%") 
   
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def fighting
   
    @health = Info.where("event like ?", "%격투기%") 
    
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def soonhwan
   
    @health = Info.where("event like ?", "%순환운동%") 
   
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def flyingyoga
 
    @health = Info.where("event like ?", "%플라잉요가%") 

    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def falldance
   
    @health = Info.where("event like ?", "%폴댄스%") 
    
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def nail
   
    @health = Info.where("event like ?", "%네일%") 
  
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def beauty
  
    @health = Info.where("event like ?", "%뷰티%") 
  
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def etc
   
    @health = Info.where("event like ?", "%기타%") 
  
      respond_to do |format|
        format.html
        format.xlsx
      end
  end
    def ems
    @health = Info.where("event like ?", "%EMS%")
  
      respond_to do |format|
        format.html
        format.xlsx
      end
    end
    def bale
    @health = Info.where("event like ?", "%발레%")
  
      respond_to do |format|
        format.html
        format.xlsx
      end
    end
    def mungsang
    @health = Info.where("event like ?", "%명상%")
  
      respond_to do |format|
        format.html
        format.xlsx
      end
    end
    def jumping
    @health = Info.where("event like ?", "%점핑%")
  
      respond_to do |format|
        format.html
        format.xlsx
      end
    end
    def bodyfix
    @health = Info.where("event like ?", "%체형교정%")
  
      respond_to do |format|
        format.html
        format.xlsx
      end
    end
    def danggu
    @health = Info.where("event like ?", "%당구%")
  
      respond_to do |format|
        format.html
        format.xlsx
      end
    end
    def bowling
    @health = Info.where("event like ?", "%볼링%")
  
      respond_to do |format|
        format.html
        format.xlsx
      end
    end
    def yanggung
    @health = Info.where("event like ?", "%양궁%")
  
      respond_to do |format|
        format.html
        format.xlsx
      end
    end
    
end
