;;;; This file was inserted here to install asdf-registration.

(defvar *my-directory* (uiop/os:getenv "ASDF_REPO"))
(defvar *my-repo*      (uiop/os:getenv "CL_INIT"))


(pushnew *my-directory* asdf:*central-registry* :test #'uiop:pathname-equal)
(asdf:load-system :asdf-registration)
(asdf-registration:add-repo *my-repo*)
;;;; END asdf-registration code install
