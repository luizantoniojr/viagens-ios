//
//  ViagemDao.swift
//  viagens-ios
//
//  Created by Luiz Antônio da Silva Júnior on 29/12/20.
//

import Foundation

class ViagemDao {
    
    func obter () -> [Viagem] {
        var viagens = Array<Viagem>()
        
        viagens.append(Viagem(titulo: "Rio de Janeiro", quantidadeDias: "6 dias", preco: "R$ 400,00", caminhoImagem: "img1.png"))
        viagens.append(Viagem(titulo: "São Paulo", quantidadeDias: "4 dias", preco: "R$ 500,00", caminhoImagem: "img2.jpg"))
        viagens.append(Viagem(titulo: "Bahia", quantidadeDias: "3 dias", preco: "R$ 450,00", caminhoImagem: "img3.jpg"))
        viagens.append(Viagem(titulo: "Recife", quantidadeDias: "3 dias", preco: "R$ 250,00", caminhoImagem: "img4.jpg"))
        viagens.append(Viagem(titulo: "Santa Catarina", quantidadeDias: "4 dias", preco: "R$ 500,00", caminhoImagem: "img5.jpg"))
        
        return viagens
    }
}
