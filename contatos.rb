# coding: UTF-8

contato = {
    Pedro: "5555-5555",
    Jose: "4444-4444"
}

while true
    puts ""
    puts "1 - Adicionar"
    puts "2 - Atualizar"
    puts "3 - Exibir"
    puts "4 - Apagar"

    print "Escolha uma opção: "
    escolha = gets.chomp
    puts ""

    puts escolha

    case escolha
        when "1"
            print "Adicione o nome do contato: "
            nome = gets.chomp
            if contato[nome.to_sym].nil?
                print "Adicione o telefone:"
                telefone = gets.chomp
                contato[nome.to_sym] = telefone
            else
                puts "O nome já existe nos contatos!"
            end


        when "2"
            puts "Qual o nome você quer atualizar?"
            nome = gets.chomp
            if contato[nome.to_sym].nil?
                puts "O nome não existe nos contatos!"
            else
                print "Qual o telefone?"
                telefone = gets.chomp
                contato[nome.to_sym] = telefone                
            end
       

        when "3"
            contato.each do |nome, telefone|
                puts "Nome: #{nome} - Telefone: #{telefone}"
        end


    when "4"
            puts "Qual nome você gostaria de apagar?"
            nome = gets.chomp
            if contato[nome.to_sym].nil?
                puts "O nome não existe nos contatos!"
            else
                contato.delete(nome.to_sym)   
                puts "O nome #{nome} foi apagado."          
            end
        else
            puts "Opção inválida"
    end
end


