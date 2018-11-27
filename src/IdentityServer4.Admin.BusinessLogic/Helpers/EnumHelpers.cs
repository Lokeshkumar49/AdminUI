﻿using System;
using System.Collections.Generic;
using System.Linq;
using IdentityServer4.Admin.BusinessLogic.Dtos.Common;

namespace IdentityServer4.Admin.BusinessLogic.Helpers
{
	public class EnumHelpers
	{
		public static List<SelectItem> ToSelectList<T>() where T : struct, IComparable
		{
			var selectItems = Enum.GetValues(typeof(T))
				.Cast<T>()
				.Select(x => new SelectItem(Convert.ToInt16(x).ToString(), x.ToString())).ToList();

			return selectItems;
		}
	}
}