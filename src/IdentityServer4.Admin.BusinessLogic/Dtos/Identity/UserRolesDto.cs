using System.Collections.Generic;
using IdentityServer4.Admin.BusinessLogic.Dtos.Common;
using IdentityServer4.Admin.BusinessLogic.Dtos.Identity.Base;

namespace IdentityServer4.Admin.BusinessLogic.Dtos.Identity
{
    public class UserRolesDto : BaseUserRolesDto<int, int>
    {
        public UserRolesDto()
        {
           Roles = new List<RoleDto>(); 
        }
        
        public List<SelectItem> RolesList { get; set; }

        public List<RoleDto> Roles { get; set; }

        public int PageSize { get; set; }

        public int TotalCount { get; set; }
    }
}
