(defpackage #:clim-simple-frame-app
  (:use #:clim #:clim-lisp)
  (:export #:run-app))

(in-package #:clim-simple-frame-app)

;; This macro defines the outermost application frame
(define-application-frame simple-frame-app ()

  ;; A list of superclasses that the application frame can
  ;; inherit from
  ()

  ;; Defines the panes that will be defined in the frame. This
  ;; specifies a single pane which is an interactor
  (:panes
   (my-interactor :interactor
                  :height 400
		  :width 600))
  
  ;; defines how a pane is positioned inside
  ;; the application frame.
  (:layouts
   (default my-interactor)))

;; This function is called to run the application
(defun run-app ()
  (run-frame-top-level (make-application-frame 'simple-frame-app)))
