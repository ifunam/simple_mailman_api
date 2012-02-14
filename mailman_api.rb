require './environment'
class MailmanApi < Sinatra::Base
  
  post '/suscribe' do 
    system "echo #{params[:email]} |sudo /usr/lib/mailman/bin/add_members -r - estudiantes"
    "suscribed"
  end

  delete '/unsuscribe' do 
    system "echo #{params[:email]} |sudo /usr/lib/mailman/bin/remove_members -f - estudiantes"
    "unsuscribed"
  end  
end
