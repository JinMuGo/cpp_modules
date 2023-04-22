/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   PhoneBook.cpp                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jgo <jgo@student.42seoul.fr>               +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/21 19:21:14 by jgo               #+#    #+#             */
/*   Updated: 2023/04/22 09:47:09 by jgo              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "PhoneBook.hpp"

PhoneBook::PhoneBook() {
	curIdx = 0;
}

PhoneBook::~PhoneBook() {}

void PhoneBook::addContact()
{
	contactArr[curIdx].saveInfo(curIdx);
	curIdx++;
}

void PhoneBook::searchContact()
{
	
}