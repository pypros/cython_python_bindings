



from distutils.core import setup, Extension
from Cython.Build import cythonize


cpp_library_shapes = Extension(
        name='shapes', #nazwa indywidualna top
        sources=['cython_bindings/Shapes.pyx',
                 'cpp_code/library_rectangle/src/Rectangle.cpp',
                 'cpp_code/library_square/src/Square.cpp'
                 ],
        include_dirs=['cpp_code/library_rectangle/inc/',
                      'cpp_code/library_square/inc/'],
        language='c++',
        extra_compile_args=['-g', '-std=c++11']
    )

# cpp_library_rectangle = Extension(
#         'shapes',
#         sources=['cython_bindings/Rectangle.pyx', 'cpp_code/library_rectangle/src/Rectangle.cpp'],
#         include_dirs=['cpp_code/library_rectangle/inc/'],
#         language='c++',
#         extra_compile_args=['-g', '-std=c++11']
#     )

# cpp_library_square = Extension(
#         'shapes1',
#         sources=['cython_bindings/Square.pyx', 'cpp_code/library_square/src/Square.cpp'],
#         include_dirs=['cpp_code/library_square/inc/'],
#         language='c++',
#         extra_compile_args=['-g', '-std=c++11']
#     )

# extensions = [cpp_library_rectangle, cpp_library_square]

setup(

    ext_modules=cythonize(cpp_library_shapes)
)
