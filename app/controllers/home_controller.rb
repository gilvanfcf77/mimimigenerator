class HomeController < ApplicationController
  def index
  end

  def translate
  	@text = params[:portuguese]
	root_url = "/"
	for i in "a".."z"
   		if i == "a" || i == "e" || i == "o" || i == "u"
   		@text.gsub!(i,'i')		
   		end
	end
	
	for i in "A".."Z"
   		if i == "A" || i == "E" || i == "O" || i == "U"
   		@text.gsub!(i,'I')
   		end
	end

	@text.gsub!("á",'i')
	@text.gsub!("ú",'i')
	@text.gsub!("ã",'i')
	@text.gsub!("é",'i')
	@text.gsub!("ê",'i')
	@text.gsub!("ô",'i')

	@text.gsub!("Á",'i')
	@text.gsub!("Ú",'i')
	@text.gsub!("Ã",'i')
	@text.gsub!("É",'i')

	redirect_to root_url(mimimi: @text)
  end

end
