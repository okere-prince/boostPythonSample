
#include <boost/python.hpp>

std::string yay()
{
  return std::string("hello this is std::string yay in python ");
}

BOOST_PYTHON_MODULE(libboostPython)
{
  using namespace boost::python;
  def("yay", yay);
}
