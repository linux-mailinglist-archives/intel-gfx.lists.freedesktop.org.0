Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D31827C67
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 02:12:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0867F10E333;
	Tue,  9 Jan 2024 01:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7459510E0B4;
 Tue,  9 Jan 2024 01:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704762747; x=1736298747;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=p3orNnwNz3ttS22pqGriiDGsJ1LrmWvZb76/M6K5gHc=;
 b=A9407Y7p+A5VPRY0U338KSddJITEWV7h3vi967yGqnr1mPMnYOkXSQCs
 sOQ3hW5eUj585s82IXF1pg5H6ycC3s7YKJ35iEZdMEwjAKje/DI8snr1i
 fdFcTzPnUvFZ2m8au+CS4++MykpwOy/BFQA08u+/PIglUUKv1u5oR3OPJ
 lpb7h9RWNpu0GWq8i0rLv95UR+A9huB26g0k6VVSOh9sQ+47HhcjaoA8M
 SHcbGZX1zzGvRFrSZnr+32I57njpi/4XQyeL/2m3NsXBWbVih22b7n/m9
 193EJ+NPv5GFtQMXfqd6zXBeWpAJdIS7Svg1L/V+Quh+3g7C1yBTYS6O0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="16644506"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="16644506"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 17:12:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="900557445"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="900557445"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2024 17:12:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 17:12:24 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Jan 2024 17:12:24 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Jan 2024 17:12:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oKKDH/krqN1LtrI8mQzHdBzmIdjwRy2eaJ/bkruC7heVDtE8ptmA4gUwkXr/3qCcTLOVkuC/dQNrip9j7bw5BZzG0x01wFMgZOetHlL05vRLG3Mmdwp50wctDfAjzDxmaMi5RrLORr8sG1Iju58srxml0uANA9fYN+Jlyy42EAC1CK+QGLrOznoGdfkSyY/yuRj5JZOUVu0DZUu6D93+kWT2qxO6+THm7Pj4CK/SsN5z+fHMFBqgVNUB9ZHv9u3vY8VWYfgiECQAKyouSo5xBznBHAdfbmhf3QrZBm5o6XCOqZd3ZPj6/azSQplk7e9+YlPpxaBEZZ9BOdRYgkzzwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pdXMZnqOzDU8uKU3F94dx8+aDGGA12jgT3QpCy6uYVo=;
 b=BKjEcIIY7NAJM9bf3hXMZsoueB7VkUbsn6KhVCelc9BIZItSA8ffg22LrXiuxfusrCYBwSitJLDBDPN6dt4u7DFafev8qdKAbzTwJ/MopTKWNoCu6yIi63Y+26jLSlLO/ELIWK6OEHMybkD/TTzJ7hfqwRDKAtNalRDYze3JvAscrN5WH2q7MFlgbXOUg/3YT8ds+a5IUjfaR34F5/gTmMBXijzYpNB8EZNcsQZFbB67EF2FNcevnVnYOCfwxgZ9wszx1k+s4ewXpJUcOkBnOhF/rqxUSYIkCjjcLUHgsv432aXw4Jbw7UVZY1axnK5SQmJkj18UKajoKs591BQR5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by BL3PR11MB5681.namprd11.prod.outlook.com (2603:10b6:208:33c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Tue, 9 Jan
 2024 01:12:14 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::e4bf:f84b:b278:8ff3]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::e4bf:f84b:b278:8ff3%4]) with mapi id 15.20.7159.020; Tue, 9 Jan 2024
 01:12:14 +0000
Message-ID: <b439f2c8-4557-4df6-a5d9-fe61076e2158@intel.com>
Date: Mon, 8 Jan 2024 17:12:12 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t] tests/perf_pmu: Restore sysfs freq in exit handler
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
References: <20240105011000.138538-1-vinay.belgaumkar@intel.com>
 <20240105113330.zyvhe33igdugsakh@kamilkon-desk.igk.intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20240105113330.zyvhe33igdugsakh@kamilkon-desk.igk.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0133.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::18) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|BL3PR11MB5681:EE_
X-MS-Office365-Filtering-Correlation-Id: 38931839-901c-44e4-47b3-08dc10b003d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M2rUs4xxdHnvEYOopQ7uoyYB0iOkoY7CUizG6PpnVQ0SgOJP62zYv3St+GGYjlZmHHSvz3Rt9WkhvyUYovtMYwaNE9ELPnJWAfRf76ONXDOgPEwQkvwOq7LBEx0dIha1/CoXv+NYNAq3nJPBLJAWhAR+FMnyheEXYyuhppkIaWdI7cIr1+26pMF26U3WwgL04YULBAJkZGEq8a1IO0apRYZBLaRDQwBCUCRjNbBljkILxVcqBYiAXAWo2ans9UdAE6/oL4YPpE9MdiaU/GOfgEx5UChfU3tFf+FtGIelJwDywlMvla/Tm0cGoTnyo6VZf6mgQBwqV40SK2cmew18HYXy0w+c5H6scdx52qpT9ah8dirfpIiZMTq2Gztf1pgbR/8OzHUNFTp+Ywql/4q5H64w/ZiftSlKAjCf7fo5BY/HuPbSKFd05TXqCuWQjtK/SGbbPaCHUy2writsKXnrAjPKhI4EsCxvIzmpWz1gY3RIHQ07J8ckYngQY+jC21vZwGdLQtbDAdBmBs3wqujK4xwTVOuxEkzOdwKGcVed8BvjiLyUYJl1K47mHWosSFiCuQKVFOz5D6rnLd/KutSl/25jXC7wITKCeGi51GYbhDV7akZKpGv8temK30jYDN2z
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(136003)(376002)(39860400002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(31686004)(83380400001)(41300700001)(66946007)(36756003)(86362001)(82960400001)(31696002)(38100700002)(26005)(2616005)(6512007)(6506007)(53546011)(966005)(6486002)(2906002)(66556008)(66476007)(316002)(478600001)(8676002)(8936002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TjUyR1l2Y2doSzRnemVhN2NjTWU3UyswSHBROWtUbC9Oakx1K00xVFFoSzVE?=
 =?utf-8?B?TVk1RkI3TmdwOTgyQnhmdGs2TEFpYzRHd3VCZ09MQ1A1V0U3ZFd6dUJTTllV?=
 =?utf-8?B?Mm4wTEtMV3NybEF1N0pQamlBTlpzcFcwSEhhTmpDcnJjbE9DQmFaRVp0dnds?=
 =?utf-8?B?V0licHJydW9ielhWUUhUamJZZ2ExM2RRSTJuTmJBZ01ZellKZXRuczFZczNh?=
 =?utf-8?B?Sjd2SEdXa0tBNGQzdlJsU3RWRGNIcGpWZG1hVGtHMTBFUWFKeG5LZ2F0WTVW?=
 =?utf-8?B?WUlCUkovdlRwcXphMkJKTzA0eGx4R2VTUnZoN1U3blM1ZEVTWFQwUXVteVdq?=
 =?utf-8?B?V0lWYkdMYzR6aDl3Q3hYVWI5aXBZZzdSV0F4aTJWM3JnY2NLejJSN01DWXlt?=
 =?utf-8?B?Z0Nia3FFVVNXWWpyb1pzOHFjVVo1ZUFEMjcyS2p4Q2pMUkFOSTdEa3pCS0xv?=
 =?utf-8?B?cFR5aklKVjVqRmlaQXNVbC9rdzBTaGxIY1lKYVJEKzB5ZGowbHRRUmRnaUpO?=
 =?utf-8?B?SlNXbVQ3Kzd0M2Uzei9IV3FRd0pxalg3b0JKTTNFckN5WDdra0V3UUJsVUtu?=
 =?utf-8?B?Q2UwanRXaHV5NnhaZHk3aTExSDR1UGtDZlRjVVFPWUZPU3lydExiQlZEaWJq?=
 =?utf-8?B?dllpRjhUUXFtbVdlbzZXWDB4Q0dVYi9ZVHhZaCtEbmpJMUJiNVNLMTdFM0lR?=
 =?utf-8?B?Zjc3UG9ZdDlha1h1S21TR2FDL2tzSERZT0lteFk3TEtzNFNnOUZhUWdQL3Q4?=
 =?utf-8?B?RFI3bFJQenhHcmJzcEZSUFYrSDBNYjB0QkFVNFFiMndMT3d6SUtQZ2JueklO?=
 =?utf-8?B?WVI5Vy9CZzJNVDhPMnVTTk1WaVc4WWFzZDV0T3lRRVVVMEhWa1RxVi94bUZC?=
 =?utf-8?B?NG5yOGI5Uzg0aHBDeHRTSFJoLzhVY1BQa1hTVVAySjJSb2pRS1R5ODZJTEtQ?=
 =?utf-8?B?ZEhIamdDUGpYVGx6SkU2YnFEL2Uzck80Z2VEU2o5K1hMMmpWdGdkMlZoYlIv?=
 =?utf-8?B?RW9LVXNUM0UxbHJwb2p1RUpDRnZVWUNoTkNKZGxianNWSXloL0R0clZYRjJL?=
 =?utf-8?B?ZkJ1Y2xvNkRhRjltNEdTbTh4U3ZKRzMzcDNZWE5lcnRGNWM3KzQxZDBIT2Zz?=
 =?utf-8?B?b3ZLbUhSdTJaTlpITWpvclJ5K21DKzdtcjJxUENNc2FxUHJkd3BZelQzb3oz?=
 =?utf-8?B?NTRSS2ZiWlM1cXpXTmJSVHY3THhSSXhjMGJuYWc1cFdaUkZMYnBuWDhobWZk?=
 =?utf-8?B?MDh2cUtoa283YjU1aVNqK1FidVhxQzFpS2tJVjlKRVRwOTVWM0g3RHBpdWo1?=
 =?utf-8?B?NkFZWHU4TEoxTVhMMHU3b0ZhZ1VySFdiUnBXc3hPQ2pEMWVEVVQ4aVhoRWJs?=
 =?utf-8?B?UDlFZmEyY2RWdTZBYy9IRUh1VlpIVlhqNEdWUEdGZmdiVFlhMDFoNFF4QW9K?=
 =?utf-8?B?ODF4bjQ0UDJaNTVSUGpDaG1hOTd1OEl0UUh5Z25XOGRYMlhuWlUzSVVJRG1O?=
 =?utf-8?B?VkM2WG9EUFdJZS9EUm1YUFJBWnp4R3EvMU44eTg2ZU1WQjlQakJQV1BLTEx4?=
 =?utf-8?B?TkFueWY5UmJNMDhoL2ZYM0FiakV6Z2FtYlFOS2hVL3NCVlIrY25tV290UFcw?=
 =?utf-8?B?UXozNkdKT2ZhTHZPbmxsVUJzU05GVzg4Q09HU3lVeXlUc1RCTGNqWWhIZU16?=
 =?utf-8?B?Q0t5S29Yb0dCcWdwSXlFNHNNdjN6Smp1dDN2dnRIZ2F3b3pnMVhGZFI4TzN3?=
 =?utf-8?B?UVRpTytiKytqK0dKb0lucEZ0YTBXenpJdlZNZkRwVlYxanNuQVNlUm5SZTdH?=
 =?utf-8?B?YUVLOXgwV2FIWmE5bkhIL1J5dTBJVE05NnRKdXBBMGZiUjh1WllYNU5uZVNz?=
 =?utf-8?B?WG9JcjBIVHFjeGxabmhGMWpIOGdaZVMwNXUyQ0xkNDk1emdOY1piZFF1WTll?=
 =?utf-8?B?ZFAwSlF0Y3dWODBBQzE3MzJtREtYRXQwdk05ZCtvSlk3RkE1ZGtwQlU3YWVj?=
 =?utf-8?B?dlROalU2V2pZT3Avc0FreW9VMmJNTXlCaU80Y3BPUEdtZHdXUWV4Mjk2cE43?=
 =?utf-8?B?UzFMQlgzLzFuMitDMlhrVTdiM2FCR2FBSTdSZ0hxN3R4MDA4ZUxteUZVQkYr?=
 =?utf-8?B?enA3cXN2Zzc3TUhqbjMvWUJoaEJxaVVFa1JuR1hFWUR2dlRhaEpVcFJsMDIy?=
 =?utf-8?B?b1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38931839-901c-44e4-47b3-08dc10b003d7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2024 01:12:14.5688 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +6dnjHg/0dv/xGb9paCkRjkXwDiyIg+G5Om27AIopvP+o2quduQ7A5MPT/DjSLrJiVLgDoq9oo2lBs743zpQLxv+BmTzSJyL81wSUc1Rom0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5681
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/5/2024 3:33 AM, Kamil Konieczny wrote:
> Hi Vinay,
> On 2024-01-04 at 17:10:00 -0800, Vinay Belgaumkar wrote:
>
> looks good, there are some nits, first about subject:
>
> [PATCH i-g-t] tests/perf_pmu: Restore sysfs freq in exit handler
>
> s!tests/perf_pmu:!tests/intel/perf_pmu:!
> Also you can drop "sysfs", so it will look:
>
> [PATCH i-g-t] tests/intel/perf_pmu: Restore freq in exit handler
>
>> Seeing random issues where this test starts with invalid values.
> Btw if issue is it starts with invalid values maybe culprit is in
> some previous test, not this one? What about setting freq values
> to defaults first? This can be done in separate patch.
>
> I looked into log from test here:
> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1438/bat-dg2-11/igt_runner10.txt
> and here:
> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1438/bat-dg2-11/igt@perf_pmu@frequency@gt0.html
>
> One more thing, why is boost < max? Is it allowed? What about
> just restore it to max (or other value?) before testing and
> skipping only when min == max? But even then it seems like
> restoring defaults should be first step before freq checks.
The only freq related test in that log is gem_ctx_freq which never 
modifies boost freq. AFAICS, this is the only test that modifies boost 
freq to be below RP0. I am thinking a previous iteration of this test 
left it in this state, not impossible I guess. Boost freq can be < max, 
it is allowed. We could "restore" to default,  but if we have exit 
handlers in place, that should never be needed.
>
> For more nits see below.
>
>> Ensure that we restore the frequencies in case test exits early
>> due to some system issues.
>>
>> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/9432
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/intel/perf_pmu.c | 53 +++++++++++++++++++++++++++++++++++++++++-
>>   1 file changed, 52 insertions(+), 1 deletion(-)
>>
>> diff --git a/tests/intel/perf_pmu.c b/tests/intel/perf_pmu.c
>> index c6e6a8b77..ceacc1d3d 100644
>> --- a/tests/intel/perf_pmu.c
>> +++ b/tests/intel/perf_pmu.c
>> @@ -2454,12 +2454,59 @@ static void pmu_read(int i915)
>>   		for_each_if((e)->class == I915_ENGINE_CLASS_RENDER) \
>>   			igt_dynamic_f("%s", e->name)
>>   
>> +int fd = -1;
>> +uint32_t *stash_min, *stash_max, *stash_boost;
>> +
>> +static void save_sysfs_freq(int i915)
>> +{
>> +	int gt, num_gts, sysfs, tmp;
>> +
>> +	num_gts = igt_sysfs_get_num_gt(i915);
>> +
>> +	stash_min = (uint32_t *)malloc(sizeof(uint32_t) * num_gts);
>> +	stash_max = (uint32_t *)malloc(sizeof(uint32_t) * num_gts);
>> +	stash_boost = (uint32_t *)malloc(sizeof(uint32_t) * num_gts);
>> +
>> +	/* Save boost, min and max across GTs */
>> +	i915_for_each_gt(i915, tmp, gt) {
>> +		sysfs = igt_sysfs_gt_open(i915, gt);
>> +		igt_require(sysfs >= 0);
>> +
>> +		stash_min[gt] = igt_sysfs_get_u32(sysfs, "rps_min_freq_mhz");
>> +		stash_max[gt] = igt_sysfs_get_u32(sysfs, "rps_max_freq_mhz");
>> +		stash_boost[gt] = igt_sysfs_get_u32(sysfs, "rps_boost_freq_mhz");
>> +		igt_debug("GT: %d, min: %d, max: %d, boost:%d\n",
>> +			  gt, stash_min[gt], stash_max[gt], stash_boost[gt]);
>> +
>> +		close(sysfs);
>> +	}
>> +}
>> +
>> +static void restore_sysfs_freq(int sig)
>> +{
>> +	int sysfs, gt, tmp;
>> +
>> +	/* Restore frequencies */
>> +	i915_for_each_gt(fd, tmp, gt) {
>> +		sysfs = igt_sysfs_gt_open(fd, gt);
>> +		igt_require(sysfs >= 0);
> --------^
> Don't use require at exit handler, better use continue.
Not sure about this. If we cannot restore, doesn't it mean there is an 
issue writing to sysfs and we should fail?
>
>> +
>> +		igt_require(__igt_sysfs_set_u32(sysfs, "rps_max_freq_mhz", stash_max[gt]));
> --------^
> Same here.
>
>> +		igt_require(__igt_sysfs_set_u32(sysfs, "rps_min_freq_mhz", stash_min[gt]));
> --------^
> Same.
>
>> +		igt_require(__igt_sysfs_set_u32(sysfs, "rps_boost_freq_mhz", stash_boost[gt]));
> --------^
> Same.
>
>> +
>> +		close(sysfs);
>> +	}
>> +	free(stash_min);
>> +	free(stash_max);
> Free also stash_boost.
ok.
>
>> +}
>> +
>>   igt_main
>>   {
>>   	const struct intel_execution_engine2 *e;
>>   	unsigned int num_engines = 0;
>>   	const intel_ctx_t *ctx = NULL;
>> -	int gt, tmp, fd = -1;
>> +	int gt, tmp;
>>   	int num_gt = 0;
>>   
>>   	/**
>> @@ -2482,6 +2529,7 @@ igt_main
>>   
>>   		i915_for_each_gt(fd, tmp, gt)
>>   			num_gt++;
>> +
> Remove this empty line.

ok, thanks,

Vinay,

>
> Regards,
> Kamil
>
>>   	}
>>   
>>   	igt_describe("Verify i915 pmu dir exists and read all events");
>> @@ -2664,6 +2712,9 @@ igt_main
>>   	 * Test GPU frequency.
>>   	 */
>>   	igt_subtest_with_dynamic("frequency") {
>> +		save_sysfs_freq(fd);
>> +		igt_install_exit_handler(restore_sysfs_freq);
>> +
>>   		i915_for_each_gt(fd, tmp, gt) {
>>   			igt_dynamic_f("gt%u", gt)
>>   				test_frequency(fd, gt);
>> -- 
>> 2.38.1
>>
