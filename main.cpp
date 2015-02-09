#include <iostream>
#include <fstream>
#include "pcrecpp.h"
#include "pcre.h"
#include <string>

int main()

{
	std::string testString = "255.255.255.255";




	pcrecpp::RE regex("!(([0-9]{1-3}).([0-9]{1-3}).([0-9]{1-3}).([0-9]{1-3}))!");
	if (regex.DoMatch(testString))
	{
		std::cout << "Minor Victory!" << std::endl;
	}






	return(0);
}
