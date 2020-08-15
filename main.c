/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jnannie <jnannie@student.21-school.ru>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/08/09 12:44:17 by jnannie           #+#    #+#             */
/*   Updated: 2020/08/14 10:39:31 by jnannie          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>

size_t		ft_strlen(char *str);
char		*ft_strcpy(char *dest, char *src);
int			ft_strcmp(char *str1, char *str2);
ssize_t		ft_write(int fd, const void *buf, size_t count);
ssize_t		ft_read(int fd, void *buf, size_t count);
char		*ft_strdup(const char *s);

int			main(void)
{
	char		*str1;
	char		*str2;
	int			ret;

	str1 = "1234567890";
	printf("-----\nft_strlen test\n-----\n");
	printf("real strlen: %ld\n", strlen(str1));
	printf("my strlen: %ld\n", ft_strlen(str1));

	printf("\n-----\nft_strcpy test\n-----\n");
	str2 = calloc(1, strlen(str1) + 1);
	printf("%s\n", ft_strcpy(str2, str1));

	printf("\n-----\nft_strcmp test\n-----\n");
	printf("%d\n", ft_strcmp(str2, str1));

	printf("\n-----\nft_write test\n-----\n");
	ret = ft_write(1, "hello\n", 6);
	printf("%d\n", ret);
	perror("errno");

	printf("\n-----\nft_read test\n-----\n");
	errno = 0;
	memset(str2, 0, strlen(str2));
	ret = ft_read(0, str2, 10);
	printf("%s\n", str2);
	printf("%d\n", ret);
	perror("errno");
	free(str2);

	printf("\n-----\nft_strdup test\n-----\n");
	errno = 0;
	str2 = ft_strdup(str1);
	printf("%s\n", str2);
	perror("errno");

	free(str2);
	return 0;
}
