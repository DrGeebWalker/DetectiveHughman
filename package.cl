;;;package
;;;:cd \\Mac\Home\Desktop\krr-final
(eval-when (compile load eval)
  (require :aserve)
  (require :webactions)
  )


(defpackage :detective-hughman
  (:use :common-lisp 
        :excl
        :common-lisp-user
        :net.aserve
        :net.html.generator
        )
  
  )

(in-package :detective-hughman)

(load (merge-pathnames (make-pathname :name "detectivehughman")
                       *load-pathname*))