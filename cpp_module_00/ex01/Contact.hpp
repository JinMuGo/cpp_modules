/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Contact.hpp                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jgo <jgo@student.42seoul.fr>               +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/21 21:26:25 by jgo               #+#    #+#             */
/*   Updated: 2023/04/22 09:46:15 by jgo              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "main.h"

class Contact {
  private:
	std::string info[5];

	static const std::string infoArr[5];

  public:
	Contact();
	~Contact();
	void saveColumn(int info);
	void saveInfo(int idx);
};