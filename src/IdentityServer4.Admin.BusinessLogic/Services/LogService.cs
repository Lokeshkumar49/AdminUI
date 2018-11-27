using System.Threading.Tasks;
using IdentityServer4.Admin.BusinessLogic.Dtos.Log;
using IdentityServer4.Admin.BusinessLogic.Mappers;
using IdentityServer4.Admin.BusinessLogic.Repositories;

namespace IdentityServer4.Admin.BusinessLogic.Services
{
    public class LogService : ILogService
    {
        private readonly ILogRepository _repository;

        public LogService(ILogRepository repository)
        {
            _repository = repository;
        }

        public async Task<LogsDto> GetLogsAsync(string search, int page = 1, int pageSize = 10)
        {
            var pagedList = await _repository.GetLogsAsync(search, page, pageSize);
            var logs = pagedList.ToModel();

            return logs;
        }
    }
}
