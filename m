Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1956157B2B2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 10:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA3918A334;
	Wed, 20 Jul 2022 08:19:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 753A418A334
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jul 2022 08:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658305167; x=1689841167;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=haKuPx9rSGsEZaya4CsDzkqXmUf5Kdfims/wO26FlhI=;
 b=L7pIqJkXAvXX083pzOE7Q3jki85+QS3xG3OVpkS9bJDPEbXy6+ROxTPO
 k60HMi69Rnr0/1MRaTusOmA3zkvnUzWMa/jcoKsnGZ1VT1JY9aLjlzGYR
 Nca8pwlACXA0HZ4yYS/jvVmQh9GkNRPDZdOcIA0EAXj3U5AuFh+Y1maeb
 YJgoudQyKNeWXB3d3ahGqsJ0DaVwe8PT14jf9KlusYrcEdvx6MFo6QCyG
 7ZKZ/8hfk/mlbRLk7q8eIOlWOPDFFG39Yge/Ww8IypSq5sGND6p74k5W7
 yw0hra5uCla6q3j/oYPcODD+q9nom0ouw3MH3Ff+7W3JKa1FaeluT4U9l g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="286724364"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="286724364"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 01:19:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="925136412"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 20 Jul 2022 01:19:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 01:19:26 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Jul 2022 01:19:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 20 Jul 2022 01:19:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 01:19:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EKXFNLbpgxPK6GSlRtr/nW0qBss+KSmpFcfdKRD72EVKdMQqxHPbGiCmbrvYCvZjJVBiuXak6gaecX1DcfIwlFwsR/HLCS72rQZLEDMdsWQlVZb9HpvS8E0a9889X7k3si2MEq5b7iWK8PY27QpJNEGkOrheFbjA++/S/EFZ05zi/I4hL3Nyt+GYwOkVieduMX9CO6mE7lZBuseBcbhQ6w5E8X/Dv0B4pbLztQMP0+mGTMReTRCO9T0Gj+PrpXBN40ddKec9FnE4f9Tf637ATatw+JM1nRYMUxfIjv7MNSO9fDQI334bBKitCAQy1HQ5yI5ehAP4lQSlS2wsHKZk1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ww01rQXp853brBQV4+zZO85Q4NGoGX+s+Xt+h0gbz2M=;
 b=eNA14197pqWpInrLMN5+WeU6DCujlHF7JGrO89oWAO6EzDZSTPBIQqRPE4fHDHWcJgtVs+DNfoJk3z8mPIcdsXWzcv07ZNcdRzi31jAppmRcmyF8tD1Oum5Lyc+UzPZ9hCN3afpYFVkb1hfdZBMB46+LUGPzq+tOihHhBLiRrjiGiVkpXELrS8eq1ofK2SnGPNwH58+T45WncJYvMUeZ9z/VmBayi7J6jhBIVoQlgJvgAzeAfRLRuhdrP/qi+fFN9fOf2hwImGEEolQPrr3Cd+x2h/YJYHNikG+NU5pnCC5qERCM+ae0ReKUzALn2901GEdLBUdcjsdZJxXiD3O7Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 BN6PR1101MB2195.namprd11.prod.outlook.com (2603:10b6:405:5a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.14; Wed, 20 Jul
 2022 08:19:23 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::2976:e41b:6b80:173f]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::2976:e41b:6b80:173f%3]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 08:19:23 +0000
Message-ID: <ef543323-4341-77d8-d0b1-059331cf3ca4@intel.com>
Date: Wed, 20 Jul 2022 11:19:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20220630083508.223348-1-lionel.g.landwerlin@intel.com>
 <6bbebede-8e13-6e5c-75df-0e19c0bd51f0@intel.com>
In-Reply-To: <6bbebede-8e13-6e5c-75df-0e19c0bd51f0@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM6P191CA0042.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:209:7f::19) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 41423676-57bd-4aa3-bdef-08da6a288d4f
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2195:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: alDhOJN8vNdeVIPhEQfpKTSOcLZPd8p6ke+3A4auL/Zfs7QmGdTJHAMvJtgur9RabsnYk14sBEpQJSnmBRupQsn31qTNSWwXtsChyUsHaejsFKU94IzQPiG03aZgYgGXZIwYXjbiQq3RDf1nQxgzcagBna6yLb8zeDOvVU/ahQ5Ueg76Wl1Y/R0uAjOuwZGKJ6B24RMpikAtt6cbnLskI14uKcXJFVasufy7qb3qDYAGjWMY4JjDo5rTg+j6UNNUQUwy+gkPo7nZn9Dhmvi7akZl8EBGrIsAU8vpbbpjf+tFr/Lkj+Nmz+xagPYMSnmrX+YV9dVGOtedt8MuUNiPW4P62nQPa99Z6cw0HpWl64w6G4lXCDJu60f8ZaZDSnJ0I8OjWJ/pjY8ijoIGoIxDOkRnjym53WNkg8s/2Z9P0fGgJnVexxhDxeutVj6KJuBtblIqhImjbgN5KS6Ludlhba6d6o2Odb8jcE5IeEaOcsRMqdJ9BgJlPj15pQ7k2j2cJsY9AmVDCKOBWSlDDI07qeiLGbQX8wm5/76rOWjJTk3fjgUmaUbZSJBYnd5WtyG0ikAbWXgONcuNWTT0EqW6XdpmiVmUDqNU4Fa1wNdHyv/S1PZBrlOK9tbtmtP5oSetrUVB69UrFPkoNFeY9kFzimrLPDaxyu+uw8cLXrb27wM+B5XBheGJWtSFpyHywjiO48cwO0EZMKRy0yqyKGEWOFTYpLEsnvzN0rWfGoG930Qi+AFFwqDRz7qvUYbuDaq/3kD9CyBQcMafUMZLvPqm5TBWYv6CxFYjxRlWKk+FaUPTLgIespCpwKaA9wXj68pILs75ugxno5k/hI11HBd9oQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(346002)(396003)(39860400002)(366004)(66476007)(86362001)(6666004)(6486002)(31696002)(66946007)(8936002)(41300700001)(66556008)(8676002)(2906002)(478600001)(5660300002)(186003)(31686004)(36756003)(6916009)(316002)(26005)(82960400001)(53546011)(6512007)(38100700002)(2616005)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEowVnJ1UnJBTlB1SFMzMTJhMnhmV3RDeG9IQWpHRW9QUEM5WnFPMWN3TWdy?=
 =?utf-8?B?aHNZVWNoYWEwbkFnbVZCbDdRaUNhcGRqTUdwNzdldVBXZXQvUU8xd2xDQnFn?=
 =?utf-8?B?V29Mc0RNNzh4QzJOZjcyNjU0TEx3WDlhS250M1lPbjY2djMwWGtGUGtoSXd0?=
 =?utf-8?B?V3VjejZwbkRyTTNoWmd6QlM2V3MzMitxYks4MnByYlhCWDU3ZVRlNllzVFk5?=
 =?utf-8?B?eGJkNkhMMHgyQkxCYWlDK01RZVIzeGNQenhWQ1FrTG1sUWdTMVB5WlR3TTBn?=
 =?utf-8?B?ZzZ0dkJMeEduSlJnSmE2YTM5TnlXbzZIeTdJQXFUWGIrUlFiM0JZb0ZQaktt?=
 =?utf-8?B?bFBGV2NUZWpZb1E0NUsrL0ZMejRkRlczdEo4WnAvOTM4MHgzNEtmZlp2STAy?=
 =?utf-8?B?bDJvUklma1dRR0xRMUNMclJYK3crZ0poS09KQXhnYldjcG52YXh6MmVWSi85?=
 =?utf-8?B?VWNLeVEwelNVM1c5b0NQaUU2Uk04bk9pMzYxYmc3RVZ1d3Q4cUhucXlMVHRY?=
 =?utf-8?B?cjZ1YmJTM0dRRE9WT2dFZnEyS3d4RWRsdGZZd0pJVVo5YzFRWUpVbG5leEFY?=
 =?utf-8?B?NlBPUXB3Z09mMkZaTFEwOFl6OE5BWFNVQ1drOTF5OWlPbjY1bVIzaXorNEt3?=
 =?utf-8?B?bkM5azRRZGtBZ0JVaFIxT2liL2E0MVlnT3NYeGxDdUhPNWgza0pyWEpiN0hz?=
 =?utf-8?B?WDJ2SVpqK2xWOXFwZ0ZqVDNaM2xPOFNsVnpEOE1xNVZKbE9ENnZNaTh3SU9Y?=
 =?utf-8?B?Q3FqelhzZy82NUYvYk1pZTA1MktTZ2dFSG1kTGFyUDVub2lSMUlMaXpLZXo3?=
 =?utf-8?B?cjhFSG5IMlIxenNzSEdnbzBUeU9FMkFodHNocHRHVU1Bc3hCUEMzbXhHU3JF?=
 =?utf-8?B?aDlYQzZvN2N5MVpjNEZNSFZyeEdlbjBOS09xbW1qSmFhUFJVSDNiYTdjRmhv?=
 =?utf-8?B?YkNGMTdsVTZiaEFUUHUzWnRvdXpncXp5MGgwMXpUZTVndGt6dE9jeEdORjVz?=
 =?utf-8?B?OGZuS3ZHUmZvV3F4dHBTRGovY1dzZ045ZncrYU4rVGZzU3ZDNWRQdmJ2bGVI?=
 =?utf-8?B?azRjU04vMVJsZXBUY3M1aWZPbDFBZWFBT0N4TEhBQ1ZRMTc5ejNVRmpabEIw?=
 =?utf-8?B?Z25yMkZTdWdDbk5rU0xKa2NVeHFEc2V2a0I3WHpBbW1tWWJoU1lneXRmTlQv?=
 =?utf-8?B?TTQyTk1oU1FnYXdFeHlVVXZWdEtIOVRpNVRhOHlvd1U2QWhGYnZuUzI2NFJB?=
 =?utf-8?B?N1JaQlhvTHhJQS9wNUl4UVJaSXFRTWsrYW55emdoVnk0cGdpZ2MxVXN6ZnNY?=
 =?utf-8?B?Q01GMXUyN3BSSEl4Nmp2ZFlyaTk2cFliTkNNRXcyaW1BM2lHdjR6Q0JHWHh0?=
 =?utf-8?B?UU11OHF5Y0hSM1R3QkR5Ly9KSTVtTGFncXFMOXcrSVNPTTBueUFtbDczSFcv?=
 =?utf-8?B?dGF2VHdyYXdIejVFTVBaaGRid0IwRUVXWlBkb2xYRW50TUhTcEJZV0NsQmZ0?=
 =?utf-8?B?dzVCZFFiR0JJaVY1MTllZ0d3djZmc1JETklMdWNPc0hDa3ArS0c4Wmcvdm1z?=
 =?utf-8?B?KzRueHhyZFFGSWZCZEwvUUJVZHJBSmNTa1B1eXh4bFdnWWx4UUdML25KN0dS?=
 =?utf-8?B?OS9yZmFDcURkV0MzU0RUcWtNNEt0RUFnWXdZOGMxRTU2Sk9ESHFMMllVK1RM?=
 =?utf-8?B?dDRVTENKOTNHVGNNTXZ5aEdQUlBUWFNEZEFQcC9UcmRqdVluU1hZQ01BRFZz?=
 =?utf-8?B?eE1kMndzeTVJakw2L2dkNEdRN0RGUEtYOENaNmpqcjhjUFkrSGx5SEw3Nm5H?=
 =?utf-8?B?N2MyTnluR2szNnhMM2lQNjF2bWVZOUUvWWNHTU51K3dxZnpvVjZ4OXN6Tmps?=
 =?utf-8?B?bE96WkQ2bmIwQkNIOVpkRDl0VFRvVjdnNEtyMytJSG1nS3ljK2N1azZjalVz?=
 =?utf-8?B?UGdtODdBRnlYOFIvenVWTFMyVW56MDlmdnluQmFUV3doczZtYTFodDkrWEdp?=
 =?utf-8?B?TXlMUVBpOERqYzlEWnRwSWpEb3ZYS29QWTZiRWdrQ2VPSzJkelRGVXJLYWxp?=
 =?utf-8?B?b1lOYWpabUN5NE9BbUtLcGhFdlVxOXZiQ1NkSldNVFRScFhYbVAvUE85bmF5?=
 =?utf-8?B?U1drUXB4U3dXYW1mS2t4MWNsSWtVdmIwNEx0K2xBd1k3YXhsUHcxNEtQdkRX?=
 =?utf-8?B?MlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 41423676-57bd-4aa3-bdef-08da6a288d4f
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2022 08:19:23.0739 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h3QLocJF4URnIpA0sYDYQgYj5P+MYGbF3NC6es4T1R5VTuVlwdPvh2SqeHH7R+LWHUREwrxYcCBKUnFjJhatOOHpwx7LB7BizxUSGAsOp0o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2195
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dg2: Add performance workaround
 18019455067
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

Ping?

On 11/07/2022 14:30, Lionel Landwerlin wrote:
> Ping?
>
> On 30/06/2022 11:35, Lionel Landwerlin wrote:
>> The recommended number of stackIDs for Ray Tracing subsystem is 512
>> rather than 2048 (default HW programming).
>>
>> v2: Move the programming to dg2_ctx_gt_tuning_init() (Lucas)
>>
>> v3: Move programming to general_render_compute_wa_init() (Matt)
>>
>> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 4 ++++
>>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
>>   2 files changed, 13 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h 
>> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> index 07ef111947b8c..12fc87b957425 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> @@ -1112,6 +1112,10 @@
>>   #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS    REG_BIT(8)
>>     #define RT_CTRL                    _MMIO(0xe530)
>> +#define   RT_CTRL_NUMBER_OF_STACKIDS_MASK    REG_GENMASK(6, 5)
>> +#define   NUMBER_OF_STACKIDS_512        2
>> +#define   NUMBER_OF_STACKIDS_1024        1
>> +#define   NUMBER_OF_STACKIDS_2048        0
>>   #define   DIS_NULL_QUERY            REG_BIT(10)
>>     #define EU_PERF_CNTL1                _MMIO(0xe558)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c 
>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index 3213c593a55f4..ea674e456cd76 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -2737,6 +2737,15 @@ general_render_compute_wa_init(struct 
>> intel_engine_cs *engine, struct i915_wa_li
>>           wa_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
>>           wa_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
>>       }
>> +
>> +    if (IS_DG2(i915)) {
>> +        /* Performance tuning for Ray-tracing */
>> +        wa_write_clr_set(wal,
>> +                 RT_CTRL,
>> +                 RT_CTRL_NUMBER_OF_STACKIDS_MASK,
>> + REG_FIELD_PREP(RT_CTRL_NUMBER_OF_STACKIDS_MASK,
>> +                        NUMBER_OF_STACKIDS_512));
>> +    }
>>   }
>>     static void
>
>

