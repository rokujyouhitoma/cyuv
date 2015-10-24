from libc.stdlib cimport malloc, free

cdef class Loop(object):
    cdef uv_loop_t* __loop

    def __cinit__(Loop self):
        cdef uv_loop_t* loop
        loop = <uv_loop_t*>malloc(sizeof(uv_loop_t))
        uv_loop_init(loop)
        self.__loop = loop

    def __dealloc__(Loop self):
        free(self.__loop)
