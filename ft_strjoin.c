/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mrekalde <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/02 13:10:53 by mrekalde          #+#    #+#             */
/*   Updated: 2023/10/02 13:40:32 by mrekalde         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*m;
	size_t	len;

	if (!s1 && !s2)
		return (0);
	len = ft_strlen(s1) + ft_strlen(s2) + 1;
	m = malloc(sizeof(char) * (len));
	if (!m)
		return (0);
	ft_strlcpy(m, s1, len);
	ft_strlcat(m, s2, len);
	return ((char *)m);
}
