# calc_generator.rb

COMMANDS = ['ADD', 'SUB', 'DIV', 'MUL']

output = ""

30.times do
  cmd = COMMANDS.sample
  one = rand(100) + 1
  two = rand(100) + 1

  output << "#{cmd} #{one} #{two}\n"
end

File.write('calc_commands.txt', output)
