using System.ComponentModel.DataAnnotations;
using IdentityServer4.Admin.BusinessLogic.Dtos.Identity.Base;

namespace IdentityServer4.Admin.BusinessLogic.Dtos.Identity
{
    public class RoleClaimDto : BaseRoleClaimDto<int, int>
    {
        [Required]
        public string ClaimType { get; set; }

        [Required]
        public string ClaimValue { get; set; }
    }
}
