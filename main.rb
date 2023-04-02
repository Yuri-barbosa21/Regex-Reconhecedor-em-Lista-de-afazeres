frase = "agendar com Marcelo reuniao as 10:00 amanha #reuniao"

padrao_horario = /(\b(as)\s([0-9]{2}\:[0-9]{2}))|([0-9]{2}\shoras)(\?|\.|\!|\,|\/|)?/
padrao_datas = /(?![^:]*:)(amanha|hoje|depois de amanha|ontem|anteontem|janeiro|fevereiro|marco|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro)|(\bdia\s)?[0-9]{2}\/(([0-9]{2})?((\/[0-9]{4})|(\/[0-9]{2}))?)(\?|\.|\!|\,|\/|)?/
padrao_pessoas = /\b(com|o|a)\s(\w+)(\?|\.|\!|\,|\/|)?/
padrao_tags = /#\w+(\?|\.|\!|\,|\/|)?/
padrao_acoes = /(agendar|marcar|ligar|escrever|anotar|fazer)(\?|\.|\!|\,|\/|)?/

datas = frase.match(padrao_datas).to_s
tags = frase.match(padrao_tags).to_s
acoes = frase.match(padrao_acoes).to_s
horario = frase.match(padrao_horario).to_s.gsub(/horas.*$/, '').gsub(/\bas\s/, '')
pessoas = frase.match(padrao_pessoas).to_s.gsub(/\b(com|o|a)\s/, '').gsub(/(\?|\.|\!|\,|\/|\d|\s)*$/, '')

puts "Horário: #{horario}"
puts "Datas: #{datas}"
puts "Pessoas: #{pessoas}"
puts "Tags: #{tags}"
puts "Ações: #{acoes}"
