/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lbarture <lbarture@student.42urduliz.com>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/08/30 17:01:23 by lbarture          #+#    #+#             */
/*   Updated: 2021/08/30 17:01:37 by lbarture         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_isalnum(int x)
{
	if ((x >= '0' && x <= '9')
		   || (x >= 'a' && x <= 'z')
		   || (x >= 'A' && x <= 'Z'))
		return (1);
	else
		return (0);
}
