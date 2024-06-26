#lang racket
(require examples)

;; Comprimento e um valor numerico positivo em Metros
;; Massa e um valor numerico positivo em Quilogramas

;; Comprimento Comprimento Comprimento -> Massa
;; Obtem as dimensoes de um tubo de ferro e calcula sua massa

(examples
(check-= (massa-tubo 0.05 0.03 0.1) 0.2472436 0.0000001))

(define (massa-tubo diametro-externo diametro-interno altura)
  (* 3.14
     (sqr (/ (- diametro-externo diametro-interno) 2))
     altura
     7874))