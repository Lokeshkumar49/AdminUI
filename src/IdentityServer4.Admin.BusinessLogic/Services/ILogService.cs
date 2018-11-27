using System.Threading.Tasks;
using IdentityServer4.Admin.BusinessLogic.Dtos.Log;

namespace IdentityServer4.Admin.BusinessLogic.Services
{
    public interface ILogService
    {
        Task<LogsDto> GetLogsAsync(string search, int page = 1, int pageSize = 10);
    }
}