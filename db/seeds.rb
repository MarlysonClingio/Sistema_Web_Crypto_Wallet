# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

mining_types = [
    { description: "Proof of Work", acronym: "PoW" },
    { description: "Proof of Stake", acronym: "PoS" },
    { description: "Proof of Capacity", acronym: "PoC" }
]

mining_types.each do |mining_type|
    MiningType.find_or_create_by!(mining_type)
end

type_mining = MiningType.all.sample

coins = [
            {
                description: "Bitcoin",
                acronym: "BTC",
                url_image: "https://logosmarcas.net/wp-content/uploads/2020/08/Bitcoin-Logo.png",
                mining_type: type_mining
            },
            {
                description: "Ethereum",
                acronym: "ETH",
                url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png/600px-ETHEREUM-YOUTUBE-PROFILE-PIC.png",
                mining_type: type_mining
            },
            {
                description: "Dash",
                acronym: "DASH",
                url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png",
                mining_type: type_mining
            },
            {
                description: "Iota",
                acronym: "IOT",
                url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/1720.png",
                mining_type: type_mining
            },
            {
                description: "ZCash",
                acronym: "ZEC",
                url_image: "https://www.cryptocompare.com/media/351360/zec.png",
                mining_type: type_mining
            }
]

coins.each do |coin|
    Coin.find_or_create_by!(coin)
end

puts "Moedas e Tipos de Mineração cadastrados com sucesso!!"