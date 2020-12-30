//
//  Viagem.swift
//  viagens-ios
//
//  Created by Luiz Antônio da Silva Júnior on 29/12/20.
//

import Foundation

class Viagem: NSObject {
    let titulo: String
    let quantidadeDias: String
    let preco: String
    let caminhoImagem: String
    
    init(titulo: String, quantidadeDias: String, preco: String, caminhoImagem: String) {
        self.titulo = titulo
        self.quantidadeDias = quantidadeDias
        self.preco = preco
        self.caminhoImagem = caminhoImagem
    }
}
