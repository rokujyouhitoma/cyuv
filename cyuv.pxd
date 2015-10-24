
cdef extern from 'uv.h':
  ctypedef struct uv_loop_t:
    pass

  int uv_loop_init(uv_loop_t* loop) except -1
