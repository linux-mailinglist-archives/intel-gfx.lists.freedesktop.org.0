Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 757884F3D1E
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 20:06:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4FA710EC1B;
	Tue,  5 Apr 2022 18:06:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 245FF10EBFD
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 18:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649181987; x=1680717987;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MVbjbuvO+Mp9pAV7eDBVbMeBKKvMD8ysxxr6GJfbBKs=;
 b=cAeNTGZOdy7s6irFJckwkicDNPHx7e4OwegrABpCuVgmoL9gF6q52NpP
 AgkF1vXL34x5QGxDhdWowVynrb1Gs90L3iyWFXJzV1FtccS01GJ2Q70o0
 okTDDoWgo6Vh2aGFco2INMXerCVtY/uDbKKLfxinbrwVClbUCOpA8IQSY
 y66I9MdonuESpfB9hQ6kdh5TjSmJHEW96WN//9D5HzzjEZMXn9BgiyXRc
 7vAw2jXcnV3NVKFeprfLlrmzuc+RJlNkoapvkqsBv0nNcOUncbKxKIVB5
 +zSK0otBrOQYPsdL/xZpXKQd3eNirP80saFs00vc19X0AZmscBJ3qO2Vn w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="248344757"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="248344757"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 11:06:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="658048469"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 05 Apr 2022 11:06:01 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Apr 2022 11:06:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Apr 2022 11:06:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Apr 2022 11:06:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CbQi1fqsdotPEMNkGUfdEvgBrSrlroWe0K1no+EngGpF6nkLjd6lh7LRJNBBn19BXwFc7T/7zxBuftwcyTnj3IQ2ou56YKwAEuCV9zvkvrD3LUoX+DGwrVF+4WMH4WyIHaNqbK+eWItNLkA8IWv2PjIpG5nC1PG4Bqi/manmvA5J8Z3OS4RtAJCs/VPpnvtjaoUvaMmHGq2aqsisWYI2cDe9V6KvVSqlTAIOlW1ts0Q4dsFGXDyOEe4w5W/KGmFb0qonr8HFDXSvpXdNmOXmiUYfo4g5gAZcin66ziw/Ym+FHRASqtycD6tfjMjaZZxc4SP8l5aIqzBGTA938Z4+jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a0qkxEYy7o4CxpIWNTWszjxnA0744Ob3j+tpWADBJgk=;
 b=Hcji3qSBQi/KUBsXIizzo1IXnIZx6svBv92ea6QQAtnIjML7yLHG9N7f1QZwFm00rAZrTySHxYCqShyBoS7kfU+g4EFnM6iYYhxk9M5Bx/1hilrIBO/BXuQ1S9LJfSHnVMyaXNdQC9wIPuupTw5GsdRIIw13gAdkFV9PDb2PDRpdRnXF6MQjzFKpYDlAf7sXp9sds+XkeQ2YDD26QBmcGveMu5n41KWXeOZP7TC9FhB+1tahrvRST8jsBQGzuFOMdoDaRJ90BMnPhklkE4LxXbEK48W5/145cyhswpY83aeeBCo9lAveJe+g+nDF0cRita2Er504D2kDRuAnQLmIzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by DM6PR11MB3067.namprd11.prod.outlook.com (2603:10b6:5:6a::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Tue, 5 Apr
 2022 18:05:58 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::5dae:3976:a7b2:8cd2]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::5dae:3976:a7b2:8cd2%4]) with mapi id 15.20.5123.031; Tue, 5 Apr 2022
 18:05:57 +0000
Message-ID: <70b323ad-c672-35f7-f1f7-a520cf015665@intel.com>
Date: Tue, 5 Apr 2022 11:05:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220330234809.1218210-1-casey.g.bowman@intel.com>
 <20220330234809.1218210-2-casey.g.bowman@intel.com>
 <56ead1fb-bd26-2e92-7fe5-4ef441434be1@linux.intel.com>
From: Casey Bowman <casey.g.bowman@intel.com>
In-Reply-To: <56ead1fb-bd26-2e92-7fe5-4ef441434be1@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0370.namprd04.prod.outlook.com
 (2603:10b6:303:81::15) To BYAPR11MB2936.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6c600170-91e5-4f6c-71f6-08da172eef4e
X-MS-TrafficTypeDiagnostic: DM6PR11MB3067:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB3067AC7E75C64AF900EA5C7CDDE49@DM6PR11MB3067.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I6QxqEEwhlFvJRYa0gU21bknOMUJ8NiKT9JIbasncxOHCRAk4quTQ/RJXnM+n4Rq8n5xb2GJJUL6DW3GrrZxKcA6/KwoVHkZhGvnKlzrVTzehYhUX9PfDJUV/V0Ms2d+t7QV33U2E5pNYxPlp+ss0bnNDF8AwWItagMtoJa+8Fk4z63xQBGSo+FTx/CimCO9LBqS0N9AKQX8FGXleJx8VYVODOGXlwV52tdj2u8kvxS0j0PSUfGFvPvhWNuv9LBHZMQ2pJrQsMaqUsb2Z6cDzX5WtUAfcHVjoBZ123sEl8xjfiJ4v4gUFxsthQLDCNRLAgKFWIokUcui9LpX8PpsSc7uFX04f4tCelPoYRfQKnlmwjaFUE8dmqsx23Txqc8AZsmLamhInMR910+B5B8w7eHtu0OZ1OOCX6zgA10jsotatLZNVgP5HpPTIO0YZfEMy3hDweAxBEw76kfG74SYbHMObmFmpfJKwhTJDhKzvy7uTaQ/ljW8R70EgKCpGdyYZm3uY3RBmz7S6M08aCLZA7VJzqYxohI56HTZfABObudffDxPsyseoFHP61fiPBe0/ImYAOQLJmGnHfM+k1wxoU4T6D5paDYSWevGA84vXS3DvlZY0DxDR7MUxp8Y8brolK3k7drTO3/ZAa51ysMvZsZprkgrNsZByYN+txvOWj85n3HzSjYeblzGDgrRia2rceBCu1RMFib6/wcGs63QnUCU2g6sXWS0jCC/YMMuvApxArhlF3ACoO4n/navsndV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(186003)(66946007)(8676002)(4326008)(6486002)(82960400001)(508600001)(6506007)(86362001)(66556008)(26005)(8936002)(66476007)(53546011)(83380400001)(6512007)(31696002)(5660300002)(30864003)(2616005)(36756003)(31686004)(2906002)(316002)(21314003)(45980500001)(43740500002)(559001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWZURnJ6bitzMjZ5WWh5bE1sYmhwbzBYeTEwUElLSGFSWm9FQmpaenFPRm1Y?=
 =?utf-8?B?dFpQbDRCKzNmbFBDS2hYOVUzUHRMVG45VzNzV2hwaTNWQ0FSbHNXYlMwdGcr?=
 =?utf-8?B?NUpSci9SaGhsNDYzNEcycDF4Q28xMTdMd1Eyd0w3c2JFRXhCdnRlTDdKdVZL?=
 =?utf-8?B?SDJzZTNWZkRpbjVWMC9ickJiaVdyNk5vQlFlajhYakVQb01KT2tuOXBKanZ3?=
 =?utf-8?B?UzloQmJlS1FPOHFTbXZ0M21MTFpSbDBOaEFPVHhSMFhwOFM2ZXZocyt5R1Az?=
 =?utf-8?B?NXMyU2NqS3JWRFcxY3Zlb2JGcTZ5ZjQzZHBBdzh1YXZySmJ1dnZzM0lxSHBE?=
 =?utf-8?B?YnlYM2dZTG82YXFNWEJMaGJPU2szVHJycE9pdW03d1FvZ21IOGxTYStoc05K?=
 =?utf-8?B?ZXp5WXprcnR6cFZ0Y2lLU3N2NjNVN1NQcFJabjZyRVZ6QWJ1cDJjU3RxbXcy?=
 =?utf-8?B?Qkh3L1V4MTJkMWtSV3cwRFJMbHpKK0haeU5jNXVwZVpwWEpqZjRkOXdRV1Ev?=
 =?utf-8?B?M2JaQmZ4RTdLTnNwV3JXZy9Ya1hSYXhqd1BwWkhIS1pyVS9OVmx0MGpzUFVQ?=
 =?utf-8?B?MUVydlBHNmVpTXcraU9iNDkzZDM3NnBvMHBaN3F5VHVyaXV2d1krdndwcW5F?=
 =?utf-8?B?ejZ4NFhSUkVGYk44bk9rOS9vNG53ZUhUVzJFRUZRcGZSbnpFaFNMYVZNd2xl?=
 =?utf-8?B?QTdXOVlGMDNXeTlCajYwcnJVelpZUzdKZlNwamwyaGxGYWRZbkZCUmtUdWN0?=
 =?utf-8?B?YlFWcXZSVGJzSmV6UHNqUGdPUjA0S2RlWm4zRjc1VTVzMjlZWVpGeS9acTBR?=
 =?utf-8?B?ZjFhZ0lkbUF5UU5mWXZvQ1Z3d0NhQitOblBxM3NCV0ZReTZ3ZEovaTh1amly?=
 =?utf-8?B?U21pVVRub0tUdCtvWEdvUkozV2lMRU9iaFNhelpQOUhQY21aQWE2MnJnUlQ5?=
 =?utf-8?B?bENSeURyaEVRUTQ5K3pvbFd1OHlvdzI3Y2FnblNUNGsvaEE5b25wNUVMV0ho?=
 =?utf-8?B?MzlnVTBqbDhkdHI1K0dJUkRYYTNSM0FCV25UVC9IUnlDSHJ0WXp3WG5CdEQy?=
 =?utf-8?B?NkYza3pkOU1UQ3ZwMEcvZjhHZXNKajZsZjlkNVlEUmgySDB3S2g4VjZwV0U5?=
 =?utf-8?B?M2xCLzUyTlA1WEU0YkFrNk9Iek1takFLWHpYVE1QbDdSS1BnMk9xZVFSTkt0?=
 =?utf-8?B?dk1mSzZOQ3Z1dWtpd2VJNk8yeUFqQ0c5YzZHQk9GUmYrL2NDUGJDalJaU0sx?=
 =?utf-8?B?WUtHZ25wQlFjaTJIbmgzTzhobDhnL0ZSYWNBVFNhcEZUVCtOYWd6Z3N6ZFUw?=
 =?utf-8?B?Q0RTSnN2VkdvMTZwTzJLSnR5YkE1Ni95RWxzUkQ4SmY2bzNtdnBPS21tbW5V?=
 =?utf-8?B?ZmM4Q0QxS2Q5R1M4T2tXb1Foc2g1ZzNIVDE1c3YxL1c3ZUtpUUwwWTk0T012?=
 =?utf-8?B?ZG5WYlgzN3ZRYVcrYWNVVTJOSktyamdVUDBPWUJDbVhqb1NmakZlU0x5cFYz?=
 =?utf-8?B?ck1BWGNYQVRVQ2dyTnZkcUhURHM1Q3M4N1Z4c1lNUys4ejk0U1hoNWU5UXc0?=
 =?utf-8?B?V3lVYm1UYzlrRVg2cHhaeHk1NWswQjhyL010aVZleUlrZFNvVEM1TFNIL212?=
 =?utf-8?B?OHRXMlYyMFJSempBMVVpNTN4UHkyaEJBVVpHRmVuSzhZR05nbVAzRHVLY1ZO?=
 =?utf-8?B?cFk5RjZaWVQxbFM1UVN6cENoclMrbGdXaDFYV2d6eWkxMElkV21sWjFCSGx1?=
 =?utf-8?B?SHJHU2tJZ1JJSEU2WkxSbXhPb3ZVVjlGSGVIenRoVXR5aVU3aUZSYlBUQnl4?=
 =?utf-8?B?Wm5VYlFrMytyejVpZUMrV3NCV3hMU2x1VG93dlp2WlppMEZYSk1PS0RObUk0?=
 =?utf-8?B?Z2Y5UnQxT2FrVm05VEJMQXVjRms5ejR3eHl2V2pMdUxCUmhBZllESWovMGh6?=
 =?utf-8?B?OE9yUkRUeU41MFVYSi9OYTFibHVNVFlrNm8wcGprcjBRajlya2oyRCtiSzVs?=
 =?utf-8?B?Ny9yWmNhOFIrN1pUQ1ZkT3dSZmpXd01mZGowM20velZxZmNWVEh2ZVlVOHVI?=
 =?utf-8?B?RkZzSVE0czE5WWJkRElSV3RCSlBiV0RpVERCVU1aT0laQU5XM2htRTd0MW9o?=
 =?utf-8?B?UVd0Q0FsYkU1UFNKWm10bWM1VXZRZDdQdUc4TGRBREMvcVN1SzR6WGpzN3Fm?=
 =?utf-8?B?MnVtcVp4Qnk1MHBvSTRWNE9OSmJNQ2FEeHl3bURPUG5Da0o4OWhBMVFmWEty?=
 =?utf-8?B?aFZKclNOSVhsVTB0MytMRGRZUWRaYnd6SEphcnc4YlJJNkJ0SEE4UDNwYW03?=
 =?utf-8?B?SE5QTkplalI0NGlsa0hIZ0NPYlMzcWIyOGRaUERua0tEclA0bG1Uam1kSkpS?=
 =?utf-8?Q?dWvhN7KkclycqiJ4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c600170-91e5-4f6c-71f6-08da172eef4e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2022 18:05:57.8895 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YMnmr0jsf2pjEnZ49W/kH6rTmDfeQA8Y4Ac2ay893YU2fJVgOeDKiv0xaP2gofU73Va8i/olje+fJlZXiq+Ia8tXDLttlkEMdULT7ZIjQ60=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3067
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/i915/gt: Split intel-gtt
 functions by arch
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

@Jani/Lucas, any other thoughts here?

Regards,
Casey

On 3/31/22 07:36, Tvrtko Ursulin wrote:
>
> On 31/03/2022 00:48, Casey Bowman wrote:
>> Some functions defined in the intel-gtt module are used in several
>> areas, but is only supported on x86 platforms.
>>
>> By separating these calls and their static underlying functions to
>> another area, we are able to compile out these functions for
>> non-x86 builds and provide stubs for the non-x86 implementations.
>>
>> In addition to the problematic calls, we are moving the gmch-related
>> functions to the new area.
>
> Glanced over the latest version - looks acceptable to me.
>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Regards,
>
> Tvrtko
>
>> Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
>> ---
>>   drivers/gpu/drm/i915/Makefile           |   2 +
>>   drivers/gpu/drm/i915/gt/intel_ggtt.c    | 664 +-----------------------
>>   drivers/gpu/drm/i915/gt/intel_gt.c      |   4 +-
>>   drivers/gpu/drm/i915/gt/intel_gt.h      |   9 +
>>   drivers/gpu/drm/i915/gt/intel_gt_gmch.c | 654 +++++++++++++++++++++++
>>   drivers/gpu/drm/i915/gt/intel_gt_gmch.h |  46 ++
>>   drivers/gpu/drm/i915/gt/intel_gtt.h     |   9 +
>>   7 files changed, 736 insertions(+), 652 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>>   create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_gmch.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile 
>> b/drivers/gpu/drm/i915/Makefile
>> index c1d5540f6052..30b75b5895ae 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -126,6 +126,8 @@ gt-y += \
>>       gt/intel_workarounds.o \
>>       gt/shmem_utils.o \
>>       gt/sysfs_engines.o
>> +# x86 intel-gtt module support
>> +gt-$(CONFIG_X86) += gt/intel_gt_gmch.o
>>   # autogenerated null render state
>>   gt-y += \
>>       gt/gen6_renderstate.o \
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c 
>> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 86b2cd2a9f34..be25375ac6f1 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -3,22 +3,19 @@
>>    * Copyright © 2020 Intel Corporation
>>    */
>>   -#include <linux/agp_backend.h>
>> -#include <linux/stop_machine.h>
>> -
>> +#include <linux/types.h>
>>   #include <asm/set_memory.h>
>>   #include <asm/smp.h>
>>     #include <drm/i915_drm.h>
>> -#include <drm/intel-gtt.h>
>>     #include "gem/i915_gem_lmem.h"
>>     #include "intel_gt.h"
>> +#include "intel_gt_gmch.h"
>>   #include "intel_gt_regs.h"
>>   #include "i915_drv.h"
>>   #include "i915_scatterlist.h"
>> -#include "i915_utils.h"
>>   #include "i915_vgpu.h"
>>     #include "intel_gtt.h"
>> @@ -95,28 +92,6 @@ int i915_ggtt_init_hw(struct drm_i915_private *i915)
>>       return 0;
>>   }
>>   -/*
>> - * Certain Gen5 chipsets require idling the GPU before
>> - * unmapping anything from the GTT when VT-d is enabled.
>> - */
>> -static bool needs_idle_maps(struct drm_i915_private *i915)
>> -{
>> -    /*
>> -     * Query intel_iommu to see if we need the workaround. 
>> Presumably that
>> -     * was loaded first.
>> -     */
>> -    if (!i915_vtd_active(i915))
>> -        return false;
>> -
>> -    if (GRAPHICS_VER(i915) == 5 && IS_MOBILE(i915))
>> -        return true;
>> -
>> -    if (GRAPHICS_VER(i915) == 12)
>> -        return true; /* XXX DMAR fault reason 7 */
>> -
>> -    return false;
>> -}
>> -
>>   /**
>>    * i915_ggtt_suspend_vm - Suspend the memory mappings for a GGTT or 
>> DPT VM
>>    * @vm: The VM to suspend the mappings for
>> @@ -205,7 +180,7 @@ void gen6_ggtt_invalidate(struct i915_ggtt *ggtt)
>>       spin_unlock_irq(&uncore->lock);
>>   }
>>   -static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
>> +void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
>>   {
>>       struct intel_uncore *uncore = ggtt->vm.gt->uncore;
>>   @@ -230,11 +205,6 @@ static void guc_ggtt_invalidate(struct 
>> i915_ggtt *ggtt)
>>           intel_uncore_write_fw(uncore, GEN8_GTCR, 
>> GEN8_GTCR_INVALIDATE);
>>   }
>>   -static void gmch_ggtt_invalidate(struct i915_ggtt *ggtt)
>> -{
>> -    intel_gtt_chipset_flush();
>> -}
>> -
>>   u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>                enum i915_cache_level level,
>>                u32 flags)
>> @@ -247,258 +217,7 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>       return pte;
>>   }
>>   -static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
>> -{
>> -    writeq(pte, addr);
>> -}
>> -
>> -static void gen8_ggtt_insert_page(struct i915_address_space *vm,
>> -                  dma_addr_t addr,
>> -                  u64 offset,
>> -                  enum i915_cache_level level,
>> -                  u32 flags)
>> -{
>> -    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> -    gen8_pte_t __iomem *pte =
>> -        (gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>> -
>> -    gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
>> -
>> -    ggtt->invalidate(ggtt);
>> -}
>> -
>> -static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>> -                     struct i915_vma_resource *vma_res,
>> -                     enum i915_cache_level level,
>> -                     u32 flags)
>> -{
>> -    const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, 
>> flags);
>> -    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> -    gen8_pte_t __iomem *gte;
>> -    gen8_pte_t __iomem *end;
>> -    struct sgt_iter iter;
>> -    dma_addr_t addr;
>> -
>> -    /*
>> -     * Note that we ignore PTE_READ_ONLY here. The caller must be 
>> careful
>> -     * not to allow the user to override access to a read only page.
>> -     */
>> -
>> -    gte = (gen8_pte_t __iomem *)ggtt->gsm;
>> -    gte += vma_res->start / I915_GTT_PAGE_SIZE;
>> -    end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>> -
>> -    for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>> -        gen8_set_pte(gte++, pte_encode | addr);
>> -    GEM_BUG_ON(gte > end);
>> -
>> -    /* Fill the allocated but "unused" space beyond the end of the 
>> buffer */
>> -    while (gte < end)
>> -        gen8_set_pte(gte++, vm->scratch[0]->encode);
>> -
>> -    /*
>> -     * We want to flush the TLBs only after we're certain all the PTE
>> -     * updates have finished.
>> -     */
>> -    ggtt->invalidate(ggtt);
>> -}
>> -
>> -static void gen6_ggtt_insert_page(struct i915_address_space *vm,
>> -                  dma_addr_t addr,
>> -                  u64 offset,
>> -                  enum i915_cache_level level,
>> -                  u32 flags)
>> -{
>> -    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> -    gen6_pte_t __iomem *pte =
>> -        (gen6_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>> -
>> -    iowrite32(vm->pte_encode(addr, level, flags), pte);
>> -
>> -    ggtt->invalidate(ggtt);
>> -}
>> -
>> -/*
>> - * Binds an object into the global gtt with the specified cache level.
>> - * The object will be accessible to the GPU via commands whose operands
>> - * reference offsets within the global GTT as well as accessible by 
>> the GPU
>> - * through the GMADR mapped BAR (i915->mm.gtt->gtt).
>> - */
>> -static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
>> -                     struct i915_vma_resource *vma_res,
>> -                     enum i915_cache_level level,
>> -                     u32 flags)
>> -{
>> -    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> -    gen6_pte_t __iomem *gte;
>> -    gen6_pte_t __iomem *end;
>> -    struct sgt_iter iter;
>> -    dma_addr_t addr;
>> -
>> -    gte = (gen6_pte_t __iomem *)ggtt->gsm;
>> -    gte += vma_res->start / I915_GTT_PAGE_SIZE;
>> -    end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>> -
>> -    for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>> -        iowrite32(vm->pte_encode(addr, level, flags), gte++);
>> -    GEM_BUG_ON(gte > end);
>> -
>> -    /* Fill the allocated but "unused" space beyond the end of the 
>> buffer */
>> -    while (gte < end)
>> -        iowrite32(vm->scratch[0]->encode, gte++);
>> -
>> -    /*
>> -     * We want to flush the TLBs only after we're certain all the PTE
>> -     * updates have finished.
>> -     */
>> -    ggtt->invalidate(ggtt);
>> -}
>> -
>> -static void nop_clear_range(struct i915_address_space *vm,
>> -                u64 start, u64 length)
>> -{
>> -}
>> -
>> -static void gen8_ggtt_clear_range(struct i915_address_space *vm,
>> -                  u64 start, u64 length)
>> -{
>> -    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> -    unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
>> -    unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
>> -    const gen8_pte_t scratch_pte = vm->scratch[0]->encode;
>> -    gen8_pte_t __iomem *gtt_base =
>> -        (gen8_pte_t __iomem *)ggtt->gsm + first_entry;
>> -    const int max_entries = ggtt_total_entries(ggtt) - first_entry;
>> -    int i;
>> -
>> -    if (WARN(num_entries > max_entries,
>> -         "First entry = %d; Num entries = %d (max=%d)\n",
>> -         first_entry, num_entries, max_entries))
>> -        num_entries = max_entries;
>> -
>> -    for (i = 0; i < num_entries; i++)
>> -        gen8_set_pte(&gtt_base[i], scratch_pte);
>> -}
>> -
>> -static void bxt_vtd_ggtt_wa(struct i915_address_space *vm)
>> -{
>> -    /*
>> -     * Make sure the internal GAM fifo has been cleared of all GTT
>> -     * writes before exiting stop_machine(). This guarantees that
>> -     * any aperture accesses waiting to start in another process
>> -     * cannot back up behind the GTT writes causing a hang.
>> -     * The register can be any arbitrary GAM register.
>> -     */
>> -    intel_uncore_posting_read_fw(vm->gt->uncore, GFX_FLSH_CNTL_GEN6);
>> -}
>> -
>> -struct insert_page {
>> -    struct i915_address_space *vm;
>> -    dma_addr_t addr;
>> -    u64 offset;
>> -    enum i915_cache_level level;
>> -};
>> -
>> -static int bxt_vtd_ggtt_insert_page__cb(void *_arg)
>> -{
>> -    struct insert_page *arg = _arg;
>> -
>> -    gen8_ggtt_insert_page(arg->vm, arg->addr, arg->offset, 
>> arg->level, 0);
>> -    bxt_vtd_ggtt_wa(arg->vm);
>> -
>> -    return 0;
>> -}
>> -
>> -static void bxt_vtd_ggtt_insert_page__BKL(struct i915_address_space 
>> *vm,
>> -                      dma_addr_t addr,
>> -                      u64 offset,
>> -                      enum i915_cache_level level,
>> -                      u32 unused)
>> -{
>> -    struct insert_page arg = { vm, addr, offset, level };
>> -
>> -    stop_machine(bxt_vtd_ggtt_insert_page__cb, &arg, NULL);
>> -}
>> -
>> -struct insert_entries {
>> -    struct i915_address_space *vm;
>> -    struct i915_vma_resource *vma_res;
>> -    enum i915_cache_level level;
>> -    u32 flags;
>> -};
>> -
>> -static int bxt_vtd_ggtt_insert_entries__cb(void *_arg)
>> -{
>> -    struct insert_entries *arg = _arg;
>> -
>> -    gen8_ggtt_insert_entries(arg->vm, arg->vma_res, arg->level, 
>> arg->flags);
>> -    bxt_vtd_ggtt_wa(arg->vm);
>> -
>> -    return 0;
>> -}
>> -
>> -static void bxt_vtd_ggtt_insert_entries__BKL(struct 
>> i915_address_space *vm,
>> -                         struct i915_vma_resource *vma_res,
>> -                         enum i915_cache_level level,
>> -                         u32 flags)
>> -{
>> -    struct insert_entries arg = { vm, vma_res, level, flags };
>> -
>> -    stop_machine(bxt_vtd_ggtt_insert_entries__cb, &arg, NULL);
>> -}
>> -
>> -static void gen6_ggtt_clear_range(struct i915_address_space *vm,
>> -                  u64 start, u64 length)
>> -{
>> -    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> -    unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
>> -    unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
>> -    gen6_pte_t scratch_pte, __iomem *gtt_base =
>> -        (gen6_pte_t __iomem *)ggtt->gsm + first_entry;
>> -    const int max_entries = ggtt_total_entries(ggtt) - first_entry;
>> -    int i;
>> -
>> -    if (WARN(num_entries > max_entries,
>> -         "First entry = %d; Num entries = %d (max=%d)\n",
>> -         first_entry, num_entries, max_entries))
>> -        num_entries = max_entries;
>> -
>> -    scratch_pte = vm->scratch[0]->encode;
>> -    for (i = 0; i < num_entries; i++)
>> -        iowrite32(scratch_pte, &gtt_base[i]);
>> -}
>> -
>> -static void i915_ggtt_insert_page(struct i915_address_space *vm,
>> -                  dma_addr_t addr,
>> -                  u64 offset,
>> -                  enum i915_cache_level cache_level,
>> -                  u32 unused)
>> -{
>> -    unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>> -        AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> -
>> -    intel_gtt_insert_page(addr, offset >> PAGE_SHIFT, flags);
>> -}
>> -
>> -static void i915_ggtt_insert_entries(struct i915_address_space *vm,
>> -                     struct i915_vma_resource *vma_res,
>> -                     enum i915_cache_level cache_level,
>> -                     u32 unused)
>> -{
>> -    unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>> -        AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> -
>> -    intel_gtt_insert_sg_entries(vma_res->bi.pages, vma_res->start >> 
>> PAGE_SHIFT,
>> -                    flags);
>> -}
>> -
>> -static void i915_ggtt_clear_range(struct i915_address_space *vm,
>> -                  u64 start, u64 length)
>> -{
>> -    intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
>> -}
>> -
>> -static void ggtt_bind_vma(struct i915_address_space *vm,
>> +void intel_ggtt_bind_vma(struct i915_address_space *vm,
>>                 struct i915_vm_pt_stash *stash,
>>                 struct i915_vma_resource *vma_res,
>>                 enum i915_cache_level cache_level,
>> @@ -522,7 +241,7 @@ static void ggtt_bind_vma(struct 
>> i915_address_space *vm,
>>       vma_res->page_sizes_gtt = I915_GTT_PAGE_SIZE;
>>   }
>>   -static void ggtt_unbind_vma(struct i915_address_space *vm,
>> +void intel_ggtt_unbind_vma(struct i915_address_space *vm,
>>                   struct i915_vma_resource *vma_res)
>>   {
>>       vm->clear_range(vm, vma_res->start, vma_res->vma_size);
>> @@ -725,10 +444,10 @@ static int init_aliasing_ppgtt(struct i915_ggtt 
>> *ggtt)
>>       ggtt->alias = ppgtt;
>>       ggtt->vm.bind_async_flags |= ppgtt->vm.bind_async_flags;
>>   -    GEM_BUG_ON(ggtt->vm.vma_ops.bind_vma != ggtt_bind_vma);
>> +    GEM_BUG_ON(ggtt->vm.vma_ops.bind_vma != intel_ggtt_bind_vma);
>>       ggtt->vm.vma_ops.bind_vma = aliasing_gtt_bind_vma;
>>   -    GEM_BUG_ON(ggtt->vm.vma_ops.unbind_vma != ggtt_unbind_vma);
>> +    GEM_BUG_ON(ggtt->vm.vma_ops.unbind_vma != intel_ggtt_unbind_vma);
>>       ggtt->vm.vma_ops.unbind_vma = aliasing_gtt_unbind_vma;
>>         i915_vm_free_pt_stash(&ppgtt->vm, &stash);
>> @@ -751,8 +470,8 @@ static void fini_aliasing_ppgtt(struct i915_ggtt 
>> *ggtt)
>>         i915_vm_put(&ppgtt->vm);
>>   -    ggtt->vm.vma_ops.bind_vma   = ggtt_bind_vma;
>> -    ggtt->vm.vma_ops.unbind_vma = ggtt_unbind_vma;
>> +    ggtt->vm.vma_ops.bind_vma   = intel_ggtt_bind_vma;
>> +    ggtt->vm.vma_ops.unbind_vma = intel_ggtt_unbind_vma;
>>   }
>>     int i915_init_ggtt(struct drm_i915_private *i915)
>> @@ -840,364 +559,12 @@ void i915_ggtt_driver_late_release(struct 
>> drm_i915_private *i915)
>>       dma_resv_fini(&ggtt->vm._resv);
>>   }
>>   -static unsigned int gen6_get_total_gtt_size(u16 snb_gmch_ctl)
>> -{
>> -    snb_gmch_ctl >>= SNB_GMCH_GGMS_SHIFT;
>> -    snb_gmch_ctl &= SNB_GMCH_GGMS_MASK;
>> -    return snb_gmch_ctl << 20;
>> -}
>> -
>> -static unsigned int gen8_get_total_gtt_size(u16 bdw_gmch_ctl)
>> -{
>> -    bdw_gmch_ctl >>= BDW_GMCH_GGMS_SHIFT;
>> -    bdw_gmch_ctl &= BDW_GMCH_GGMS_MASK;
>> -    if (bdw_gmch_ctl)
>> -        bdw_gmch_ctl = 1 << bdw_gmch_ctl;
>> -
>> -#ifdef CONFIG_X86_32
>> -    /* Limit 32b platforms to a 2GB GGTT: 4 << 20 / pte size * 
>> I915_GTT_PAGE_SIZE */
>> -    if (bdw_gmch_ctl > 4)
>> -        bdw_gmch_ctl = 4;
>> -#endif
>> -
>> -    return bdw_gmch_ctl << 20;
>> -}
>> -
>> -static unsigned int chv_get_total_gtt_size(u16 gmch_ctrl)
>> -{
>> -    gmch_ctrl >>= SNB_GMCH_GGMS_SHIFT;
>> -    gmch_ctrl &= SNB_GMCH_GGMS_MASK;
>> -
>> -    if (gmch_ctrl)
>> -        return 1 << (20 + gmch_ctrl);
>> -
>> -    return 0;
>> -}
>> -
>> -static unsigned int gen6_gttmmadr_size(struct drm_i915_private *i915)
>> -{
>> -    /*
>> -     * GEN6: GTTMMADR size is 4MB and GTTADR starts at 2MB offset
>> -     * GEN8: GTTMMADR size is 16MB and GTTADR starts at 8MB offset
>> -     */
>> -    GEM_BUG_ON(GRAPHICS_VER(i915) < 6);
>> -    return (GRAPHICS_VER(i915) < 8) ? SZ_4M : SZ_16M;
>> -}
>> -
>> -static unsigned int gen6_gttadr_offset(struct drm_i915_private *i915)
>> -{
>> -    return gen6_gttmmadr_size(i915) / 2;
>> -}
>> -
>> -static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>> -{
>> -    struct drm_i915_private *i915 = ggtt->vm.i915;
>> -    struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>> -    phys_addr_t phys_addr;
>> -    u32 pte_flags;
>> -    int ret;
>> -
>> -    GEM_WARN_ON(pci_resource_len(pdev, 0) != gen6_gttmmadr_size(i915));
>> -    phys_addr = pci_resource_start(pdev, 0) + gen6_gttadr_offset(i915);
>> -
>> -    /*
>> -     * On BXT+/ICL+ writes larger than 64 bit to the GTT pagetable 
>> range
>> -     * will be dropped. For WC mappings in general we have 64 byte 
>> burst
>> -     * writes when the WC buffer is flushed, so we can't use it, but 
>> have to
>> -     * resort to an uncached mapping. The WC issue is easily caught 
>> by the
>> -     * readback check when writing GTT PTE entries.
>> -     */
>> -    if (IS_GEN9_LP(i915) || GRAPHICS_VER(i915) >= 11)
>> -        ggtt->gsm = ioremap(phys_addr, size);
>> -    else
>> -        ggtt->gsm = ioremap_wc(phys_addr, size);
>> -    if (!ggtt->gsm) {
>> -        drm_err(&i915->drm, "Failed to map the ggtt page table\n");
>> -        return -ENOMEM;
>> -    }
>> -
>> -    kref_init(&ggtt->vm.resv_ref);
>> -    ret = setup_scratch_page(&ggtt->vm);
>> -    if (ret) {
>> -        drm_err(&i915->drm, "Scratch setup failed\n");
>> -        /* iounmap will also get called at remove, but meh */
>> -        iounmap(ggtt->gsm);
>> -        return ret;
>> -    }
>> -
>> -    pte_flags = 0;
>> -    if (i915_gem_object_is_lmem(ggtt->vm.scratch[0]))
>> -        pte_flags |= PTE_LM;
>> -
>> -    ggtt->vm.scratch[0]->encode =
>> -        ggtt->vm.pte_encode(px_dma(ggtt->vm.scratch[0]),
>> -                    I915_CACHE_NONE, pte_flags);
>> -
>> -    return 0;
>> -}
>> -
>> -static void gen6_gmch_remove(struct i915_address_space *vm)
>> -{
>> -    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> -
>> -    iounmap(ggtt->gsm);
>> -    free_scratch(vm);
>> -}
>> -
>> -static struct resource pci_resource(struct pci_dev *pdev, int bar)
>> +struct resource intel_pci_resource(struct pci_dev *pdev, int bar)
>>   {
>>       return (struct resource)DEFINE_RES_MEM(pci_resource_start(pdev, 
>> bar),
>>                              pci_resource_len(pdev, bar));
>>   }
>>   -static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>> -{
>> -    struct drm_i915_private *i915 = ggtt->vm.i915;
>> -    struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>> -    unsigned int size;
>> -    u16 snb_gmch_ctl;
>> -
>> -    /* TODO: We're not aware of mappable constraints on gen8 yet */
>> -    if (!HAS_LMEM(i915)) {
>> -        ggtt->gmadr = pci_resource(pdev, 2);
>> -        ggtt->mappable_end = resource_size(&ggtt->gmadr);
>> -    }
>> -
>> -    pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>> -    if (IS_CHERRYVIEW(i915))
>> -        size = chv_get_total_gtt_size(snb_gmch_ctl);
>> -    else
>> -        size = gen8_get_total_gtt_size(snb_gmch_ctl);
>> -
>> -    ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>> -    ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>> -    ggtt->vm.lmem_pt_obj_flags = I915_BO_ALLOC_PM_EARLY;
>> -
>> -    ggtt->vm.total = (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
>> -    ggtt->vm.cleanup = gen6_gmch_remove;
>> -    ggtt->vm.insert_page = gen8_ggtt_insert_page;
>> -    ggtt->vm.clear_range = nop_clear_range;
>> -    if (intel_scanout_needs_vtd_wa(i915))
>> -        ggtt->vm.clear_range = gen8_ggtt_clear_range;
>> -
>> -    ggtt->vm.insert_entries = gen8_ggtt_insert_entries;
>> -
>> -    /*
>> -     * Serialize GTT updates with aperture access on BXT if VT-d is on,
>> -     * and always on CHV.
>> -     */
>> -    if (intel_vm_no_concurrent_access_wa(i915)) {
>> -        ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
>> -        ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
>> -        ggtt->vm.bind_async_flags =
>> -            I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>> -    }
>> -
>> -    ggtt->invalidate = gen8_ggtt_invalidate;
>> -
>> -    ggtt->vm.vma_ops.bind_vma    = ggtt_bind_vma;
>> -    ggtt->vm.vma_ops.unbind_vma  = ggtt_unbind_vma;
>> -
>> -    ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>> -
>> -    setup_private_pat(ggtt->vm.gt->uncore);
>> -
>> -    return ggtt_probe_common(ggtt, size);
>> -}
>> -
>> -static u64 snb_pte_encode(dma_addr_t addr,
>> -              enum i915_cache_level level,
>> -              u32 flags)
>> -{
>> -    gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> -
>> -    switch (level) {
>> -    case I915_CACHE_L3_LLC:
>> -    case I915_CACHE_LLC:
>> -        pte |= GEN6_PTE_CACHE_LLC;
>> -        break;
>> -    case I915_CACHE_NONE:
>> -        pte |= GEN6_PTE_UNCACHED;
>> -        break;
>> -    default:
>> -        MISSING_CASE(level);
>> -    }
>> -
>> -    return pte;
>> -}
>> -
>> -static u64 ivb_pte_encode(dma_addr_t addr,
>> -              enum i915_cache_level level,
>> -              u32 flags)
>> -{
>> -    gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> -
>> -    switch (level) {
>> -    case I915_CACHE_L3_LLC:
>> -        pte |= GEN7_PTE_CACHE_L3_LLC;
>> -        break;
>> -    case I915_CACHE_LLC:
>> -        pte |= GEN6_PTE_CACHE_LLC;
>> -        break;
>> -    case I915_CACHE_NONE:
>> -        pte |= GEN6_PTE_UNCACHED;
>> -        break;
>> -    default:
>> -        MISSING_CASE(level);
>> -    }
>> -
>> -    return pte;
>> -}
>> -
>> -static u64 byt_pte_encode(dma_addr_t addr,
>> -              enum i915_cache_level level,
>> -              u32 flags)
>> -{
>> -    gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> -
>> -    if (!(flags & PTE_READ_ONLY))
>> -        pte |= BYT_PTE_WRITEABLE;
>> -
>> -    if (level != I915_CACHE_NONE)
>> -        pte |= BYT_PTE_SNOOPED_BY_CPU_CACHES;
>> -
>> -    return pte;
>> -}
>> -
>> -static u64 hsw_pte_encode(dma_addr_t addr,
>> -              enum i915_cache_level level,
>> -              u32 flags)
>> -{
>> -    gen6_pte_t pte = HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> -
>> -    if (level != I915_CACHE_NONE)
>> -        pte |= HSW_WB_LLC_AGE3;
>> -
>> -    return pte;
>> -}
>> -
>> -static u64 iris_pte_encode(dma_addr_t addr,
>> -               enum i915_cache_level level,
>> -               u32 flags)
>> -{
>> -    gen6_pte_t pte = HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> -
>> -    switch (level) {
>> -    case I915_CACHE_NONE:
>> -        break;
>> -    case I915_CACHE_WT:
>> -        pte |= HSW_WT_ELLC_LLC_AGE3;
>> -        break;
>> -    default:
>> -        pte |= HSW_WB_ELLC_LLC_AGE3;
>> -        break;
>> -    }
>> -
>> -    return pte;
>> -}
>> -
>> -static int gen6_gmch_probe(struct i915_ggtt *ggtt)
>> -{
>> -    struct drm_i915_private *i915 = ggtt->vm.i915;
>> -    struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>> -    unsigned int size;
>> -    u16 snb_gmch_ctl;
>> -
>> -    ggtt->gmadr = pci_resource(pdev, 2);
>> -    ggtt->mappable_end = resource_size(&ggtt->gmadr);
>> -
>> -    /*
>> -     * 64/512MB is the current min/max we actually know of, but this is
>> -     * just a coarse sanity check.
>> -     */
>> -    if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > 
>> (512<<20)) {
>> -        drm_err(&i915->drm, "Unknown GMADR size (%pa)\n",
>> -            &ggtt->mappable_end);
>> -        return -ENXIO;
>> -    }
>> -
>> -    pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>> -
>> -    size = gen6_get_total_gtt_size(snb_gmch_ctl);
>> -    ggtt->vm.total = (size / sizeof(gen6_pte_t)) * I915_GTT_PAGE_SIZE;
>> -
>> -    ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>> -    ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>> -
>> -    ggtt->vm.clear_range = nop_clear_range;
>> -    if (!HAS_FULL_PPGTT(i915) || intel_scanout_needs_vtd_wa(i915))
>> -        ggtt->vm.clear_range = gen6_ggtt_clear_range;
>> -    ggtt->vm.insert_page = gen6_ggtt_insert_page;
>> -    ggtt->vm.insert_entries = gen6_ggtt_insert_entries;
>> -    ggtt->vm.cleanup = gen6_gmch_remove;
>> -
>> -    ggtt->invalidate = gen6_ggtt_invalidate;
>> -
>> -    if (HAS_EDRAM(i915))
>> -        ggtt->vm.pte_encode = iris_pte_encode;
>> -    else if (IS_HASWELL(i915))
>> -        ggtt->vm.pte_encode = hsw_pte_encode;
>> -    else if (IS_VALLEYVIEW(i915))
>> -        ggtt->vm.pte_encode = byt_pte_encode;
>> -    else if (GRAPHICS_VER(i915) >= 7)
>> -        ggtt->vm.pte_encode = ivb_pte_encode;
>> -    else
>> -        ggtt->vm.pte_encode = snb_pte_encode;
>> -
>> -    ggtt->vm.vma_ops.bind_vma    = ggtt_bind_vma;
>> -    ggtt->vm.vma_ops.unbind_vma  = ggtt_unbind_vma;
>> -
>> -    return ggtt_probe_common(ggtt, size);
>> -}
>> -
>> -static void i915_gmch_remove(struct i915_address_space *vm)
>> -{
>> -    intel_gmch_remove();
>> -}
>> -
>> -static int i915_gmch_probe(struct i915_ggtt *ggtt)
>> -{
>> -    struct drm_i915_private *i915 = ggtt->vm.i915;
>> -    phys_addr_t gmadr_base;
>> -    int ret;
>> -
>> -    ret = intel_gmch_probe(i915->bridge_dev, 
>> to_pci_dev(i915->drm.dev), NULL);
>> -    if (!ret) {
>> -        drm_err(&i915->drm, "failed to set up gmch\n");
>> -        return -EIO;
>> -    }
>> -
>> -    intel_gtt_get(&ggtt->vm.total, &gmadr_base, &ggtt->mappable_end);
>> -
>> -    ggtt->gmadr =
>> -        (struct resource)DEFINE_RES_MEM(gmadr_base, 
>> ggtt->mappable_end);
>> -
>> -    ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>> -    ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>> -
>> -    if (needs_idle_maps(i915)) {
>> -        drm_notice(&i915->drm,
>> -               "Flushing DMA requests before IOMMU unmaps; 
>> performance may be degraded\n");
>> -        ggtt->do_idle_maps = true;
>> -    }
>> -
>> -    ggtt->vm.insert_page = i915_ggtt_insert_page;
>> -    ggtt->vm.insert_entries = i915_ggtt_insert_entries;
>> -    ggtt->vm.clear_range = i915_ggtt_clear_range;
>> -    ggtt->vm.cleanup = i915_gmch_remove;
>> -
>> -    ggtt->invalidate = gmch_ggtt_invalidate;
>> -
>> -    ggtt->vm.vma_ops.bind_vma    = ggtt_bind_vma;
>> -    ggtt->vm.vma_ops.unbind_vma  = ggtt_unbind_vma;
>> -
>> -    if (unlikely(ggtt->do_idle_maps))
>> -        drm_notice(&i915->drm,
>> -               "Applying Ironlake quirks for intel_iommu\n");
>> -
>> -    return 0;
>> -}
>> -
>>   static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
>>   {
>>       struct drm_i915_private *i915 = gt->i915;
>> @@ -1209,11 +576,11 @@ static int ggtt_probe_hw(struct i915_ggtt 
>> *ggtt, struct intel_gt *gt)
>>       dma_resv_init(&ggtt->vm._resv);
>>         if (GRAPHICS_VER(i915) <= 5)
>> -        ret = i915_gmch_probe(ggtt);
>> +        ret = intel_gt_gmch_gen5_probe(ggtt);
>>       else if (GRAPHICS_VER(i915) < 8)
>> -        ret = gen6_gmch_probe(ggtt);
>> +        ret = intel_gt_gmch_gen6_probe(ggtt);
>>       else
>> -        ret = gen8_gmch_probe(ggtt);
>> +        ret = intel_gt_gmch_gen8_probe(ggtt);
>>       if (ret) {
>>           dma_resv_fini(&ggtt->vm._resv);
>>           return ret;
>> @@ -1267,10 +634,7 @@ int i915_ggtt_probe_hw(struct drm_i915_private 
>> *i915)
>>     int i915_ggtt_enable_hw(struct drm_i915_private *i915)
>>   {
>> -    if (GRAPHICS_VER(i915) < 6 && !intel_enable_gtt())
>> -        return -EIO;
>> -
>> -    return 0;
>> +    return intel_gt_gmch_gen5_enable_hw(i915);
>>   }
>>     void i915_ggtt_enable_guc(struct i915_ggtt *ggtt)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c 
>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>> index 5001a6168d56..f0014c5072c9 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>> @@ -4,7 +4,6 @@
>>    */
>>     #include <drm/drm_managed.h>
>> -#include <drm/intel-gtt.h>
>>     #include "gem/i915_gem_internal.h"
>>   #include "gem/i915_gem_lmem.h"
>> @@ -17,6 +16,7 @@
>>   #include "intel_gt_buffer_pool.h"
>>   #include "intel_gt_clock_utils.h"
>>   #include "intel_gt_debugfs.h"
>> +#include "intel_gt_gmch.h"
>>   #include "intel_gt_pm.h"
>>   #include "intel_gt_regs.h"
>>   #include "intel_gt_requests.h"
>> @@ -451,7 +451,7 @@ void intel_gt_chipset_flush(struct intel_gt *gt)
>>   {
>>       wmb();
>>       if (GRAPHICS_VER(gt->i915) < 6)
>> -        intel_gtt_chipset_flush();
>> +        intel_gt_gmch_gen5_chipset_flush(gt);
>>   }
>>     void intel_gt_driver_register(struct intel_gt *gt)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h 
>> b/drivers/gpu/drm/i915/gt/intel_gt.h
>> index e76168e10a21..0163bba0959e 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
>> @@ -13,6 +13,13 @@
>>   struct drm_i915_private;
>>   struct drm_printer;
>>   +struct insert_entries {
>> +    struct i915_address_space *vm;
>> +    struct i915_vma_resource *vma_res;
>> +    enum i915_cache_level level;
>> +    u32 flags;
>> +};
>> +
>>   #define GT_TRACE(gt, fmt, ...) do {                    \
>>       const struct intel_gt *gt__ __maybe_unused = (gt); \
>>       GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),        \
>> @@ -113,4 +120,6 @@ void intel_gt_watchdog_work(struct work_struct 
>> *work);
>>     void intel_gt_invalidate_tlbs(struct intel_gt *gt);
>>   +struct resource intel_pci_resource(struct pci_dev *pdev, int bar);
>> +
>>   #endif /* __INTEL_GT_H__ */
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_gmch.c 
>> b/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>> new file mode 100644
>> index 000000000000..18e488672d1b
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>> @@ -0,0 +1,654 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright © 2022 Intel Corporation
>> + */
>> +
>> +#include <drm/intel-gtt.h>
>> +#include <drm/i915_drm.h>
>> +
>> +#include <linux/agp_backend.h>
>> +#include <linux/stop_machine.h>
>> +
>> +#include "i915_drv.h"
>> +#include "intel_gt_gmch.h"
>> +#include "intel_gt_regs.h"
>> +#include "intel_gt.h"
>> +#include "i915_utils.h"
>> +
>> +#include "gen8_ppgtt.h"
>> +
>> +struct insert_page {
>> +    struct i915_address_space *vm;
>> +    dma_addr_t addr;
>> +    u64 offset;
>> +    enum i915_cache_level level;
>> +};
>> +
>> +static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
>> +{
>> +    writeq(pte, addr);
>> +}
>> +
>> +static void nop_clear_range(struct i915_address_space *vm,
>> +                u64 start, u64 length)
>> +{
>> +}
>> +
>> +static u64 snb_pte_encode(dma_addr_t addr,
>> +              enum i915_cache_level level,
>> +              u32 flags)
>> +{
>> +    gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> +
>> +    switch (level) {
>> +    case I915_CACHE_L3_LLC:
>> +    case I915_CACHE_LLC:
>> +        pte |= GEN6_PTE_CACHE_LLC;
>> +        break;
>> +    case I915_CACHE_NONE:
>> +        pte |= GEN6_PTE_UNCACHED;
>> +        break;
>> +    default:
>> +        MISSING_CASE(level);
>> +    }
>> +
>> +    return pte;
>> +}
>> +
>> +static u64 ivb_pte_encode(dma_addr_t addr,
>> +              enum i915_cache_level level,
>> +              u32 flags)
>> +{
>> +    gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> +
>> +    switch (level) {
>> +    case I915_CACHE_L3_LLC:
>> +        pte |= GEN7_PTE_CACHE_L3_LLC;
>> +        break;
>> +    case I915_CACHE_LLC:
>> +        pte |= GEN6_PTE_CACHE_LLC;
>> +        break;
>> +    case I915_CACHE_NONE:
>> +        pte |= GEN6_PTE_UNCACHED;
>> +        break;
>> +    default:
>> +        MISSING_CASE(level);
>> +    }
>> +
>> +    return pte;
>> +}
>> +
>> +static u64 byt_pte_encode(dma_addr_t addr,
>> +              enum i915_cache_level level,
>> +              u32 flags)
>> +{
>> +    gen6_pte_t pte = GEN6_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> +
>> +    if (!(flags & PTE_READ_ONLY))
>> +        pte |= BYT_PTE_WRITEABLE;
>> +
>> +    if (level != I915_CACHE_NONE)
>> +        pte |= BYT_PTE_SNOOPED_BY_CPU_CACHES;
>> +
>> +    return pte;
>> +}
>> +
>> +static u64 hsw_pte_encode(dma_addr_t addr,
>> +              enum i915_cache_level level,
>> +              u32 flags)
>> +{
>> +    gen6_pte_t pte = HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> +
>> +    if (level != I915_CACHE_NONE)
>> +        pte |= HSW_WB_LLC_AGE3;
>> +
>> +    return pte;
>> +}
>> +
>> +static u64 iris_pte_encode(dma_addr_t addr,
>> +               enum i915_cache_level level,
>> +               u32 flags)
>> +{
>> +    gen6_pte_t pte = HSW_PTE_ADDR_ENCODE(addr) | GEN6_PTE_VALID;
>> +
>> +    switch (level) {
>> +    case I915_CACHE_NONE:
>> +        break;
>> +    case I915_CACHE_WT:
>> +        pte |= HSW_WT_ELLC_LLC_AGE3;
>> +        break;
>> +    default:
>> +        pte |= HSW_WB_ELLC_LLC_AGE3;
>> +        break;
>> +    }
>> +
>> +    return pte;
>> +}
>> +
>> +static void gen5_ggtt_insert_page(struct i915_address_space *vm,
>> +                  dma_addr_t addr,
>> +                  u64 offset,
>> +                  enum i915_cache_level cache_level,
>> +                  u32 unused)
>> +{
>> +    unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>> +        AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> +
>> +    intel_gtt_insert_page(addr, offset >> PAGE_SHIFT, flags);
>> +}
>> +
>> +static void gen6_ggtt_insert_page(struct i915_address_space *vm,
>> +                  dma_addr_t addr,
>> +                  u64 offset,
>> +                  enum i915_cache_level level,
>> +                  u32 flags)
>> +{
>> +    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +    gen6_pte_t __iomem *pte =
>> +        (gen6_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>> +
>> +    iowrite32(vm->pte_encode(addr, level, flags), pte);
>> +
>> +    ggtt->invalidate(ggtt);
>> +}
>> +
>> +static void gen8_ggtt_insert_page(struct i915_address_space *vm,
>> +                  dma_addr_t addr,
>> +                  u64 offset,
>> +                  enum i915_cache_level level,
>> +                  u32 flags)
>> +{
>> +    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +    gen8_pte_t __iomem *pte =
>> +        (gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>> +
>> +    gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
>> +
>> +    ggtt->invalidate(ggtt);
>> +}
>> +
>> +static void gen5_ggtt_insert_entries(struct i915_address_space *vm,
>> +                     struct i915_vma_resource *vma_res,
>> +                     enum i915_cache_level cache_level,
>> +                     u32 unused)
>> +{
>> +    unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>> +        AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> +
>> +    intel_gtt_insert_sg_entries(vma_res->bi.pages, vma_res->start >> 
>> PAGE_SHIFT,
>> +                    flags);
>> +}
>> +
>> +/*
>> + * Binds an object into the global gtt with the specified cache level.
>> + * The object will be accessible to the GPU via commands whose operands
>> + * reference offsets within the global GTT as well as accessible by 
>> the GPU
>> + * through the GMADR mapped BAR (i915->mm.gtt->gtt).
>> + */
>> +static void gen6_ggtt_insert_entries(struct i915_address_space *vm,
>> +                     struct i915_vma_resource *vma_res,
>> +                     enum i915_cache_level level,
>> +                     u32 flags)
>> +{
>> +    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +    gen6_pte_t __iomem *gte;
>> +    gen6_pte_t __iomem *end;
>> +    struct sgt_iter iter;
>> +    dma_addr_t addr;
>> +
>> +    gte = (gen6_pte_t __iomem *)ggtt->gsm;
>> +    gte += vma_res->start / I915_GTT_PAGE_SIZE;
>> +    end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>> +
>> +    for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>> +        iowrite32(vm->pte_encode(addr, level, flags), gte++);
>> +    GEM_BUG_ON(gte > end);
>> +
>> +    /* Fill the allocated but "unused" space beyond the end of the 
>> buffer */
>> +    while (gte < end)
>> +        iowrite32(vm->scratch[0]->encode, gte++);
>> +
>> +    /*
>> +     * We want to flush the TLBs only after we're certain all the PTE
>> +     * updates have finished.
>> +     */
>> +    ggtt->invalidate(ggtt);
>> +}
>> +
>> +static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>> +                     struct i915_vma_resource *vma_res,
>> +                     enum i915_cache_level level,
>> +                     u32 flags)
>> +{
>> +    const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, 
>> flags);
>> +    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +    gen8_pte_t __iomem *gte;
>> +    gen8_pte_t __iomem *end;
>> +    struct sgt_iter iter;
>> +    dma_addr_t addr;
>> +
>> +    /*
>> +     * Note that we ignore PTE_READ_ONLY here. The caller must be 
>> careful
>> +     * not to allow the user to override access to a read only page.
>> +     */
>> +
>> +    gte = (gen8_pte_t __iomem *)ggtt->gsm;
>> +    gte += vma_res->start / I915_GTT_PAGE_SIZE;
>> +    end = gte + vma_res->node_size / I915_GTT_PAGE_SIZE;
>> +
>> +    for_each_sgt_daddr(addr, iter, vma_res->bi.pages)
>> +        gen8_set_pte(gte++, pte_encode | addr);
>> +    GEM_BUG_ON(gte > end);
>> +
>> +    /* Fill the allocated but "unused" space beyond the end of the 
>> buffer */
>> +    while (gte < end)
>> +        gen8_set_pte(gte++, vm->scratch[0]->encode);
>> +
>> +    /*
>> +     * We want to flush the TLBs only after we're certain all the PTE
>> +     * updates have finished.
>> +     */
>> +    ggtt->invalidate(ggtt);
>> +}
>> +
>> +static void bxt_vtd_ggtt_wa(struct i915_address_space *vm)
>> +{
>> +    /*
>> +     * Make sure the internal GAM fifo has been cleared of all GTT
>> +     * writes before exiting stop_machine(). This guarantees that
>> +     * any aperture accesses waiting to start in another process
>> +     * cannot back up behind the GTT writes causing a hang.
>> +     * The register can be any arbitrary GAM register.
>> +     */
>> +    intel_uncore_posting_read_fw(vm->gt->uncore, GFX_FLSH_CNTL_GEN6);
>> +}
>> +
>> +static int bxt_vtd_ggtt_insert_page__cb(void *_arg)
>> +{
>> +    struct insert_page *arg = _arg;
>> +
>> +    gen8_ggtt_insert_page(arg->vm, arg->addr, arg->offset, 
>> arg->level, 0);
>> +    bxt_vtd_ggtt_wa(arg->vm);
>> +
>> +    return 0;
>> +}
>> +
>> +static void bxt_vtd_ggtt_insert_page__BKL(struct i915_address_space 
>> *vm,
>> +                      dma_addr_t addr,
>> +                      u64 offset,
>> +                      enum i915_cache_level level,
>> +                      u32 unused)
>> +{
>> +    struct insert_page arg = { vm, addr, offset, level };
>> +
>> +    stop_machine(bxt_vtd_ggtt_insert_page__cb, &arg, NULL);
>> +}
>> +
>> +static int bxt_vtd_ggtt_insert_entries__cb(void *_arg)
>> +{
>> +    struct insert_entries *arg = _arg;
>> +
>> +    gen8_ggtt_insert_entries(arg->vm, arg->vma_res, arg->level, 
>> arg->flags);
>> +    bxt_vtd_ggtt_wa(arg->vm);
>> +
>> +    return 0;
>> +}
>> +
>> +static void bxt_vtd_ggtt_insert_entries__BKL(struct 
>> i915_address_space *vm,
>> +                         struct i915_vma_resource *vma_res,
>> +                         enum i915_cache_level level,
>> +                         u32 flags)
>> +{
>> +    struct insert_entries arg = { vm, vma_res, level, flags };
>> +
>> +    stop_machine(bxt_vtd_ggtt_insert_entries__cb, &arg, NULL);
>> +}
>> +
>> +void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt)
>> +{
>> +    intel_gtt_chipset_flush();
>> +}
>> +
>> +static void gmch_ggtt_invalidate(struct i915_ggtt *ggtt)
>> +{
>> +    intel_gtt_chipset_flush();
>> +}
>> +
>> +static void gen5_ggtt_clear_range(struct i915_address_space *vm,
>> +                     u64 start, u64 length)
>> +{
>> +    intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
>> +}
>> +
>> +static void gen6_ggtt_clear_range(struct i915_address_space *vm,
>> +                  u64 start, u64 length)
>> +{
>> +    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +    unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
>> +    unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
>> +    gen6_pte_t scratch_pte, __iomem *gtt_base =
>> +        (gen6_pte_t __iomem *)ggtt->gsm + first_entry;
>> +    const int max_entries = ggtt_total_entries(ggtt) - first_entry;
>> +    int i;
>> +
>> +    if (WARN(num_entries > max_entries,
>> +         "First entry = %d; Num entries = %d (max=%d)\n",
>> +         first_entry, num_entries, max_entries))
>> +        num_entries = max_entries;
>> +
>> +    scratch_pte = vm->scratch[0]->encode;
>> +    for (i = 0; i < num_entries; i++)
>> +        iowrite32(scratch_pte, &gtt_base[i]);
>> +}
>> +
>> +static void gen8_ggtt_clear_range(struct i915_address_space *vm,
>> +                  u64 start, u64 length)
>> +{
>> +    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +    unsigned int first_entry = start / I915_GTT_PAGE_SIZE;
>> +    unsigned int num_entries = length / I915_GTT_PAGE_SIZE;
>> +    const gen8_pte_t scratch_pte = vm->scratch[0]->encode;
>> +    gen8_pte_t __iomem *gtt_base =
>> +        (gen8_pte_t __iomem *)ggtt->gsm + first_entry;
>> +    const int max_entries = ggtt_total_entries(ggtt) - first_entry;
>> +    int i;
>> +
>> +    if (WARN(num_entries > max_entries,
>> +         "First entry = %d; Num entries = %d (max=%d)\n",
>> +         first_entry, num_entries, max_entries))
>> +        num_entries = max_entries;
>> +
>> +    for (i = 0; i < num_entries; i++)
>> +        gen8_set_pte(&gtt_base[i], scratch_pte);
>> +}
>> +
>> +static void gen5_gmch_remove(struct i915_address_space *vm)
>> +{
>> +    intel_gmch_remove();
>> +}
>> +
>> +static void gen6_gmch_remove(struct i915_address_space *vm)
>> +{
>> +    struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>> +
>> +    iounmap(ggtt->gsm);
>> +    free_scratch(vm);
>> +}
>> +
>> +/*
>> + * Certain Gen5 chipsets require idling the GPU before
>> + * unmapping anything from the GTT when VT-d is enabled.
>> + */
>> +static bool needs_idle_maps(struct drm_i915_private *i915)
>> +{
>> +    /*
>> +     * Query intel_iommu to see if we need the workaround. 
>> Presumably that
>> +     * was loaded first.
>> +     */
>> +    if (!i915_vtd_active(i915))
>> +        return false;
>> +
>> +    if (GRAPHICS_VER(i915) == 5 && IS_MOBILE(i915))
>> +        return true;
>> +
>> +    if (GRAPHICS_VER(i915) == 12)
>> +        return true; /* XXX DMAR fault reason 7 */
>> +
>> +    return false;
>> +}
>> +
>> +static unsigned int gen6_gttmmadr_size(struct drm_i915_private *i915)
>> +{
>> +    /*
>> +     * GEN6: GTTMMADR size is 4MB and GTTADR starts at 2MB offset
>> +     * GEN8: GTTMMADR size is 16MB and GTTADR starts at 8MB offset
>> +     */
>> +    GEM_BUG_ON(GRAPHICS_VER(i915) < 6);
>> +    return (GRAPHICS_VER(i915) < 8) ? SZ_4M : SZ_16M;
>> +}
>> +
>> +static unsigned int gen6_get_total_gtt_size(u16 snb_gmch_ctl)
>> +{
>> +    snb_gmch_ctl >>= SNB_GMCH_GGMS_SHIFT;
>> +    snb_gmch_ctl &= SNB_GMCH_GGMS_MASK;
>> +    return snb_gmch_ctl << 20;
>> +}
>> +
>> +static unsigned int gen8_get_total_gtt_size(u16 bdw_gmch_ctl)
>> +{
>> +    bdw_gmch_ctl >>= BDW_GMCH_GGMS_SHIFT;
>> +    bdw_gmch_ctl &= BDW_GMCH_GGMS_MASK;
>> +    if (bdw_gmch_ctl)
>> +        bdw_gmch_ctl = 1 << bdw_gmch_ctl;
>> +
>> +#ifdef CONFIG_X86_32
>> +    /* Limit 32b platforms to a 2GB GGTT: 4 << 20 / pte size * 
>> I915_GTT_PAGE_SIZE */
>> +    if (bdw_gmch_ctl > 4)
>> +        bdw_gmch_ctl = 4;
>> +#endif
>> +
>> +    return bdw_gmch_ctl << 20;
>> +}
>> +
>> +static unsigned int gen6_gttadr_offset(struct drm_i915_private *i915)
>> +{
>> +    return gen6_gttmmadr_size(i915) / 2;
>> +}
>> +
>> +static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>> +{
>> +    struct drm_i915_private *i915 = ggtt->vm.i915;
>> +    struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>> +    phys_addr_t phys_addr;
>> +    u32 pte_flags;
>> +    int ret;
>> +
>> +    GEM_WARN_ON(pci_resource_len(pdev, 0) != gen6_gttmmadr_size(i915));
>> +    phys_addr = pci_resource_start(pdev, 0) + gen6_gttadr_offset(i915);
>> +
>> +    /*
>> +     * On BXT+/ICL+ writes larger than 64 bit to the GTT pagetable 
>> range
>> +     * will be dropped. For WC mappings in general we have 64 byte 
>> burst
>> +     * writes when the WC buffer is flushed, so we can't use it, but 
>> have to
>> +     * resort to an uncached mapping. The WC issue is easily caught 
>> by the
>> +     * readback check when writing GTT PTE entries.
>> +     */
>> +    if (IS_GEN9_LP(i915) || GRAPHICS_VER(i915) >= 11)
>> +        ggtt->gsm = ioremap(phys_addr, size);
>> +    else
>> +        ggtt->gsm = ioremap_wc(phys_addr, size);
>> +    if (!ggtt->gsm) {
>> +        drm_err(&i915->drm, "Failed to map the ggtt page table\n");
>> +        return -ENOMEM;
>> +    }
>> +
>> +    kref_init(&ggtt->vm.resv_ref);
>> +    ret = setup_scratch_page(&ggtt->vm);
>> +    if (ret) {
>> +        drm_err(&i915->drm, "Scratch setup failed\n");
>> +        /* iounmap will also get called at remove, but meh */
>> +        iounmap(ggtt->gsm);
>> +        return ret;
>> +    }
>> +
>> +    pte_flags = 0;
>> +    if (i915_gem_object_is_lmem(ggtt->vm.scratch[0]))
>> +        pte_flags |= PTE_LM;
>> +
>> +    ggtt->vm.scratch[0]->encode =
>> +        ggtt->vm.pte_encode(px_dma(ggtt->vm.scratch[0]),
>> +                    I915_CACHE_NONE, pte_flags);
>> +
>> +    return 0;
>> +}
>> +
>> +int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt)
>> +{
>> +    struct drm_i915_private *i915 = ggtt->vm.i915;
>> +    phys_addr_t gmadr_base;
>> +    int ret;
>> +
>> +    ret = intel_gmch_probe(i915->bridge_dev, 
>> to_pci_dev(i915->drm.dev), NULL);
>> +    if (!ret) {
>> +        drm_err(&i915->drm, "failed to set up gmch\n");
>> +        return -EIO;
>> +    }
>> +
>> +    intel_gtt_get(&ggtt->vm.total, &gmadr_base, &ggtt->mappable_end);
>> +
>> +    ggtt->gmadr =
>> +        (struct resource)DEFINE_RES_MEM(gmadr_base, 
>> ggtt->mappable_end);
>> +
>> +    ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>> +    ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>> +
>> +    if (needs_idle_maps(i915)) {
>> +        drm_notice(&i915->drm,
>> +               "Flushing DMA requests before IOMMU unmaps; 
>> performance may be degraded\n");
>> +        ggtt->do_idle_maps = true;
>> +    }
>> +
>> +    ggtt->vm.insert_page = gen5_ggtt_insert_page;
>> +    ggtt->vm.insert_entries = gen5_ggtt_insert_entries;
>> +    ggtt->vm.clear_range = gen5_ggtt_clear_range;
>> +    ggtt->vm.cleanup = gen5_gmch_remove;
>> +
>> +    ggtt->invalidate = gmch_ggtt_invalidate;
>> +
>> +    ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
>> +    ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
>> +
>> +    if (unlikely(ggtt->do_idle_maps))
>> +        drm_notice(&i915->drm,
>> +               "Applying Ironlake quirks for intel_iommu\n");
>> +
>> +    return 0;
>> +}
>> +
>> +int intel_gt_gmch_gen6_probe(struct i915_ggtt *ggtt)
>> +{
>> +    struct drm_i915_private *i915 = ggtt->vm.i915;
>> +    struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>> +    unsigned int size;
>> +    u16 snb_gmch_ctl;
>> +
>> +    ggtt->gmadr = intel_pci_resource(pdev, 2);
>> +    ggtt->mappable_end = resource_size(&ggtt->gmadr);
>> +
>> +    /*
>> +     * 64/512MB is the current min/max we actually know of, but this is
>> +     * just a coarse sanity check.
>> +     */
>> +    if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > 
>> (512<<20)) {
>> +        drm_err(&i915->drm, "Unknown GMADR size (%pa)\n",
>> +            &ggtt->mappable_end);
>> +        return -ENXIO;
>> +    }
>> +
>> +    pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>> +
>> +    size = gen6_get_total_gtt_size(snb_gmch_ctl);
>> +    ggtt->vm.total = (size / sizeof(gen6_pte_t)) * I915_GTT_PAGE_SIZE;
>> +
>> +    ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>> +    ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>> +
>> +    ggtt->vm.clear_range = nop_clear_range;
>> +    if (!HAS_FULL_PPGTT(i915) || intel_scanout_needs_vtd_wa(i915))
>> +        ggtt->vm.clear_range = gen6_ggtt_clear_range;
>> +    ggtt->vm.insert_page = gen6_ggtt_insert_page;
>> +    ggtt->vm.insert_entries = gen6_ggtt_insert_entries;
>> +    ggtt->vm.cleanup = gen6_gmch_remove;
>> +
>> +    ggtt->invalidate = gen6_ggtt_invalidate;
>> +
>> +    if (HAS_EDRAM(i915))
>> +        ggtt->vm.pte_encode = iris_pte_encode;
>> +    else if (IS_HASWELL(i915))
>> +        ggtt->vm.pte_encode = hsw_pte_encode;
>> +    else if (IS_VALLEYVIEW(i915))
>> +        ggtt->vm.pte_encode = byt_pte_encode;
>> +    else if (GRAPHICS_VER(i915) >= 7)
>> +        ggtt->vm.pte_encode = ivb_pte_encode;
>> +    else
>> +        ggtt->vm.pte_encode = snb_pte_encode;
>> +
>> +    ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
>> +    ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
>> +
>> +    return ggtt_probe_common(ggtt, size);
>> +}
>> +
>> +static unsigned int chv_get_total_gtt_size(u16 gmch_ctrl)
>> +{
>> +    gmch_ctrl >>= SNB_GMCH_GGMS_SHIFT;
>> +    gmch_ctrl &= SNB_GMCH_GGMS_MASK;
>> +
>> +    if (gmch_ctrl)
>> +        return 1 << (20 + gmch_ctrl);
>> +
>> +    return 0;
>> +}
>> +
>> +int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt)
>> +{
>> +    struct drm_i915_private *i915 = ggtt->vm.i915;
>> +    struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>> +    unsigned int size;
>> +    u16 snb_gmch_ctl;
>> +
>> +    /* TODO: We're not aware of mappable constraints on gen8 yet */
>> +    if (!HAS_LMEM(i915)) {
>> +        ggtt->gmadr = intel_pci_resource(pdev, 2);
>> +        ggtt->mappable_end = resource_size(&ggtt->gmadr);
>> +    }
>> +
>> +    pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
>> +    if (IS_CHERRYVIEW(i915))
>> +        size = chv_get_total_gtt_size(snb_gmch_ctl);
>> +    else
>> +        size = gen8_get_total_gtt_size(snb_gmch_ctl);
>> +
>> +    ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>> +    ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>> +    ggtt->vm.lmem_pt_obj_flags = I915_BO_ALLOC_PM_EARLY;
>> +
>> +    ggtt->vm.total = (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
>> +    ggtt->vm.cleanup = gen6_gmch_remove;
>> +    ggtt->vm.insert_page = gen8_ggtt_insert_page;
>> +    ggtt->vm.clear_range = nop_clear_range;
>> +    if (intel_scanout_needs_vtd_wa(i915))
>> +        ggtt->vm.clear_range = gen8_ggtt_clear_range;
>> +
>> +    ggtt->vm.insert_entries = gen8_ggtt_insert_entries;
>> +
>> +    /*
>> +     * Serialize GTT updates with aperture access on BXT if VT-d is on,
>> +     * and always on CHV.
>> +     */
>> +    if (intel_vm_no_concurrent_access_wa(i915)) {
>> +        ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
>> +        ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
>> +        ggtt->vm.bind_async_flags =
>> +            I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>> +    }
>> +
>> +    ggtt->invalidate = gen8_ggtt_invalidate;
>> +
>> +    ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
>> +    ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
>> +
>> +    ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>> +
>> +    setup_private_pat(ggtt->vm.gt->uncore);
>> +
>> +    return ggtt_probe_common(ggtt, size);
>> +}
>> +
>> +int intel_gt_gmch_gen5_enable_hw(struct drm_i915_private *i915)
>> +{
>> +    if (GRAPHICS_VER(i915) < 6 && !intel_enable_gtt())
>> +        return -EIO;
>> +
>> +    return 0;
>> +}
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_gmch.h 
>> b/drivers/gpu/drm/i915/gt/intel_gt_gmch.h
>> new file mode 100644
>> index 000000000000..75ed55c1f30a
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_gmch.h
>> @@ -0,0 +1,46 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright © 2022 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_GT_GMCH_H__
>> +#define __INTEL_GT_GMCH_H__
>> +
>> +#include "intel_gtt.h"
>> +
>> +/* For x86 platforms */
>> +#if IS_ENABLED(CONFIG_X86)
>> +void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt);
>> +int intel_gt_gmch_gen6_probe(struct i915_ggtt *ggtt);
>> +int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt);
>> +int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt);
>> +int intel_gt_gmch_gen5_enable_hw(struct drm_i915_private *i915);
>> +
>> +/* Stubs for non-x86 platforms */
>> +#else
>> +static inline void intel_gt_gmch_gen5_chipset_flush(struct intel_gt 
>> *gt)
>> +{
>> +}
>> +static inline int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt)
>> +{
>> +    /* No HW should be probed for this case yet, return fail */
>> +    return -ENODEV;
>> +}
>> +static inline int intel_gt_gmch_gen6_probe(struct i915_ggtt *ggtt)
>> +{
>> +    /* No HW should be probed for this case yet, return fail */
>> +    return -ENODEV;
>> +}
>> +static inline int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt)
>> +{
>> +    /* No HW should be probed for this case yet, return fail */
>> +    return -ENODEV;
>> +}
>> +static inline int intel_gt_gmch_gen5_enable_hw(struct 
>> drm_i915_private *i915)
>> +{
>> +    /* No HW should be enabled for this case yet, return fail */
>> +    return -ENODEV;
>> +}
>> +#endif
>> +
>> +#endif /* __INTEL_GT_GMCH_H__ */
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h 
>> b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> index 5922e2cf4d8d..a40d928b3888 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> @@ -549,6 +549,14 @@ i915_page_dir_dma_addr(const struct i915_ppgtt 
>> *ppgtt, const unsigned int n)
>>   void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt,
>>           unsigned long lmem_pt_obj_flags);
>>   +void intel_ggtt_bind_vma(struct i915_address_space *vm,
>> +              struct i915_vm_pt_stash *stash,
>> +              struct i915_vma_resource *vma_res,
>> +              enum i915_cache_level cache_level,
>> +              u32 flags);
>> +void intel_ggtt_unbind_vma(struct i915_address_space *vm,
>> +                struct i915_vma_resource *vma_res);
>> +
>>   int i915_ggtt_probe_hw(struct drm_i915_private *i915);
>>   int i915_ggtt_init_hw(struct drm_i915_private *i915);
>>   int i915_ggtt_enable_hw(struct drm_i915_private *i915);
>> @@ -619,6 +627,7 @@ release_pd_entry(struct i915_page_directory * 
>> const pd,
>>            struct i915_page_table * const pt,
>>            const struct drm_i915_gem_object * const scratch);
>>   void gen6_ggtt_invalidate(struct i915_ggtt *ggtt);
>> +void gen8_ggtt_invalidate(struct i915_ggtt *ggtt);
>>     void ppgtt_bind_vma(struct i915_address_space *vm,
>>               struct i915_vm_pt_stash *stash,

