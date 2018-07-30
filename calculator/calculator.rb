# calculator

def add(a,b)
  puts "Multiplying\t #{a} and #{b}::\t#{a + b}"
end

def subtract(a,b)
  puts "Subtracting\t #{a} and #{b}::\t#{a - b}"
end

def multiply(a,b)
  puts "Multiplying\t #{a} and #{b}::\t#{a * b}"
end

def divide(a,b)
  res = a / b
  remain = a % b
  puts "Dividing\t #{a} and #{b}::\t#{res} with a remainder of #{remain}"
end

COMMANDS = ['ADD', 'SUB', 'DIV', 'MUL']

File.open('calc_commands.txt') do |file|
  file.each_line do |line|
    values = line.split
    cmd = values[0]
    a = values[1].to_i
    b = values[2].to_i
    case cmd
    when 'ADD' then add(a,b)
    when 'SUB' then subtract(a,b)
    when 'DIV' then divide(a,b)
    when 'MUL' then multiply(a,b)
    end
  end
end
