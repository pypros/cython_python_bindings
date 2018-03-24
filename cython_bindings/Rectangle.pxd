cdef extern from "Rectangle.h" namespace "shapes":
    cdef cppclass Rectangle:
        int x0, y0, x1, y1
        Rectangle() except +
        Rectangle(int, int, int, int) except +
        int getArea()
        void getSize(int* width, int* height)
        void move(int, int)