from cython_bindings.Square cimport Square as _Square

cdef class Square:
    cdef _Square c_square      # hold a C++ instance which we're wrapping
    def __cinit__(self, int x0, int y0, int x1, int y1):
        self.c_square = _Square(x0, y0, x1, y1)
    def get_area(self):
        return self.c_square.getArea()
    def get_size(self):
        cdef int width, height
        self.c_square.getSize(&width, &height)
        return width, height
    def move(self, dx, dy):
        self.c_square.move(dx, dy)