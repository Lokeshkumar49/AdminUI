﻿using AutoMapper;
using IdentityServer4.Admin.BusinessLogic.Dtos.Common;
using IdentityServer4.Admin.BusinessLogic.Dtos.Log;
using IdentityServer4.Admin.EntityFramework.Entities;

namespace IdentityServer4.Admin.BusinessLogic.Mappers
{
    public class LogMapperProfile : Profile
    {
        public LogMapperProfile()
        {
            CreateMap<Log, LogDto>(MemberList.Destination)
                .ReverseMap();
            
            CreateMap<PagedList<Log>, LogsDto>(MemberList.Destination)
                .ForMember(x => x.Logs, opt => opt.MapFrom(src => src.Data));
        }
    }
}
