class ApiController < ApplicationController 

  def allow_json
  	@json = JSON.parse(request.body.read)
    rescue JSON::ParserError => e
      logger.warn("bad media")
  end	

   def check_format
    respond_to do |format|
      format.json {return true}
      format.any  {return false}
    end
   end

  def welcome
    if check_format
      render nothing: true, status: 200 
    else
      render nothing: true , status: 406
    end
  end

  
end