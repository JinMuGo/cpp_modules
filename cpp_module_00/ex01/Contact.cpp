/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Contact.cpp                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jgo <jgo@student.42seoul.fr>               +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/21 19:21:13 by jgo               #+#    #+#             */
/*   Updated: 2023/04/22 11:20:05 by jgo              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "Contact.hpp"
#include "utils.h"

const std::string Contact::infoArr[5] = {"INDEX", "FIRST_NAME", "LAST_NAME",
										 "NICKNAME", "SECRET"};
										
Contact::Contact() {
	for (int i = INDEX; i <= SECRET; i++)
		info[i] = std::string(1, '\0');
}

Contact::~Contact() {}

void Contact::saveColumn(int _info) {
	const std::string	column = infoArr[_info];
	std::string 		input = "";

	while(true)
	{
		std::cout << column << ": ";
		getline(std::cin, input);
		if (std::cin.eof())
			handleEOF();
		else if (input == "")
			std::cout << "fill out input" << "\n";
		if (!input.empty())
			break ;
	}
	info[_info] = input;
	std::cout << "Successfully Add : " << input << "\n";
}

void Contact::saveInfo(int idx) {
	this->info[INDEX] = idx;
	for (int i = FIRST_NAME; i <= SECRET; i++)
		this->saveColumn(i);
	std::cout << "saveInfo in Contact : " << idx + 1 << std::endl;
}
