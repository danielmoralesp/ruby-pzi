require './application'

run Application

#run Proc.new { |env|
#  if env['PATH_INFO'] == '/'
#    [200, {}, ['Hola Mundo!']]
#  else
#    [404, {}, ['No existe esta pagina']]
#  end
#}

# rackup config.ru (para poner a andar la app)
