/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putchar_fd.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ebellini <ebellini@student.42roma.it>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/29 22:36:33 by ebellini          #+#    #+#             */
/*   Updated: 2024/02/05 10:00:07 by ebellini         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putchar_fd(char c, int fd)
{
	unsigned char	uc;

	if (fd < 0)
		return (0);
	uc = (unsigned char)c;
	write(fd, &uc, 1);
	return (1);
}
