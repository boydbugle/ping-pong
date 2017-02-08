require ('rspec')
require ('ping_pong')

describe ('Fixnum#ping_pong') do
    it("shows range of numbers from 0 to input") do
        expect(2.ping_pong()).to(eq([1, 2])) 
    end
    it("shows numbers divisible by 15 as pingpong")do
        expect(15.ping_pong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "pingpong"]))
    end
    it("shows numbers divisible by 3 as ping")do
        expect(3.ping_pong()).to(eq([1, 2, "ping"]))
    end
    it("shows numbers divisible by 5 as pong")do
        expect(5.ping_pong()).to(eq([1, 2, "ping", 4, "pong"]))
    end
    
end


