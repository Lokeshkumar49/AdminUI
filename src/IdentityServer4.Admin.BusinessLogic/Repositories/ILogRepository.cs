using System.Threading.Tasks;
using IdentityServer4.Admin.BusinessLogic.Dtos.Common;
using IdentityServer4.Admin.EntityFramework.Entities;

namespace IdentityServer4.Admin.BusinessLogic.Repositories
{
    public interface ILogRepository
    {
        Task<PagedList<Log>> GetLogsAsync(string search, int page = 1, int pageSize = 10);
    }
}