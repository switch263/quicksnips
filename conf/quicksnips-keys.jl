;; To use this configuration, add the following to ~/.sawfishrc
;;
;; (load-file "~/quicksnips/conf/quicksnips-keys.jl")


(define quicksnips-keymap (make-keymap))
(bind-keys global-keymap
	   "M-S-s" (lambda () (system "quicksnips -i &"))
	   "M-S-p" (lambda () (system "quicksnips -i -p -s prefabs &"))
	   "M-S-r" (lambda () (system "quicksnips -i -s rackspace &"))
	   "C-z" quicksnips-keymap)

(bind-keys quicksnips-keymap "e" (lambda () (system "quicksnips install-emacs &")))
(bind-keys quicksnips-keymap "o" (lambda () (system "quicksnips server-healthcheck &")))
(bind-keys quicksnips-keymap "u" (lambda () (system "quicksnips get-public-ip &")))
(bind-keys quicksnips-keymap "z" '(synthesize-event "C-z" (input-focus)))

(define quicksnips-a-keymap (make-keymap))
(bind-keys quicksnips-keymap "a" quicksnips-a-keymap)
(bind-keys quicksnips-a-keymap "b" (lambda () (system "quicksnips apache-buddy &")))
(bind-keys quicksnips-a-keymap "d" (lambda () (system "quicksnips apache-doc-roots &")))
(bind-keys quicksnips-a-keymap "g" (lambda () (system "quicksnips apache-log-growers &")))
(bind-keys quicksnips-a-keymap "l" (lambda () (system "quicksnips apache-show-logfiles &")))
(bind-keys quicksnips-a-keymap "v" (lambda () (system "quicksnips apache-vhosts &")))

(define quicksnips-f-keymap (make-keymap))
(bind-keys quicksnips-keymap "f" quicksnips-f-keymap)
(bind-keys quicksnips-f-keymap "b" (lambda () (system "quicksnips file-backup &")))

(define quicksnips-g-keymap (make-keymap))
(bind-keys quicksnips-keymap "g" quicksnips-g-keymap)
(bind-keys quicksnips-g-keymap "c" (lambda () (system "quicksnips git-commit-push &")))

(define quicksnips-k-keymap (make-keymap))
(bind-keys quicksnips-keymap "k" quicksnips-k-keymap)
(bind-keys quicksnips-k-keymap "u" (lambda () (system "quicksnips kernel-upgrade &")))
(bind-keys quicksnips-k-keymap "b" (lambda () (system "quicksnips kernel-boot-order &")))
(bind-keys quicksnips-k-keymap "h" (lambda () (system "quicksnips add-eth-hwaddr-ifcfg &")))
(bind-keys quicksnips-k-keymap "f" (lambda () (system "quicksnips show-next-fscks &")))

(define quicksnips-m-keymap (make-keymap))
(bind-keys quicksnips-keymap "m" quicksnips-m-keymap)
(bind-keys quicksnips-m-keymap "m" (lambda () (system "quicksnips mysql-memory &")))

(define quicksnips-p-keymap (make-keymap))
(bind-keys quicksnips-keymap "p" quicksnips-p-keymap)
(bind-keys quicksnips-p-keymap "p" (lambda () (system "quicksnips plesk-admin-password &")))
(bind-keys quicksnips-p-keymap "m" (lambda () (system "quicksnips plesk-maillog &")))

(define quicksnips-q-keymap (make-keymap))
(bind-keys quicksnips-keymap "q" quicksnips-q-keymap)
(bind-keys quicksnips-q-keymap "c" (lambda () (system "quicksnips server-qccheck &")))

(define quicksnips-s-keymap (make-keymap))
(bind-keys quicksnips-keymap "s" quicksnips-s-keymap)
(bind-keys quicksnips-s-keymap "s" (lambda () (system "quicksnips sar-recent-cpu &")))
(bind-keys quicksnips-s-keymap "q" (lambda () (system "quicksnips sar-recent-load &")))
(bind-keys quicksnips-s-keymap "r" (lambda () (system "quicksnips sar-recent-memory &")))
