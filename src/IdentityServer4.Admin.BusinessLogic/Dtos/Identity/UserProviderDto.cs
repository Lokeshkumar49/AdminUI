﻿using IdentityServer4.Admin.BusinessLogic.Dtos.Identity.Base;

namespace IdentityServer4.Admin.BusinessLogic.Dtos.Identity
{
    public class UserProviderDto : BaseUserProviderDto<int>
    {
        public string ProviderKey { get; set; }

        public string LoginProvider { get; set; }

        public string ProviderDisplayName { get; set; }        
    }
}
