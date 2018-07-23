//amancoin ICO

//version of compiler
pragma solidity ^0.4.11;
contract amancoin_ico { //contract defination

    //Setting the total number of amancoins available for offering
    uint public max_amancoins = 1000000 ;//unsigned intger
                                        //Public variable, everyone will know its value
                                        //initialised to one million
    
    //Introducing USD to amancoins conversion rate
    uint public usd_to_amancoins = 1000; //public since everyonw must know the conversion rate
                                         //one usd = 1000 amancoins
    // introducing the total number of amancoins that have been bought by investors
    uint public total_amancoins_bought = 0; //public to maintain transparency of data
    
    //Mapping from the investor address to its equity in Amancoins and USD
    mapping (address => uint) equity_amancoins; //takes in an address and returns an integer

    mapping (address => uint) equity_usd;

    //checking if an investor can buy amancoins
    modifier can_buy_amancoins(uint usd_invested) { 
        require(usd_invested * usd_to_amancoins + total_amancoins_bought <= max_amancoins);
        _;
    }
}
