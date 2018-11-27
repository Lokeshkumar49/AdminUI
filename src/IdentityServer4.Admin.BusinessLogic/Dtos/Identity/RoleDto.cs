using System.ComponentModel.DataAnnotations;
using IdentityServer4.Admin.BusinessLogic.Dtos.Identity.Base;

namespace IdentityServer4.Admin.BusinessLogic.Dtos.Identity
{
    public class RoleDto : BaseRoleDto<int>
    {      
        [Required]
        public string Name { get; set; }
    }
}