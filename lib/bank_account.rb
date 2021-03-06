class BankAccount
    attr_reader :name
    attr_accessor :balance, :status
    def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    end
    def deposit(amount)
        self.balance += amount
    end
    def display_balance
        "Your balance is $#{@balance}."
    end
    # ask is self.balance == @balance? if not, which is better and why?
    def valid?
        @status == "open" && @balance > 0
    end
    def close_account
        @status = "closed"
    end
    # ask is self.status == @status? if not, which is better and why?
end
