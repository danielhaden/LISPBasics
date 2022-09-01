(defpackage #:clim-simple-frame-app
  (:use #:clim #:clim-lisp)
  (:export #:run-app))

(in-package #:clim-simple-frame-app)

(define-application-frame simple-frame-app ()
  ()
  (:panes
   (int :interactor
	:height 400
	:width 600))
  ;; defines how a pane is positioned inside
  ;; the application frame.
  (:layouts
   (default int)))

(defun run-app ()
  (run-frame-top-level (make-application-frame 'simple-frame-app)))
