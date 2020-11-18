import Foundation 

class Account {
    var name: String
    var accountNumber: String 
    var initialAmount: Double
    var accountType: String
    var currentBalance: Double
    var casaAccounts: [CasaAccount]
    var depositAccounts: [DepositAccount]
    var loanAccounts: [LoanAccount]
    
    init(name: String, initialAmount: Double, accountType: String) {
    self.name = name 
    self.accountNumber =  ""
    self.initialAmount = initialAmount
    self.accountType = accountType
    self.currentBalance = 0
    casaAccounts = [CasaAccount]()
    depositAccounts = [DepositAccount]()
    loanAccounts = [LoanAccount]()
}
    func admitCasa(ca: CasaAccount){
        self.casaAccounts.append(ca)
    }
    
    func admitDepositAccounts(da: DepositAccount) {
        self.depositAccounts.append(da)
    }
    func admitLoanAccounts(la: LoanAccount) {
        self.loanAccounts.append(la)
    }
}

class CasaAccount: Account {
    var total: Double 
    var addedAmount: Int 
    
    init(addedAmount: Int,name: String, initialAmount: Double, accountType: String) {
        self.total = 0
        self.addedAmount = addedAmount
        
        super.init(name: name, initialAmount: initialAmount, accountType: accountType)
        }

    func deposit() {
        if((accountType == "current") || (accountType == "savings" )){
        total = initialAmount + Double(addedAmount)
        initialAmount = total
        currentBalance = total
        print(currentBalance)
    }
    }
    func withdrawal() {
        if((accountType == "current") || (accountType == "savings" )) {
        total = initialAmount - Double(addedAmount)
         initialAmount = total
         currentBalance = total
         print(currentBalance)
    }
    }
    }
    
    class DepositAccount: Account {
        var total: Double 
        var addedAmount: Int 
    
    init(addedAmount: Int,name: String, initialAmount: Double, accountType: String) {
        self.total = 0
        self.addedAmount = addedAmount
        
        super.init(name: name, initialAmount: initialAmount, accountType: accountType)
        }

    func deposit() {
        if((accountType == "fixed") || (accountType == "Recurring")){
        total = initialAmount + Double(addedAmount)
        initialAmount = total
        currentBalance = total
        print(currentBalance)
    }
    }
    func withdrawal() {
        if (accountType == "Reccuring") {
        total = initialAmount - Double(addedAmount)
         initialAmount = total
         currentBalance = total
         print(currentBalance)
    }
    }
        
    }
    
    class LoanAccount: Account {
     var total: Double 
     var addedAmount: Int 
    
    init(addedAmount: Int,name: String, initialAmount: Double, accountType: String) {
        self.total = 0
        self.addedAmount = addedAmount
        
        super.init(name: name, initialAmount: initialAmount, accountType: accountType)
        }

    func deposit() {
        if((accountType == "HouseLoan") || (accountType == "VehicleLoan") || (accountType == "PersonalLoan")){
        total = initialAmount + Double(addedAmount)
        initialAmount = total
        currentBalance = total
        print(currentBalance)
    }
    }
    }
    
    let a = Account(name: "vinay", initialAmount: 8000, accountType: "savings")
    
    let acc1 = CasaAccount(addedAmount: 1000, name: "vinay", initialAmount: 8000, accountType: "savings")
    acc1.withdrawal()
    a.admitCasa(ca: acc1)
    
    let acc2 = DepositAccount(addedAmount: 2000, name: "vinay", initialAmount: 8000, accountType: "Reccuring")
    acc2.withdrawal()
    a.admitDepositAccounts(da: acc2)
    
    let acc3 = LoanAccount(addedAmount: 3000, name: "vinay", initialAmount: 8000, accountType: "HouseLoan")
    a.admitLoanAccounts(la: acc3)
    acc3.deposit()
    
    
    
/*class Manager{

        var accounts: [Account]
        
        init() {
            accounts = [Account]()
        }
        
// tried to give refernce to manager for 3 types of accounts         
    func deposit(acc: Account , money: Double)
    {
            if((acc.accountType == "current") || (acc.accountType == "savings") || (acc.accountType == "fixed") || (acc.accountType == "Recurring") ||(acc.accountType =="HouseLoan") || (acc.accountType =="PersonalLoan") ||(acc.accountType == "VehicleLoan" )) {
                
                 acc.currentBalance += money
            }
    }
    func withdraw(acc: Account, money: Double) {
        if((acc.accountType == "current") || (acc.accountType == "savings") || (acc.accountType == "Recurring")) {
            acc.currentBalance -= money
        }
        
    }
}
   or
//  
class AccountManager {
  
  var initialAmount: Double
  var accountType: String
  var addAmount: Int
  var totalAmount: Double
  var accountNumber: Int
  

  init(initialAmount: Double, accountType: String , addAmount: Int ) {
    self.initialAmount = initialAmount
    self.accountType = accountType
    self.addAmount = addAmount
    self.totalAmount = 0
    self.accountNumber = 3451230000001
  }

  func deposit(addAmount: Int, accountType: String) {
    if((accountType == "current") || (accountType == "saving") || (accountType == "Recurring") || (accountType == "houseLoan") || (accountType == "vehicleLoan") || (accountType == "personalLoan")) {
     totalAmount = initialAmount + Double(addAmount) 
      initialAmount = totalAmount
      print(totalAmount)
    }
    else if ((accountType == "Fixed") ) {
      totalAmount = initialAmount + Double(addAmount)
      print(totalAmount) 
    }
    else {
      print("cannot deposit the amount")
    }
     
   }
  func withDraw(addAmount: Int, accountType: String) {
    if((accountType == "current") || (accountType == "saving")) {
      totalAmount = initialAmount - Double(addAmount) 
      initialAmount = totalAmount
      print(totalAmount)
    }
    else {
      print("cannot withdraw the amount")
    }
      
  }
  

} */
 
    
    






