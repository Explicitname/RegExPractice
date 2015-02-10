#include <iostream>
#include <fstream>
#include "pcrecpp.h"
#include <string>

int main()

{
	int octet1, octet2, octet3, octet4;
	std::string testString = "255.255.255.255";
	pcrecpp::RE regex("!(([0-9]{1-3}).([0-9]{1-3}).([0-9]{1-3}).([0-9]{1-3}))!");



	regex.FullMatch("255.255.255.255", &octet1, &octet2, &octet3, &octet4);
	std::cout << "The first Octet is: " << octet1 << std::endl;
	std::cout << "The second Octet is: " << octet2 << std::endl;
	std::cout << "The third Octet is: " << octet3 << std::endl;
	std::cout << "The fourth Octet is: " << octet4 << std::endl;





	return(0);
}
