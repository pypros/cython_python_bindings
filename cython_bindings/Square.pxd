cdef extern from "Square.h" namespace "shapes":
    cdef cppclass Square:
        Square() except +
        Square(int, int, int, int) except +
        int x0, y0, x1, y1
        int getArea()
        void getSize(int* width, int* height)
        void move(int, int)