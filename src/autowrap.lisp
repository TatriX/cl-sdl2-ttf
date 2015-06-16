(in-package :sdl2-ffi)

(autowrap:c-include '(cl-sdl2-ttf autowrap-spec "SDL2_ttf.h")
                    :function-package :sdl2-ffi.functions
                    :spec-path '(cl-sdl2-ttf autowrap-spec)
                    :exclude-sources ("/usr/include/")
                    :include-sources ("SDL2_ttf.h")
                    :symbol-exceptions (("SDL_RWops" . "SDL-RWOPS"))
                    :exclude-constants ("^+__")
                    ;;We're mostly dealing with SDL-surface which contains accessors in the main cl-sdl2 library
                    :no-accessors t)
