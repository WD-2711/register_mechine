#include <Windows.h>
#include <iostream>

extern "C" void asm_func_wapper();

extern "C" char* p1;
extern "C" char* p2;
char* p1 = new char[100];
char* p2 = new char[100];

int main()
{
	std::cout << "Pls input your name, and name length must equal to 8." << std::endl;
	std::cin >> p1;
	asm_func_wapper();
	p2[32] = (char)0;
	std::cout << "Your register code is:" << std::endl;
	std::cout << p2 << std::endl;
	return 0;
}
