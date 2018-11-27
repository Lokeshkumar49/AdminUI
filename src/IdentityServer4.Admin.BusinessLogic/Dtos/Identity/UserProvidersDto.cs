﻿using System.Collections.Generic;

namespace IdentityServer4.Admin.BusinessLogic.Dtos.Identity
{
    public class UserProvidersDto : UserProviderDto
    {
        public UserProvidersDto()
        {
            Providers = new List<UserProviderDto>();
        }

        public List<UserProviderDto> Providers { get; set; }
    }
}
