using System;
using System.Collections.Generic;
using System.Text;
using IdentityServer4.Admin.BusinessLogic.Helpers;

namespace IdentityServer4.Admin.BusinessLogic.Resources
{
    public interface IIdentityResourceServiceResources
    {
        ResourceMessage IdentityResourceDoesNotExist();

        ResourceMessage IdentityResourceExistsKey();

        ResourceMessage IdentityResourceExistsValue();
    }
}
