/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ebellini <ebellini@student.42roma.it>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/31 22:25:00 by ebellini          #+#    #+#             */
/*   Updated: 2024/02/04 23:52:02 by ebellini         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include "./libft/libft.h"
# include <stdio.h>

int	ft_printf(const char *str, ...);
int	ft_void_value(void *ptr);
int	ft_unsigned_value(unsigned int ui, char c);
#endif
