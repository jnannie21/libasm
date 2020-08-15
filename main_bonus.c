/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_bonus.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jnannie <jnannie@student.21-school.ru>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/08/13 09:35:52 by jnannie           #+#    #+#             */
/*   Updated: 2020/08/14 09:57:50 by jnannie          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>

typedef struct		s_list
{
	void			*data;
	struct s_list	*next;
}					t_list;

void		ft_list_push_front(t_list **begin_list, void *data);
int			ft_list_size(t_list *begin_list);

int			main(void)
{
	t_list	*list;
	int		i;
	int		j;

	list = 0;
	printf("list size: %d\n", ft_list_size(list));
	i = 6;
	ft_list_push_front(&list, &i);
	printf("after first push: \n");
	printf("list->data: %d\n", *((int *)(list->data)));
	printf("list size: %d\n", ft_list_size(list));
	j = 8;
	ft_list_push_front(&list, &j);
	printf("after second push: \n");
	printf("list->data: %d\n", *((int *)(list->data)));
	printf("list->next->data: %d\n", *((int *)(list->next->data)));
	printf("list size: %d\n", ft_list_size(list));
	return (0);
}
