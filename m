Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B434779687
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Aug 2023 19:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2551010E07E;
	Fri, 11 Aug 2023 17:55:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D57C10E6D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Aug 2023 17:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691776518; x=1723312518;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p1cUXH2izXsknxLbQPQR1mBQuBkmluyB827WX9/aYdc=;
 b=A+CxxsH9YPzZbLmT3y/bg2VkMqhmxcgyaUt0antaBpDNEBozlPrl2FHV
 uU+TxWm0TjwZ+G3L2xfREgCJ4oo5+Xz9KGXCGurg1jd3nHt3ios45D8IN
 QiHrUN2LVLsoRUaT7YrmlN2NZR3fFyPXeTrzqf4zYTQUVR0/QDRcmzj8Q
 EO1/vUpz7braSMKlvKi6kj3T52h0kLGwkKSp3+I2fC7biYOwtb1DqelH9
 UoofGecTAaWbV+jnjfVkKEBViD+YM0MDHgvhZDOwEkzGyRLH6P3ikCWmt
 rQ7fexuhdmU/K8E1cHhRFPo/ulKfMbW7iZj5w3izpFhFcVhVyAQPTyXRJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10799"; a="438065559"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="438065559"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 10:55:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10799"; a="802750344"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="802750344"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 11 Aug 2023 10:55:17 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 11 Aug 2023 10:55:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 11 Aug 2023 10:55:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 11 Aug 2023 10:55:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F9m8keCKX65z1sVO5JqLirxYyHFAOSn3Gfe+fk1fz+eS8YosNZtTGAZnB5vuTGl7KhGXuOkmtJaba40tdPBhU3cphOTLyZyly2vqLOnpLwTlV70+0qZ+FEKryUDArQSXOA9lmN0LfG9o36S4enLVfNQSRE9SVAOgApA+shCzYKHGEO/X5zWVNxt83znuTf8q5TN3VFok6+jBha9OjNHwpufN9APjSCxFbxN6JQ2BbmeHNT6pGijwmm/vg9ewmkPC4yTRNEQxoFnLILpBUY7CA9woF31bJH+qiV09juKP4bNL7T70CFJZ4BJaQdUPQZRraQAxjSDlXOm6ILhK19r5Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xyjjbTZ2BShQz+gkyyGAjAaRsm3Jl4MrXt2Iz2OL1BI=;
 b=RR2+LI8qVVU+gufBo/ZGd7QD0j94PxVtBTSoOKtB8jnb1gQ8UqKf4M9qLTNUc8tFjrU5er6LAJMWhMHrC14yOt9wMpOTVBaEiwNyCN8w2Zb0wcnN7MfsO3sX37zzV9wnG98V6LI1aU9RWXWNk2Vfyust0zbd2z3VR35zBuapz2DY8YXmeJM5U57f2IneTKrQFfH+gfDo1cAtCbmiSzWBoM/7P2V9wr9GuepOFhnAqTDa4rFgaA8KgxK8CgRycBvbkFHYv+pWp7/Hzzh5Sej2Bzp14NoTy8A2Dlr+gBHSlJLP0l5nUxvICUS91m7EyZeP40q8b7voxFRIs4Cmw2V/dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by CY8PR11MB7313.namprd11.prod.outlook.com (2603:10b6:930:9c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.20; Fri, 11 Aug
 2023 17:55:00 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::6b70:5707:3725:f557]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::6b70:5707:3725:f557%7]) with mapi id 15.20.6678.020; Fri, 11 Aug 2023
 17:54:59 +0000
Message-ID: <744d58b8-27c7-0402-b523-a7caf95fd54f@intel.com>
Date: Fri, 11 Aug 2023 10:54:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20230726010044.3280402-1-vinay.belgaumkar@intel.com>
 <169050954134.19728.7457111325322572121@emeril.freedesktop.org>
 <BY5PR11MB4274026032D959D9B19F1033850BA@BY5PR11MB4274.namprd11.prod.outlook.com>
 <ZNV/LqP3ysSfnoRU@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <ZNV/LqP3ysSfnoRU@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0021.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::26) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|CY8PR11MB7313:EE_
X-MS-Office365-Filtering-Correlation-Id: 10f5ed6e-cf9a-4969-1def-08db9a9414ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: axiR0dBH4mtIcbop4JCN/fj7RyW37qIoNxCmF29ahhua/a+KFh+Fo2caZQXp6dT2lr4qQzVZQXYRq42up/oT4Wk6DMRpj5weAXbvtuN6AJQdVnwx5mad1MgyI9YOtP9PsQrw8MucvGPGgDi+F1HpEnQ+g1siiFKbq4FQ8TPiRbafqhjipjmXPy+k4I6GuJMsrL+LcNaa5opK3P0YKWEpE+pnxcvUx9l/x+iCNd2kq8YyJzy+LR5wV257CUK5E9O+v/S+Rkjw7UhccCLSBgwlVspF0jEBuYZ5/Cig6HOM+DBsSR7PVbPJzLDjnk2u+Q8MJnhtFqZNuJPPSvgPPuF1NuhbP3aECtlVDS6FdoLbpEpZNCvkATZnGfLTTOV0vi95X/m2+C/25GqK+XmcHshf0i/430RxYvTTRpcicwDV8/VERNSQwPrPFz4LGhh0zmzvVnINSRzpPYe14LWNPvuKu4RsMcUknkYfN3qcnVtPEkUtnO74NrZaSHTRODQw28l8++VwwfovAVm1/sz4A1xx8fJL1i5dJHFxT/dzuZAE74v2NYR92GYxDHG1PPg9Uk1K6NA9NHOBTVcuDZrpljrn760RaNgGnV/ejqBOKg3CH6ENXjDKOSUgb86T1rwXcyiT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(136003)(376002)(396003)(186006)(1800799006)(451199021)(31686004)(6512007)(966005)(36756003)(86362001)(31696002)(82960400001)(38100700002)(53546011)(26005)(83380400001)(30864003)(2616005)(37006003)(478600001)(2906002)(6486002)(41300700001)(8936002)(316002)(4326008)(6636002)(6506007)(66476007)(6862004)(66556008)(5660300002)(66946007)(45980500001)(43740500002)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RGJ3OXdrQUpscFZMN0REVWF2bjNnQ3JnQkNnSGNmUXZXNXlGdTcvWkgyZjEy?=
 =?utf-8?B?RUNuT2pWdS9JeGlEdC9nZyttT2NpUXZtYlpMWGNlZUZEKzRNYWNoSjlVV0dO?=
 =?utf-8?B?NzdxNldKMUdMNFJEdzUzMndEYkNDbnNOR2g0eHFidEJKclVPWTNCNEVxT1dh?=
 =?utf-8?B?eEpEQktjYzNXMVpWcTZ5Uk9iY3BJVGJ0YklHcVBOY3l6a2Z2ZjIzYWh2alJZ?=
 =?utf-8?B?UTdWTWJYbWRpQ3JQRHFYUFVCUUhWc0tXR0lPOVczYThEV2FLZWhsU0ZhWURD?=
 =?utf-8?B?a24wYUZ4NzdpaXZCeE43amwyTVVFL1o4eHRFTEVaSVRJMFRPUUlsM09kZ09h?=
 =?utf-8?B?VHRpc25ueXpLOExybTNvZ2NKT2xYbDlTaHEveXRmNVNHRjR4RTdnZHU5eWpQ?=
 =?utf-8?B?dEdGN0Q4YS91VVlkZloxVWdjeHkvaFROZmNCaC9TTkZkN3lLR1pIUkdxaWUy?=
 =?utf-8?B?V0gvbDB5cUNQTzJMeUlKSFJmaCtLWmRVbjF4Zzg0Zm1KNUhuVTM5WDNkdVd1?=
 =?utf-8?B?SnY0S1NNdjBTMElXOU0zY1NmdFNHRjZ1bThGbTMxa05EMkpsSEJwbk1MOG43?=
 =?utf-8?B?VklRRmVkbTc2YjV0aGxsOHUrZGhId2ZiSEcxeW1DLytQdGpFaGprWXlrMWx6?=
 =?utf-8?B?RGtwVE5aT1pJcGpmbzNVWnBpWDBURk5hV1VwL2VHTm9pYWRLN1BsOTNZbDdL?=
 =?utf-8?B?SnowM040VE94dzJiUVlScWxpNG1MQkdLY3BITVE3SUhZQk0xMU5BUnFwNTFw?=
 =?utf-8?B?ODVneTZva0VodUtydGxObVZWVGdMdzN3REtTYTJ1Sktnd1F6MENiMWl3cStJ?=
 =?utf-8?B?UTh5bUJuQ050RjBTR09QZE5QelBTaTRUOUgwUGxPTHFKeENLNElWNTdaNEw4?=
 =?utf-8?B?VDB4Q2tycVBKVzhGRmVWaC9iT1I2WU81UzhDZkdxelVVaENweG5IdTF6VWd2?=
 =?utf-8?B?eGFmN0pGUGdwVUMwRTN0azU2NmxHQnJhVHdIcU1DZGg4VFhMZTdLekJNc3RV?=
 =?utf-8?B?TERDaDRXZjNJcVRXS2VxV1VMb3ZoNlBObnZvZEg1bzhVSmVJTWFqdk9HaDA2?=
 =?utf-8?B?VzNaUDBtbFByZldZT1V0dlI3QWhFK1JmRnlOVlkyU0pteVJqdy9TZWJLRXJl?=
 =?utf-8?B?YTR0ZGV3NStDSGxpTjRSSWZHdVh2Qy81V3pLYjhyV0VvVEhjV0hkejRmYzl1?=
 =?utf-8?B?anltVDR6ZUNmVThQakQxZlNpVzJiQUtTRll5SFAzMFp5YS9qS3cwcWJOQ2NC?=
 =?utf-8?B?WDRyckZta2owN1VWYzkvc0lyVGFYZ1RJREFBSmZMUXROMWR3ZDl6T3hPajl2?=
 =?utf-8?B?dkl6MmI4ZFhtanNjOFptblp5WWs0MGdxWmRiMmxyOVN5VDBFS0RmdXZwOFpw?=
 =?utf-8?B?cXBZWnRYcndHOFVkOUNiSGt3U1lkVjl0MlovUnNvbFBmUHptWjdiR2ZyR0RI?=
 =?utf-8?B?OXVsRXhtblMvZmgzZlhFOWljVUdLNzJyRDZsQU41U0hQdEhRTlRZSkd6NHF5?=
 =?utf-8?B?SUVhcGJ1NXY1a2FEUG1RVkljZTZCMHVLSGI4N0l6OVlJZXNHbkp6c2ZwL2ZC?=
 =?utf-8?B?SjhPd3RoRkt3S2p0VjduU2lIMzdPMWlmLzJjYmd3dUVrQ3Q1WGRobkZwaDVo?=
 =?utf-8?B?cWVESU9CMTBCK3VoYkdKbHNKSFg1VkhRbVJNSE5UcW9YVml5Tkt3ajRtUlBS?=
 =?utf-8?B?SkJPOTZhZ0d2QzVmK3lFNlBQOG5pNmg4RmlUamxqTDdrRWovWmk1enNyK2Rz?=
 =?utf-8?B?STNsRUxmVmhoOEdFNW9JaVNoNHZFTGYyOEVqYlBBUm9TY1d4cUZKazdxemRh?=
 =?utf-8?B?TlUrWXppM2k4NW5sRUI5Y3NrNE02dE4vdHRjajZWN0ZFZllJSDBFd3dISVhu?=
 =?utf-8?B?VHFQaG5SY0docHFFV000YUhvZDJuWUhlcFFiQ2pjZjR2SWU1L3d6VGp2Q3lV?=
 =?utf-8?B?cVp6dThxRGtKU3UwRUJxd1lrSzdDb2V6QVcxRlI2Y0dMUit5L1hIL0hHTUxJ?=
 =?utf-8?B?TzN2QkdPVGNVUWlKdWQwWlZQZHZIb2gzNVhTeFgvNzFCcnZzRGhwSWRsOUQ0?=
 =?utf-8?B?Tkp5YzFrSzhiV0FsTUVrUDhHelFjS3ZBS0Q5R3ROUGExMGZXUGIwL2JLRzBq?=
 =?utf-8?B?ZWtUekFZL05WWlRlNlNMdURXbHpOdTFmcWFuVk1rR29jU29XVUc3NmlzVjdZ?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10f5ed6e-cf9a-4969-1def-08db9a9414ad
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2023 17:54:59.8199 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CYGF1Tmmdc+WMJn/Q5lLvTg9CzK8//qHcK9RKSnipnM3Qu95v7ofoN8XJLxEWECiMWvbleayztoFJ/ICLyb9UHQ02PxpuoMgGXyPTN1f2Oc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7313
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc/slpc=3A_Restore_efficient_freq_earlier_=28rev3=29?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 8/10/2023 5:22 PM, Rodrigo Vivi wrote:
> On Wed, Aug 02, 2023 at 12:41:09AM +0000, Belgaumkar, Vinay wrote:
>>                                                                                  
>>                                                                                  
>>                                                                                  
>>                                                                                  
>>     From: Patchwork <patchwork@emeril.freedesktop.org>
>>     Sent: Thursday, July 27, 2023 6:59 PM
>>     To: Belgaumkar, Vinay <vinay.belgaumkar@intel.com>
>>     Cc: intel-gfx@lists.freedesktop.org
>>     Subject: ✗ Fi.CI.IGT: failure for drm/i915/guc/slpc: Restore efficient
>>     freq earlier (rev3)
>>                                                                                  
>>                                                                                  
>>                                                                                  
>>     Patch Details
>>                                                                                  
>> Series:  drm/i915/guc/slpc: Restore efficient freq earlier (rev3)
>> URL:     [1]https://patchwork.freedesktop.org/series/121150/
>> State:   failure
>> Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/index.html
>>                                                                                  
>>       CI Bug Log - changes from CI_DRM_13432_full -> Patchwork_121150v3_full
>>                                                                                  
>> Summary
>>                                                                                  
>>     FAILURE
>>                                                                                  
>>     Serious unknown changes coming with Patchwork_121150v3_full absolutely
>>     need to be
>>     verified manually.
>>                                                                                  
>>     If you think the reported changes have nothing to do with the changes
>>     introduced in Patchwork_121150v3_full, please notify your bug team to
>>     allow them
>>     to document this new failure mode, which will reduce false positives in
>>     CI.
>>                                                                                  
>> Participating hosts (10 -> 10)
>>                                                                                  
>>     No changes in participating hosts
>>                                                                                  
>> Possible new issues
>>                                                                                  
>>     Here are the unknown changes that may have been introduced in
>>     Patchwork_121150v3_full:
>>                                                                                  
>>    IGT changes
>>                                                                                  
>>      Possible regressions
>>                                                                                  
>>       • igt@sysfs_timeslice_duration@invalid:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [3]TIMEOUT
>>                                                                                  
>>     Does not seem related to this patch.
> But i915_selftests@live@workarounds seems to fail on every platform after I cherry
> picked this patch to drm-intel-fixes:
>
> http://gfx-ci.igk.intel.com/tree/drm-intel-fixes/combined-alt.html?
>
> <5> [314.508910] i915 0000:00:02.0: [drm] Resetting chip for live_workarounds
> <6> [314.511971] i915 0000:00:02.0: [drm] GT0: GuC firmware i915/mtl_guc_70.bin version 70.8.0
> <7> [314.523625] i915 0000:00:02.0: [drm:intel_guc_fw_upload [i915]] GT0: GUC: init took 8ms, freq = 2250MHz, before = 2250MHz, status = 0x8002F034, count = 0, ret = 0
> <7> [314.526596] i915 0000:00:02.0: [drm:guc_enable_communication [i915]] GT0: GUC: communication enabled
> <6> [314.531291] i915 0000:00:02.0: [drm] GT0: GUC: submission enabled
> <6> [314.531324] i915 0000:00:02.0: [drm] GT0: GUC: SLPC enabled
> <6> [314.576597] i915: Running intel_workarounds_live_selftests/live_engine_reset_workarounds
> <7> [314.576715] MCR Steering: L3BANK steering: group=0x0, instance=0x0
> <7> [314.576736] MCR Steering: DSS steering: group=0x0, instance=0x0
> <7> [314.576751] MCR Steering: INSTANCE 0 steering: group=0x0, instance=0x0
> <7> [314.576818] i915 0000:00:02.0: [drm:wa_init_finish [i915]] Initialized 5 GT_REF workarounds on global
> <7> [314.578192] i915 0000:00:02.0: [drm:wa_init_finish [i915]] Initialized 5 REF workarounds on rcs0
> <7> [314.579454] i915 0000:00:02.0: [drm:wa_init_finish [i915]] Initialized 6 CTX_REF workarounds on rcs0
> <7> [314.580487] i915 0000:00:02.0: [drm:wa_init_finish [i915]] Initialized 1 REF workarounds on bcs0
> <7> [314.581449] i915 0000:00:02.0: [drm:wa_init_finish [i915]] Initialized 2 CTX_REF workarounds on bcs0
> <7> [314.582206] i915 0000:00:02.0: [drm:wa_init_finish [i915]] Initialized 1 REF workarounds on ccs0
> <7> [314.583122] i915 0000:00:02.0: [drm:wa_init_finish [i915]] Initialized 1 CTX_REF workarounds on ccs0
> <6> [314.584067] Verifying after rcs0 reset...
> <7> [314.609843] i915 0000:00:02.0: [drm:intel_guc_context_reset_process_msg [i915]] GT0: GUC: Got context reset notification: 0x1002 on rcs0, exiting = no, banned = no
> <6> [314.777958] i915 0000:00:02.0: [drm] GPU HANG: ecode 12:0:00000000
> <6> [314.792928] Verifying after bcs0 reset...
> <3> [325.082480] i915/intel_workarounds_live_selftests: live_engine_reset_workarounds failed with error -62
>
> could you please help to understand what is going on here?

Looks like this is a known bug and has been failing for months - 
https://gitlab.freedesktop.org/drm/intel/-/issues/6763

Thanks,

Vinay.

>
> Thanks,
> Rodrigo.
>
>>                                                                                  
>>     Thanks,
>>                                                                                  
>>     Vinay.
>>                                                                                  
>> Known issues
>>                                                                                  
>>     Here are the changes found in Patchwork_121150v3_full that come from known
>>     issues:
>>                                                                                  
>>    IGT changes
>>                                                                                  
>>      Issues hit
>>                                                                                  
>>       • igt@drm_fdinfo@virtual-busy:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [4]SKIP ([5]i915#8414)
>>                                                                                  
>>       • igt@gem_ccs@ctrl-surf-copy-new-ctx:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [6]SKIP ([7]i915#5325)
>>                                                                                  
>>       • igt@gem_ctx_isolation@preservation-s3@rcs0:
>>                                                                                  
>>          ◦ shard-apl: [8]PASS -> [9]ABORT ([10]i915#180)
>>                                                                                  
>>       • igt@gem_ctx_persistence@legacy-engines-queued:
>>                                                                                  
>>          ◦ shard-snb: NOTRUN -> [11]SKIP ([12]fdo#109271 / [13]i915#1099) +4
>>            similar issues
>>                                                                                  
>>       • igt@gem_eio@in-flight-suspend:
>>                                                                                  
>>          ◦ shard-dg2: [14]PASS -> [15]FAIL ([16]fdo#103375)
>>                                                                                  
>>       • igt@gem_eio@kms:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [17]FAIL ([18]i915#5784)
>>                                                                                  
>>       • igt@gem_exec_await@wide-contexts:
>>                                                                                  
>>          ◦ shard-dg2: [19]PASS -> [20]FAIL ([21]i915#5892)
>>                                                                                  
>>       • igt@gem_exec_capture@capture@bcs0-smem:
>>                                                                                  
>>          ◦ shard-mtlp: [22]PASS -> [23]TIMEOUT ([24]i915#7941)
>>                                                                                  
>>       • igt@gem_exec_fair@basic-pace@rcs0:
>>                                                                                  
>>          ◦ shard-rkl: [25]PASS -> [26]FAIL ([27]i915#2842)
>>                                                                                  
>>       • igt@gem_exec_fair@basic-throttle:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [28]SKIP ([29]i915#3539)
>>                                                                                  
>>       • igt@gem_exec_flush@basic-wb-rw-before-default:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [30]SKIP ([31]i915#3539 / [32]i915#4852)
>>                                                                                  
>>       • igt@gem_exec_reloc@basic-cpu-wc-active:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [33]SKIP ([34]i915#3281) +1 similar issue
>>                                                                                  
>>       • igt@gem_exec_reloc@basic-wc-read-active:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [35]SKIP ([36]i915#3281)
>>                                                                                  
>>       • igt@gem_exec_schedule@preempt-queue-contexts:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [37]SKIP ([38]i915#4812)
>>                                                                                  
>>       • igt@gem_fenced_exec_thrash@no-spare-fences:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [39]SKIP ([40]i915#4860)
>>                                                                                  
>>       • igt@gem_lmem_swapping@smem-oom:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [41]SKIP ([42]i915#4613)
>>                                                                                  
>>       • igt@gem_mmap@short-mmap:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [43]SKIP ([44]i915#4083)
>>                                                                                  
>>       • igt@gem_mmap_gtt@basic-read-write:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [45]SKIP ([46]i915#4077)
>>                                                                                  
>>       • igt@gem_mmap_gtt@cpuset-big-copy-xy:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [47]SKIP ([48]i915#4077)
>>                                                                                  
>>       • igt@gem_readwrite@read-write:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [49]SKIP ([50]i915#3282)
>>                                                                                  
>>       • igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [51]SKIP ([52]i915#8428) +1 similar issue
>>                                                                                  
>>       • igt@gem_softpin@evict-snoop:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [53]SKIP ([54]i915#4885)
>>                                                                                  
>>       • igt@gem_userptr_blits@forbidden-operations:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [55]SKIP ([56]i915#3282)
>>                                                                                  
>>       • igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [57]SKIP ([58]i915#3297 / [59]i915#4880)
>>                                                                                  
>>       • igt@gen9_exec_parse@basic-rejected-ctx-param:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [60]SKIP ([61]i915#2527)
>>                                                                                  
>>       • igt@i915_pm_dc@dc6-dpms:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [62]SKIP ([63]i915#3361)
>>                                                                                  
>>       • igt@i915_pm_dc@dc9-dpms:
>>                                                                                  
>>          ◦ shard-tglu: [64]PASS -> [65]SKIP ([66]i915#4281)
>>                                                                                  
>>       • igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>>                                                                                  
>>          ◦ shard-rkl: [67]PASS -> [68]SKIP ([69]i915#1937)
>>                                                                                  
>>       • igt@i915_pm_lpsp@screens-disabled:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [70]SKIP ([71]i915#1902)
>>                                                                                  
>>       • igt@i915_pm_rpm@basic-pci-d3-state:
>>                                                                                  
>>          ◦ shard-dg1: [72]PASS -> [73]FAIL ([74]i915#7691)
>>                                                                                  
>>       • igt@i915_pm_rpm@dpms-lpsp:
>>                                                                                  
>>          ◦ shard-dg1: [75]PASS -> [76]SKIP ([77]i915#1397) +1 similar issue
>>                                                                                  
>>       • igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:
>>                                                                                  
>>          ◦ shard-tglu: [78]PASS -> [79]FAIL ([80]i915#7940)
>>                                                                                  
>>       • igt@i915_pm_rpm@i2c:
>>                                                                                  
>>          ◦ shard-dg2: [81]PASS -> [82]FAIL ([83]i915#8717)
>>                                                                                  
>>       • igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [84]SKIP ([85]i915#5190)
>>                                                                                  
>>       • igt@kms_addfb_basic@basic-x-tiled-legacy:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [86]SKIP ([87]i915#4212)
>>                                                                                  
>>       • igt@kms_async_flips@crc@pipe-b-hdmi-a-1:
>>                                                                                  
>>          ◦ shard-dg2: NOTRUN -> [88]FAIL ([89]i915#8247) +3 similar issues
>>                                                                                  
>>       • igt@kms_async_flips@crc@pipe-d-hdmi-a-4:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [90]FAIL ([91]i915#8247) +3 similar issues
>>                                                                                  
>>       • igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>>                                                                                  
>>          ◦ shard-snb: NOTRUN -> [92]SKIP ([93]fdo#109271 / [94]i915#1769)
>>                                                                                  
>>       • igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>>                                                                                  
>>          ◦ shard-mtlp: [95]PASS -> [96]FAIL ([97]i915#5138)
>>                                                                                  
>>       • igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>>                                                                                  
>>          ◦ shard-mtlp: [98]PASS -> [99]FAIL ([100]i915#3743) +1 similar issue
>>                                                                                  
>>       • igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [101]SKIP ([102]fdo#111614)
>>                                                                                  
>>       • igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [103]SKIP ([104]i915#3638)
>>                                                                                  
>>       • igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [105]SKIP ([106]fdo#111615)
>>                                                                                  
>>       • igt@kms_big_joiner@basic:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [107]SKIP ([108]i915#2705)
>>                                                                                  
>>       • igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_rc_ccs:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [109]SKIP ([110]i915#6095) +4 similar issues
>>                                                                                  
>>       • igt@kms_ccs@pipe-b-bad-aux-stride-yf_tiled_ccs:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [111]SKIP ([112]i915#3689 / [113]i915#5354 /
>>            [114]i915#6095) +2 similar issues
>>                                                                                  
>>       • igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [115]SKIP ([116]i915#3689 / [117]i915#3886 /
>>            [118]i915#5354 / [119]i915#6095)
>>                                                                                  
>>       • igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [120]SKIP ([121]i915#3886 / [122]i915#6095)
>>            +1 similar issue
>>                                                                                  
>>       • igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [123]SKIP ([124]i915#5354 / [125]i915#6095) +3
>>            similar issues
>>                                                                                  
>>       • igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
>>                                                                                  
>>          ◦ shard-dg2: NOTRUN -> [126]SKIP ([127]i915#7213) +3 similar issues
>>                                                                                  
>>       • igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>>                                                                                  
>>          ◦ shard-dg2: NOTRUN -> [128]SKIP ([129]i915#4087) +3 similar issues
>>                                                                                  
>>       • igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [130]SKIP ([131]i915#7828) +1 similar issue
>>                                                                                  
>>       • igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [132]SKIP ([133]i915#7828) +2 similar issues
>>                                                                                  
>>       • igt@kms_content_protection@dp-mst-type-1:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [134]SKIP ([135]i915#3299)
>>                                                                                  
>>       • igt@kms_content_protection@lic@pipe-a-dp-4:
>>                                                                                  
>>          ◦ shard-dg2: NOTRUN -> [136]TIMEOUT ([137]i915#7173)
>>                                                                                  
>>       • igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [138]SKIP ([139]i915#3555)
>>                                                                                  
>>       • igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [140]FAIL ([141]fdo#103375)
>>                                                                                  
>>       • igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
>>                                                                                  
>>          ◦ shard-mtlp: [142]PASS -> [143]FAIL ([144]i915#8248)
>>                                                                                  
>>       • igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>>                                                                                  
>>          ◦ shard-snb: NOTRUN -> [145]SKIP ([146]fdo#109271 / [147]fdo#111767)
>>                                                                                  
>>       • igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [148]FAIL ([149]i915#2346)
>>                                                                                  
>>       • igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>>                                                                                  
>>          ◦ shard-apl: [150]PASS -> [151]FAIL ([152]i915#2346)
>>                                                                                  
>>       • igt@kms_dsc@dsc-with-output-formats:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [153]SKIP ([154]i915#3555 / [155]i915#3840)
>>                                                                                  
>>       • igt@kms_flip@2x-flip-vs-suspend-interruptible:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [156]SKIP ([157]i915#3637)
>>                                                                                  
>>       • igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>>                                                                                  
>>          ◦ shard-snb: NOTRUN -> [158]DMESG-WARN ([159]i915#8841) +1 similar
>>            issue
>>                                                                                  
>>       • igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [160]SKIP ([161]i915#2672)
>>                                                                                  
>>       • igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [162]SKIP ([163]i915#8708) +3 similar issues
>>                                                                                  
>>       • igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [164]SKIP ([165]fdo#111825) +8 similar issues
>>                                                                                  
>>       • igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [166]SKIP ([167]i915#1825) +8 similar issues
>>                                                                                  
>>       • igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [168]SKIP ([169]i915#3458) +2 similar issues
>>                                                                                  
>>       • igt@kms_hdr@static-swap:
>>                                                                                  
>>          ◦ shard-dg2: NOTRUN -> [170]SKIP ([171]i915#3555 / [172]i915#8228)
>>                                                                                  
>>       • igt@kms_plane@pixel-format@pipe-b-planes:
>>                                                                                  
>>          ◦ shard-mtlp: [173]PASS -> [174]FAIL ([175]i915#1623)
>>                                                                                  
>>       • igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2:
>>                                                                                  
>>          ◦ shard-rkl: NOTRUN -> [176]SKIP ([177]i915#5176) +5 similar issues
>>                                                                                  
>>       • igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [178]SKIP ([179]i915#5176) +15 similar issues
>>                                                                                  
>>       • igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-hdmi-a-1:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [180]SKIP ([181]i915#5235) +3 similar issues
>>                                                                                  
>>       • igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:
>>                                                                                  
>>          ◦ shard-dg2: NOTRUN -> [182]SKIP ([183]i915#5235) +7 similar issues
>>                                                                                  
>>       • igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:
>>                                                                                  
>>          ◦ shard-snb: NOTRUN -> [184]SKIP ([185]fdo#109271) +278 similar
>>            issues
>>                                                                                  
>>       • igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2:
>>                                                                                  
>>          ◦ shard-rkl: NOTRUN -> [186]SKIP ([187]i915#5235) +7 similar issues
>>                                                                                  
>>       • igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [188]SKIP ([189]i915#5235) +3 similar issues
>>                                                                                  
>>       • igt@kms_psr@dpms:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [190]SKIP ([191]i915#1072)
>>                                                                                  
>>       • igt@kms_vblank@pipe-c-wait-busy-hang:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [192]SKIP ([193]i915#6768)
>>                                                                                  
>>       • igt@v3d/v3d_submit_cl@single-in-sync:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [194]SKIP ([195]i915#2575)
>>                                                                                  
>>       • igt@v3d/v3d_submit_csd@job-perfmon:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [196]SKIP ([197]i915#2575) +3 similar issues
>>                                                                                  
>>       • igt@vc4/vc4_tiling@get-bad-flags:
>>                                                                                  
>>          ◦ shard-dg1: NOTRUN -> [198]SKIP ([199]i915#7711)
>>                                                                                  
>>       • igt@vc4/vc4_tiling@set-bad-flags:
>>                                                                                  
>>          ◦ shard-mtlp: NOTRUN -> [200]SKIP ([201]i915#7711)
>>                                                                                  
>>      Possible fixes
>>                                                                                  
>>       • igt@gem_ctx_exec@basic-nohangcheck:
>>                                                                                  
>>          ◦ shard-tglu: [202]FAIL ([203]i915#6268) -> [204]PASS
>>                                                                                  
>>       • {igt@gem_ctx_freq@sysfs@gt0}:
>>                                                                                  
>>          ◦ shard-dg2: [205]FAIL ([206]i915#6786) -> [207]PASS
>>                                                                                  
>>       • igt@gem_ctx_isolation@preservation-s3@vecs0:
>>                                                                                  
>>          ◦ shard-apl: [208]ABORT ([209]i915#180) -> [210]PASS
>>                                                                                  
>>       • igt@gem_eio@hibernate:
>>                                                                                  
>>          ◦ shard-dg1: [211]ABORT ([212]i915#4391 / [213]i915#7975 /
>>            [214]i915#8213) -> [215]PASS
>>                                                                                  
>>       • igt@gem_eio@unwedge-stress:
>>                                                                                  
>>          ◦ shard-dg1: [216]FAIL ([217]i915#5784) -> [218]PASS
>>                                                                                  
>>       • igt@gem_exec_capture@pi@vcs0:
>>                                                                                  
>>          ◦ shard-mtlp: [219]FAIL ([220]i915#4475) -> [221]PASS
>>                                                                                  
>>       • igt@gem_exec_capture@pi@vcs1:
>>                                                                                  
>>          ◦ shard-mtlp: [222]DMESG-WARN ([223]i915#8504) -> [224]PASS
>>                                                                                  
>>       • igt@gem_exec_fair@basic-pace-share@rcs0:
>>                                                                                  
>>          ◦ shard-rkl: [225]FAIL ([226]i915#2842) -> [227]PASS
>>                                                                                  
>>       • igt@i915_module_load@reload-with-fault-injection:
>>                                                                                  
>>          ◦ shard-dg2: [228]DMESG-WARN ([229]i915#7061 / [230]i915#8617) ->
>>            [231]PASS
>>                                                                                  
>>       • igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>>                                                                                  
>>          ◦ shard-dg1: [232]FAIL ([233]i915#3591) -> [234]PASS +2 similar
>>            issues
>>                                                                                  
>>       • igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:
>>                                                                                  
>>          ◦ shard-dg1: [235]FAIL ([236]i915#7940) -> [237]PASS
>>                                                                                  
>>       • igt@i915_pm_rpm@modeset-lpsp-stress:
>>                                                                                  
>>          ◦ shard-dg1: [238]SKIP ([239]i915#1397) -> [240]PASS
>>                                                                                  
>>       • igt@i915_pm_rpm@modeset-non-lpsp:
>>                                                                                  
>>          ◦ shard-dg2: [241]SKIP ([242]i915#1397) -> [243]PASS
>>                                                                                  
>>       • igt@i915_pm_rpm@modeset-non-lpsp-stress:
>>                                                                                  
>>          ◦ shard-rkl: [244]SKIP ([245]i915#1397) -> [246]PASS +2 similar
>>            issues
>>                                                                                  
>>       • igt@i915_pm_rpm@pm-caching:
>>                                                                                  
>>          ◦ shard-tglu: [247]FAIL ([248]i915#7940) -> [249]PASS +1 similar
>>            issue
>>                                                                                  
>>       • igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>>                                                                                  
>>          ◦ shard-mtlp: [250]FAIL ([251]i915#3743) -> [252]PASS
>>                                                                                  
>>       • igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>>                                                                                  
>>          ◦ shard-glk: [253]FAIL ([254]i915#2346) -> [255]PASS
>>                                                                                  
>>       • igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
>>                                                                                  
>>          ◦ shard-glk: [256]FAIL ([257]i915#2122) -> [258]PASS
>>                                                                                  
>>       • igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
>>                                                                                  
>>          ◦ shard-apl: [259]FAIL ([260]i915#79) -> [261]PASS
>>                                                                                  
>>       • igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>>                                                                                  
>>          ◦ shard-dg2: [262]FAIL ([263]i915#6880) -> [264]PASS
>>                                                                                  
>>       • igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>>                                                                                  
>>          ◦ shard-dg2: [265]FAIL ([266]fdo#103375) -> [267]PASS +2 similar
>>            issues
>>                                                                                  
>>       • igt@perf_pmu@busy-double-start@vecs1:
>>                                                                                  
>>          ◦ shard-dg2: [268]FAIL ([269]i915#4349) -> [270]PASS +3 similar
>>            issues
>>                                                                                  
>>      Warnings
>>                                                                                  
>>       • igt@gem_exec_whisper@basic-contexts-forked-all:
>>                                                                                  
>>          ◦ shard-mtlp: [271]ABORT ([272]i915#8131) -> [273]TIMEOUT
>>            ([274]i915#8628)
>>                                                                                  
>>       • igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>>                                                                                  
>>          ◦ shard-tglu: [275]FAIL ([276]i915#2681 / [277]i915#3591) ->
>>            [278]WARN ([279]i915#2681)
>>                                                                                  
>>       • igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>>                                                                                  
>>          ◦ shard-dg1: [280]SKIP ([281]i915#1397) -> [282]FAIL ([283]i915#7940)
>>                                                                                  
>>       • igt@i915_pm_rpm@i2c:
>>                                                                                  
>>          ◦ shard-dg1: [284]DMESG-WARN ([285]i915#4391) -> [286]DMESG-WARN
>>            ([287]i915#4391 / [288]i915#4423)
>>                                                                                  
>>       • igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>>                                                                                  
>>          ◦ shard-mtlp: [289]DMESG-FAIL ([290]i915#2017 / [291]i915#5954) ->
>>            [292]FAIL ([293]i915#2346)
>>                                                                                  
>>       • igt@kms_fbcon_fbt@psr:
>>                                                                                  
>>          ◦ shard-rkl: [294]SKIP ([295]fdo#110189 / [296]i915#3955) ->
>>            [297]SKIP ([298]i915#3955)
>>                                                                                  
>>       • igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>>                                                                                  
>>          ◦ shard-rkl: [299]SKIP ([300]i915#4070 / [301]i915#4816) -> [302]SKIP
>>            ([303]i915#4816)
>>                                                                                  
>>       • igt@kms_psr@sprite_plane_onoff:
>>                                                                                  
>>          ◦ shard-dg1: [304]SKIP ([305]i915#1072 / [306]i915#4078) -> [307]SKIP
>>            ([308]i915#1072)
>>                                                                                  
>>       • igt@sysfs_timeslice_duration@timeout@vecs0:
>>                                                                                  
>>          ◦ shard-mtlp: [309]ABORT ([310]i915#8521) -> [311]TIMEOUT
>>            ([312]i915#6950)
>>                                                                                  
>>     {name}: This element is suppressed. This means it is ignored when
>>     computing
>>     the status of the difference (SUCCESS, WARNING, or FAILURE).
>>                                                                                  
>> Build changes
>>                                                                                  
>>       • Linux: CI_DRM_13432 -> Patchwork_121150v3
>>                                                                                  
>>     CI-20190529: 20190529
>>     CI_DRM_13432: 069a79d6af09879060345da9f8b886a73b7810a8 @
>>     git://anongit.freedesktop.org/gfx-ci/linux
>>     IGT_7406: 1d6fd796607099d189e85d1fd305160363b961f2 @
>>     [313]https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>>     Patchwork_121150v3: 069a79d6af09879060345da9f8b886a73b7810a8 @
>>     git://anongit.freedesktop.org/gfx-ci/linux
>>     piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
>>     git://anongit.freedesktop.org/piglit
>>
>> References
>>
>>     Visible links
>>     1. https://patchwork.freedesktop.org/series/121150/
>>     2. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/index.html
>>     3. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-7/igt@sysfs_timeslice_duration@invalid.html
>>     4. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@drm_fdinfo@virtual-busy.html
>>     5. https://gitlab.freedesktop.org/drm/intel/issues/8414
>>     6. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>>     7. https://gitlab.freedesktop.org/drm/intel/issues/5325
>>     8. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-apl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>>     9. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-apl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>>    10. https://gitlab.freedesktop.org/drm/intel/issues/180
>>    11. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-snb6/igt@gem_ctx_persistence@legacy-engines-queued.html
>>    12. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>>    13. https://gitlab.freedesktop.org/drm/intel/issues/1099
>>    14. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg2-3/igt@gem_eio@in-flight-suspend.html
>>    15. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-5/igt@gem_eio@in-flight-suspend.html
>>    16. https://bugs.freedesktop.org/show_bug.cgi?id=103375
>>    17. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@gem_eio@kms.html
>>    18. https://gitlab.freedesktop.org/drm/intel/issues/5784
>>    19. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg2-6/igt@gem_exec_await@wide-contexts.html
>>    20. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-8/igt@gem_exec_await@wide-contexts.html
>>    21. https://gitlab.freedesktop.org/drm/intel/issues/5892
>>    22. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-mtlp-5/igt@gem_exec_capture@capture@bcs0-smem.html
>>    23. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-7/igt@gem_exec_capture@capture@bcs0-smem.html
>>    24. https://gitlab.freedesktop.org/drm/intel/issues/7941
>>    25. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html
>>    26. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html
>>    27. https://gitlab.freedesktop.org/drm/intel/issues/2842
>>    28. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@gem_exec_fair@basic-throttle.html
>>    29. https://gitlab.freedesktop.org/drm/intel/issues/3539
>>    30. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@gem_exec_flush@basic-wb-rw-before-default.html
>>    31. https://gitlab.freedesktop.org/drm/intel/issues/3539
>>    32. https://gitlab.freedesktop.org/drm/intel/issues/4852
>>    33. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@gem_exec_reloc@basic-cpu-wc-active.html
>>    34. https://gitlab.freedesktop.org/drm/intel/issues/3281
>>    35. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@gem_exec_reloc@basic-wc-read-active.html
>>    36. https://gitlab.freedesktop.org/drm/intel/issues/3281
>>    37. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@gem_exec_schedule@preempt-queue-contexts.html
>>    38. https://gitlab.freedesktop.org/drm/intel/issues/4812
>>    39. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@gem_fenced_exec_thrash@no-spare-fences.html
>>    40. https://gitlab.freedesktop.org/drm/intel/issues/4860
>>    41. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-5/igt@gem_lmem_swapping@smem-oom.html
>>    42. https://gitlab.freedesktop.org/drm/intel/issues/4613
>>    43. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@gem_mmap@short-mmap.html
>>    44. https://gitlab.freedesktop.org/drm/intel/issues/4083
>>    45. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@gem_mmap_gtt@basic-read-write.html
>>    46. https://gitlab.freedesktop.org/drm/intel/issues/4077
>>    47. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
>>    48. https://gitlab.freedesktop.org/drm/intel/issues/4077
>>    49. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-5/igt@gem_readwrite@read-write.html
>>    50. https://gitlab.freedesktop.org/drm/intel/issues/3282
>>    51. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-5/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
>>    52. https://gitlab.freedesktop.org/drm/intel/issues/8428
>>    53. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@gem_softpin@evict-snoop.html
>>    54. https://gitlab.freedesktop.org/drm/intel/issues/4885
>>    55. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@gem_userptr_blits@forbidden-operations.html
>>    56. https://gitlab.freedesktop.org/drm/intel/issues/3282
>>    57. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
>>    58. https://gitlab.freedesktop.org/drm/intel/issues/3297
>>    59. https://gitlab.freedesktop.org/drm/intel/issues/4880
>>    60. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@gen9_exec_parse@basic-rejected-ctx-param.html
>>    61. https://gitlab.freedesktop.org/drm/intel/issues/2527
>>    62. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@i915_pm_dc@dc6-dpms.html
>>    63. https://gitlab.freedesktop.org/drm/intel/issues/3361
>>    64. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-tglu-10/igt@i915_pm_dc@dc9-dpms.html
>>    65. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-tglu-7/igt@i915_pm_dc@dc9-dpms.html
>>    66. https://gitlab.freedesktop.org/drm/intel/issues/4281
>>    67. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>>    68. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-rkl-6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>>    69. https://gitlab.freedesktop.org/drm/intel/issues/1937
>>    70. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@i915_pm_lpsp@screens-disabled.html
>>    71. https://gitlab.freedesktop.org/drm/intel/issues/1902
>>    72. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg1-19/igt@i915_pm_rpm@basic-pci-d3-state.html
>>    73. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-14/igt@i915_pm_rpm@basic-pci-d3-state.html
>>    74. https://gitlab.freedesktop.org/drm/intel/issues/7691
>>    75. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html
>>    76. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-18/igt@i915_pm_rpm@dpms-lpsp.html
>>    77. https://gitlab.freedesktop.org/drm/intel/issues/1397
>>    78. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-tglu-9/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
>>    79. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-tglu-4/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
>>    80. https://gitlab.freedesktop.org/drm/intel/issues/7940
>>    81. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg2-1/igt@i915_pm_rpm@i2c.html
>>    82. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-2/igt@i915_pm_rpm@i2c.html
>>    83. https://gitlab.freedesktop.org/drm/intel/issues/8717
>>    84. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>>    85. https://gitlab.freedesktop.org/drm/intel/issues/5190
>>    86. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@kms_addfb_basic@basic-x-tiled-legacy.html
>>    87. https://gitlab.freedesktop.org/drm/intel/issues/4212
>>    88. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-10/igt@kms_async_flips@crc@pipe-b-hdmi-a-1.html
>>    89. https://gitlab.freedesktop.org/drm/intel/issues/8247
>>    90. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-14/igt@kms_async_flips@crc@pipe-d-hdmi-a-4.html
>>    91. https://gitlab.freedesktop.org/drm/intel/issues/8247
>>    92. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-snb6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>>    93. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>>    94. https://gitlab.freedesktop.org/drm/intel/issues/1769
>>    95. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>>    96. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>>    97. https://gitlab.freedesktop.org/drm/intel/issues/5138
>>    98. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
>>    99. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
>>   100. https://gitlab.freedesktop.org/drm/intel/issues/3743
>>   101. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
>>   102. https://bugs.freedesktop.org/show_bug.cgi?id=111614
>>   103. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
>>   104. https://gitlab.freedesktop.org/drm/intel/issues/3638
>>   105. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>>   106. https://bugs.freedesktop.org/show_bug.cgi?id=111615
>>   107. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@kms_big_joiner@basic.html
>>   108. https://gitlab.freedesktop.org/drm/intel/issues/2705
>>   109. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_dg2_rc_ccs.html
>>   110. https://gitlab.freedesktop.org/drm/intel/issues/6095
>>   111. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@kms_ccs@pipe-b-bad-aux-stride-yf_tiled_ccs.html
>>   112. https://gitlab.freedesktop.org/drm/intel/issues/3689
>>   113. https://gitlab.freedesktop.org/drm/intel/issues/5354
>>   114. https://gitlab.freedesktop.org/drm/intel/issues/6095
>>   115. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
>>   116. https://gitlab.freedesktop.org/drm/intel/issues/3689
>>   117. https://gitlab.freedesktop.org/drm/intel/issues/3886
>>   118. https://gitlab.freedesktop.org/drm/intel/issues/5354
>>   119. https://gitlab.freedesktop.org/drm/intel/issues/6095
>>   120. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
>>   121. https://gitlab.freedesktop.org/drm/intel/issues/3886
>>   122. https://gitlab.freedesktop.org/drm/intel/issues/6095
>>   123. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs.html
>>   124. https://gitlab.freedesktop.org/drm/intel/issues/5354
>>   125. https://gitlab.freedesktop.org/drm/intel/issues/6095
>>   126. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html
>>   127. https://gitlab.freedesktop.org/drm/intel/issues/7213
>>   128. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
>>   129. https://gitlab.freedesktop.org/drm/intel/issues/4087
>>   130. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-5/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
>>   131. https://gitlab.freedesktop.org/drm/intel/issues/7828
>>   132. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
>>   133. https://gitlab.freedesktop.org/drm/intel/issues/7828
>>   134. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-5/igt@kms_content_protection@dp-mst-type-1.html
>>   135. https://gitlab.freedesktop.org/drm/intel/issues/3299
>>   136. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-11/igt@kms_content_protection@lic@pipe-a-dp-4.html
>>   137. https://gitlab.freedesktop.org/drm/intel/issues/7173
>>   138. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
>>   139. https://gitlab.freedesktop.org/drm/intel/issues/3555
>>   140. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.html
>>   141. https://bugs.freedesktop.org/show_bug.cgi?id=103375
>>   142. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-mtlp-7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
>>   143. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
>>   144. https://gitlab.freedesktop.org/drm/intel/issues/8248
>>   145. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
>>   146. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>>   147. https://bugs.freedesktop.org/show_bug.cgi?id=111767
>>   148. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>>   149. https://gitlab.freedesktop.org/drm/intel/issues/2346
>>   150. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>>   151. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>>   152. https://gitlab.freedesktop.org/drm/intel/issues/2346
>>   153. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@kms_dsc@dsc-with-output-formats.html
>>   154. https://gitlab.freedesktop.org/drm/intel/issues/3555
>>   155. https://gitlab.freedesktop.org/drm/intel/issues/3840
>>   156. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
>>   157. https://gitlab.freedesktop.org/drm/intel/issues/3637
>>   158. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-snb1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
>>   159. https://gitlab.freedesktop.org/drm/intel/issues/8841
>>   160. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-default-mode.html
>>   161. https://gitlab.freedesktop.org/drm/intel/issues/2672
>>   162. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html
>>   163. https://gitlab.freedesktop.org/drm/intel/issues/8708
>>   164. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html
>>   165. https://bugs.freedesktop.org/show_bug.cgi?id=111825
>>   166. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
>>   167. https://gitlab.freedesktop.org/drm/intel/issues/1825
>>   168. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
>>   169. https://gitlab.freedesktop.org/drm/intel/issues/3458
>>   170. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-7/igt@kms_hdr@static-swap.html
>>   171. https://gitlab.freedesktop.org/drm/intel/issues/3555
>>   172. https://gitlab.freedesktop.org/drm/intel/issues/8228
>>   173. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-mtlp-3/igt@kms_plane@pixel-format@pipe-b-planes.html
>>   174. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-7/igt@kms_plane@pixel-format@pipe-b-planes.html
>>   175. https://gitlab.freedesktop.org/drm/intel/issues/1623
>>   176. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2.html
>>   177. https://gitlab.freedesktop.org/drm/intel/issues/5176
>>   178. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-16/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html
>>   179. https://gitlab.freedesktop.org/drm/intel/issues/5176
>>   180. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-hdmi-a-1.html
>>   181. https://gitlab.freedesktop.org/drm/intel/issues/5235
>>   182. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3.html
>>   183. https://gitlab.freedesktop.org/drm/intel/issues/5235
>>   184. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-snb7/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html
>>   185. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>>   186. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html
>>   187. https://gitlab.freedesktop.org/drm/intel/issues/5235
>>   188. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1.html
>>   189. https://gitlab.freedesktop.org/drm/intel/issues/5235
>>   190. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@kms_psr@dpms.html
>>   191. https://gitlab.freedesktop.org/drm/intel/issues/1072
>>   192. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@kms_vblank@pipe-c-wait-busy-hang.html
>>   193. https://gitlab.freedesktop.org/drm/intel/issues/6768
>>   194. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@v3d/v3d_submit_cl@single-in-sync.html
>>   195. https://gitlab.freedesktop.org/drm/intel/issues/2575
>>   196. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-5/igt@v3d/v3d_submit_csd@job-perfmon.html
>>   197. https://gitlab.freedesktop.org/drm/intel/issues/2575
>>   198. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@vc4/vc4_tiling@get-bad-flags.html
>>   199. https://gitlab.freedesktop.org/drm/intel/issues/7711
>>   200. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-5/igt@vc4/vc4_tiling@set-bad-flags.html
>>   201. https://gitlab.freedesktop.org/drm/intel/issues/7711
>>   202. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html
>>   203. https://gitlab.freedesktop.org/drm/intel/issues/6268
>>   204. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html
>>   205. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html
>>   206. https://gitlab.freedesktop.org/drm/intel/issues/6786
>>   207. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html
>>   208. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-apl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>>   209. https://gitlab.freedesktop.org/drm/intel/issues/180
>>   210. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-apl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>>   211. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg1-14/igt@gem_eio@hibernate.html
>>   212. https://gitlab.freedesktop.org/drm/intel/issues/4391
>>   213. https://gitlab.freedesktop.org/drm/intel/issues/7975
>>   214. https://gitlab.freedesktop.org/drm/intel/issues/8213
>>   215. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-15/igt@gem_eio@hibernate.html
>>   216. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg1-16/igt@gem_eio@unwedge-stress.html
>>   217. https://gitlab.freedesktop.org/drm/intel/issues/5784
>>   218. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-17/igt@gem_eio@unwedge-stress.html
>>   219. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-mtlp-2/igt@gem_exec_capture@pi@vcs0.html
>>   220. https://gitlab.freedesktop.org/drm/intel/issues/4475
>>   221. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-4/igt@gem_exec_capture@pi@vcs0.html
>>   222. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-mtlp-2/igt@gem_exec_capture@pi@vcs1.html
>>   223. https://gitlab.freedesktop.org/drm/intel/issues/8504
>>   224. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-4/igt@gem_exec_capture@pi@vcs1.html
>>   225. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>>   226. https://gitlab.freedesktop.org/drm/intel/issues/2842
>>   227. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-rkl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>>   228. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html
>>   229. https://gitlab.freedesktop.org/drm/intel/issues/7061
>>   230. https://gitlab.freedesktop.org/drm/intel/issues/8617
>>   231. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
>>   232. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>>   233. https://gitlab.freedesktop.org/drm/intel/issues/3591
>>   234. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>>   235. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg1-17/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
>>   236. https://gitlab.freedesktop.org/drm/intel/issues/7940
>>   237. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-18/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
>>   238. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg1-17/igt@i915_pm_rpm@modeset-lpsp-stress.html
>>   239. https://gitlab.freedesktop.org/drm/intel/issues/1397
>>   240. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp-stress.html
>>   241. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp.html
>>   242. https://gitlab.freedesktop.org/drm/intel/issues/1397
>>   243. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-8/igt@i915_pm_rpm@modeset-non-lpsp.html
>>   244. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>>   245. https://gitlab.freedesktop.org/drm/intel/issues/1397
>>   246. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-rkl-6/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>>   247. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-tglu-2/igt@i915_pm_rpm@pm-caching.html
>>   248. https://gitlab.freedesktop.org/drm/intel/issues/7940
>>   249. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-tglu-8/igt@i915_pm_rpm@pm-caching.html
>>   250. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>>   251. https://gitlab.freedesktop.org/drm/intel/issues/3743
>>   252. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>>   253. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>>   254. https://gitlab.freedesktop.org/drm/intel/issues/2346
>>   255. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>>   256. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
>>   257. https://gitlab.freedesktop.org/drm/intel/issues/2122
>>   258. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
>>   259. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
>>   260. https://gitlab.freedesktop.org/drm/intel/issues/79
>>   261. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
>>   262. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>>   263. https://gitlab.freedesktop.org/drm/intel/issues/6880
>>   264. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>>   265. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg2-5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>>   266. https://bugs.freedesktop.org/show_bug.cgi?id=103375
>>   267. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-11/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>>   268. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg2-2/igt@perf_pmu@busy-double-start@vecs1.html
>>   269. https://gitlab.freedesktop.org/drm/intel/issues/4349
>>   270. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
>>   271. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-mtlp-3/igt@gem_exec_whisper@basic-contexts-forked-all.html
>>   272. https://gitlab.freedesktop.org/drm/intel/issues/8131
>>   273. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-5/igt@gem_exec_whisper@basic-contexts-forked-all.html
>>   274. https://gitlab.freedesktop.org/drm/intel/issues/8628
>>   275. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>>   276. https://gitlab.freedesktop.org/drm/intel/issues/2681
>>   277. https://gitlab.freedesktop.org/drm/intel/issues/3591
>>   278. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>>   279. https://gitlab.freedesktop.org/drm/intel/issues/2681
>>   280. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>>   281. https://gitlab.freedesktop.org/drm/intel/issues/1397
>>   282. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-18/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>>   283. https://gitlab.freedesktop.org/drm/intel/issues/7940
>>   284. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg1-19/igt@i915_pm_rpm@i2c.html
>>   285. https://gitlab.freedesktop.org/drm/intel/issues/4391
>>   286. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-18/igt@i915_pm_rpm@i2c.html
>>   287. https://gitlab.freedesktop.org/drm/intel/issues/4391
>>   288. https://gitlab.freedesktop.org/drm/intel/issues/4423
>>   289. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>>   290. https://gitlab.freedesktop.org/drm/intel/issues/2017
>>   291. https://gitlab.freedesktop.org/drm/intel/issues/5954
>>   292. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>>   293. https://gitlab.freedesktop.org/drm/intel/issues/2346
>>   294. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
>>   295. https://bugs.freedesktop.org/show_bug.cgi?id=110189
>>   296. https://gitlab.freedesktop.org/drm/intel/issues/3955
>>   297. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-rkl-4/igt@kms_fbcon_fbt@psr.html
>>   298. https://gitlab.freedesktop.org/drm/intel/issues/3955
>>   299. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>>   300. https://gitlab.freedesktop.org/drm/intel/issues/4070
>>   301. https://gitlab.freedesktop.org/drm/intel/issues/4816
>>   302. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>>   303. https://gitlab.freedesktop.org/drm/intel/issues/4816
>>   304. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-dg1-18/igt@kms_psr@sprite_plane_onoff.html
>>   305. https://gitlab.freedesktop.org/drm/intel/issues/1072
>>   306. https://gitlab.freedesktop.org/drm/intel/issues/4078
>>   307. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-dg1-14/igt@kms_psr@sprite_plane_onoff.html
>>   308. https://gitlab.freedesktop.org/drm/intel/issues/1072
>>   309. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13432/shard-mtlp-6/igt@sysfs_timeslice_duration@timeout@vecs0.html
>>   310. https://gitlab.freedesktop.org/drm/intel/issues/8521
>>   311. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121150v3/shard-mtlp-1/igt@sysfs_timeslice_duration@timeout@vecs0.html
>>   312. https://gitlab.freedesktop.org/drm/intel/issues/6950
>>   313. https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
