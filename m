Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B57F96D4ED6
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 19:22:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6B9D10E53D;
	Mon,  3 Apr 2023 17:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 049E510E53B;
 Mon,  3 Apr 2023 17:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680542559; x=1712078559;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7m/DbTvsrVzhgq/nrz391c+/SerRVm+8tuSa4VqvJV4=;
 b=BW1DWJMcayOudXFBbxOS0tO2ZIO0SJ9soY+MJ6TXL11Sl44jAxOGFjYq
 DUpv91xR3LwSKZvb8uYrbf4dKOazj5OAfm1mQbSdX30TK3QHBWpKl0Lgf
 RnmH00qXkia47LseBlVRLlkINzIy78MUHpCyAjW97mqNObAAy0syiqNRd
 lqWS9wl/pkvUXPeoCV2OzIVZVvsOQGkrjDg6iLxFxJcWjAkEEu4WzwGtE
 Lqdunh227RWMVEqcDNa99VDE7JVzPy/LJ7SOInuhR0fplsfm0gE00+F9H
 wBMYYAtXa6P8Be+r62kga6T/y8qTmeIcQ6ZUetnOepRJRYQuI8Cu8qZUb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="340696179"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="340696179"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 10:22:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="860291970"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="860291970"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 03 Apr 2023 10:22:37 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 10:22:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 10:22:37 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 10:22:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nXlVm32ALYF06fI0xdv1t70UIdji7wfS4JahLdyKVu5t/3kBVdiu4YmLtUiDchvPqjGrwpwQsDtu8eT9iALpaoU4xZASDc+A6NvyFsSZhDEPSGov6WUmJIkB+C4hPGIp53DODRezmYVWQdYj8qeXOr1nvO5sR1Bn4nM3rYNQstUvrPsI2zSHn6rRl0BPnkh5hOZiMZrccbVHxjlKRJBwKXfDGrmj8oP8O3DhPJRDi5NlqCg2YtNMexNZp0zMqVkVyjzJWlSkJ+GgB0peK2SayYjONk2llDzZnzfRE9snWNaAl09eSZoFwEaPlpLEgV8WtwNnBxHDwOHfWpXk3JZWNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PI7EdT2Hh7jqjfGjtuZE/ut6SJcYrG0pIhIeJ3wVGJE=;
 b=H/xDs4K+/Fj6wz2j3Tov2jAupotkeMHiNpreU5N2IVKl2gmbadzbvOUb82iUOPfRMDeJcFnuxjrmIrT7V3CZp+HCD9MTKlUZmG/MsYbuHo+AjsyjsJvyR2klKz/Vc4R58YFKPBF2445yRn7uBKOgRithhJMdlf6h8YDR2A9jVPq70qt39vfq6JeiZfLWka80trAeUlilZL4gT5Zu1RF1CJHKl+NYdWgeztyr0e7HtklB3mlpmzIzVhcCOaKhdwUknYfV6FZM+OtlDYN7ByoVjHKFhTVo2Ysz9Rgz8aTbve6t7xuyB2f/kud7FWpg/htf1mPjWQeBcagb2uyp6uUjZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by CY8PR11MB7105.namprd11.prod.outlook.com (2603:10b6:930:53::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.29; Mon, 3 Apr
 2023 17:22:36 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::9722:bfa9:c7a:1250]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::9722:bfa9:c7a:1250%7]) with mapi id 15.20.6254.033; Mon, 3 Apr 2023
 17:22:36 +0000
Message-ID: <ee6394ca-ccab-7fc7-ba23-f5bdb449c45f@intel.com>
Date: Mon, 3 Apr 2023 10:22:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230328020028.2143954-1-vinay.belgaumkar@intel.com>
 <20230328020028.2143954-3-vinay.belgaumkar@intel.com>
 <87bkk8h3uy.wl-ashutosh.dixit@intel.com>
 <7327d651-d31f-8e20-a9a9-38b0ec37b86a@intel.com>
 <87jzytdlkl.wl-ashutosh.dixit@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <87jzytdlkl.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0024.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::29) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|CY8PR11MB7105:EE_
X-MS-Office365-Filtering-Correlation-Id: 42abf86d-a422-477d-b6c8-08db3468046f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xXKWgcQ/6NPxbcOql27+dBuv6/8XLTUcyY7MAbKks/SXpaWOOHX0n7RWJ2RDC35fI2sXGDXxLKcbQLojq2ePafrFUqYABNOM9LghJs3qc0tWT8mixnyUlBGR+c46fmB1GGmrzPtCWQhqYkuMKKlz280wTqWwQfFGwarDQChUsQ+2tDCQ+zgVDooHHYpoum+lvNawebg8AzPryNT4k6QWCHrvcjVTlaUABuP0X9o8Z9YCjZEqqbGmsZRI4Ri/ltuZiQJCvRu2OEAF8xEnJL05kuojPa1Y0CX2c5OusZ/+EXaUPF6Q493UeG3vFM89/Z3QWH++Dn0tDSsS2OcLvwIQOAVmmF4NrSqoJqYY3dWWCdPzie/i4IPvinnEhEc4OFB4iOdzuR/83B17qqS2cGPnBihmfrFzopMNN1pSPoLIyeZZbbaUNAmzWEw3bnp6DmehfJCRm3nYjmCrYqI3ayoD6+kBsLBhkWQjlN9ZvxnUhf5NRMw8aThF1PFAih1kTQjeamSauhnXXJtv9iCPWhwKatAkXTYCTjTmh6834k/2E4/PhTSySxFwKrebcql58NfDLuz5YKyr5z8hmpZV1WG1uClZYCt+2/GbsUJiZ9hRBanlpECNHAhYhseDsmiljeB/N8NHH6BRvn2QAlqZGAIGYg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(136003)(39860400002)(376002)(451199021)(2616005)(66946007)(450100002)(4326008)(66556008)(8676002)(66476007)(6636002)(316002)(37006003)(478600001)(6862004)(5660300002)(38100700002)(41300700001)(82960400001)(53546011)(186003)(6486002)(6506007)(26005)(6512007)(86362001)(31696002)(36756003)(2906002)(31686004)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWpobHB3VW4zV21GTGIyd2xTakdBTC9NSGp6Qi9KemV1cFFTdFN4WEJidncw?=
 =?utf-8?B?Q3J0UWlwNk50WDdpblVXQWlVaWJuTHVzdUJhODRLUnYzenQxM2s3aG9LME9Y?=
 =?utf-8?B?WEhQdy96V0xBYm9CVnl3YUdiQ1kvMldUSHVqQ3BXSzY4NUh4Q1JkanFHZWNl?=
 =?utf-8?B?ZjBsalVoMEJYN0FZUEE4SHgrTXVVMG5rRTU5UkE1SU9tckRNVHUzYnU1L3FY?=
 =?utf-8?B?SS9TTStFbWVmd0pFMEtjUE14eHVPeTJDTVZGQVl5RUJZOFQ3NVA5dEc2L0Fz?=
 =?utf-8?B?VmZ0YjNXNkMvSTcwVzl6a0VxeUZvaVdjeVM5aUpvQkkrT0NHR21pK2tmaU9k?=
 =?utf-8?B?cXhvRzFDNXlLWVFodFY0SU5SZjdyMlJndk8vWi9yMC9pSmlVYXg0Um1HeUw0?=
 =?utf-8?B?RWpVazhidzNjUTUvYXhFL0lKQUFkaVh1WVRrbFAzZUpiU0x3anBWSm9QVit4?=
 =?utf-8?B?VExpYzdvOGJlQU5uWWtUOGg2M3N3MDZqV1BqTlgwVTNEY1FnWlh3MiswZXVt?=
 =?utf-8?B?VmlpTGhqRlV0czFJZjJqQldHNTZNUHVaNGk2alRJRDFIWjhrNk5PbmJYRlFU?=
 =?utf-8?B?Z2JJdzd2OVR1NHpObU9ydlIrQ05iWWV4c1J1YSsvalZMemtmUlA1Q3Rnb3Nt?=
 =?utf-8?B?Y2djQ3d3UndCQXFTVTlaUlAvV2cxZUFreWlrUmFPM2hvL1JJOGVXRWpaOTNh?=
 =?utf-8?B?YVZkUXV0dEZ6NlgvVW5ZNnN4MnB2bGROdnUwakVHUTlYdzBWYTRXYWZCK1cw?=
 =?utf-8?B?em5ENXBtdGl0QkQyVXoxU1NKMUpIVEtXaWRPLy9wWjhpbEg5SVU3emRGR2RL?=
 =?utf-8?B?UTJDKy84TmpobXpWWW1uOXB0UkZqMjhOTjFCY1ozbTdFNXQ5TVVZOHBHOXR2?=
 =?utf-8?B?ekU1Sks3c3o4Lzg4Tld0SlByVHpjS29HLzlSL3dPeEpqZnVTREUxSjcydTFW?=
 =?utf-8?B?bkhpeC92VmxhZ1ZmRFFOeGlOdUlQaXVCSWdHbnVOS2NQOW1vY3dvL1lmb0R3?=
 =?utf-8?B?RFZkemM1eUVPMWFzdlVnV3c2a0RyZGFTZGpjV2xOUmNURkNmZVRMYXkyU1RT?=
 =?utf-8?B?N1EzUmdmMnVjSHRIRjdtMm00MGhrZmsvTjIyT2tDeVQxdldyTExrc2xGbThx?=
 =?utf-8?B?RE9MbU15VFNuaXRTNXRVYmdSaXVEQU9yWFdXZTY5U2VYRk94QzFkeWVWdlF3?=
 =?utf-8?B?MFFYTTdLTkNxN0RNRjVVSks2RTZUQ1kvVzE0SDdwb2lNRlh3QlFZQ3UxcVRv?=
 =?utf-8?B?WUJLc2V0Qy9jR090QnFPOTNpQTZXQmk5UEgwODFsZUNnTzZWUlNvZTJwU1Yx?=
 =?utf-8?B?aUVSOHlwaU1mUjFKNFQ5cjdBbzBwNE5MRTdYSFhuQk5nUmo0VU40R2FHMEY5?=
 =?utf-8?B?MThZN0Q5UzRzN0lyZUtaOWdyQ3p6a2JBTmVpV1Q5ajlOa2g2RVYvZm1odVpl?=
 =?utf-8?B?QUZLcG5RU01jb1ZldU9mNndqak9ZbDJXbHVralhGVGNhZW9YZTFRTGx2ZFB0?=
 =?utf-8?B?aE1CNDhCQzZtTWNnYVlMcGV2R0lvMkFrY2xhT1RZT0JFQ1pEZ1IyMGN3aWxH?=
 =?utf-8?B?UnpNcFltTTlSVDlEeWQ4dG9YRVNncDM2aVJuMHpZYUFWM1lJYUNlVXVBaUd5?=
 =?utf-8?B?bGRoSDRPWjJnOExmMEZMRUZRWFgwU3N0Wi84SXhEUHNucXFsWjNRM3RHWkIy?=
 =?utf-8?B?cDgxR3ByOGNyTmZxS2ZLbEFmNDFaTVNDa2QzencrQXYwd1ZHYTk5RUtSbWdu?=
 =?utf-8?B?QWV5alNVU2t0dFd3QjRhVXlyWm5SSnVpQmhsVjFwMXY0eHhnT0VSM3BUZUtU?=
 =?utf-8?B?Y283MWZsT0xZT1NMT1NrUk1BMGdadEZCUVFBei9xTzUwa2lQZU4vZXJ4RXRo?=
 =?utf-8?B?dkZ4Zkd0c1lXRkQxUy9tN1dDWld5WnJNN2dNdTZHQTlLcDRQRGJDT3VpcTZx?=
 =?utf-8?B?aWVmUWMxMi9UeTBCY29JTVNveXRPZmtlbVNrTEtaUzRIMEVjS3RxNDZHNnpM?=
 =?utf-8?B?RTlZSUlTY3pzNi80MlpmdzJQUnJSN0dncEV6Snd2Vlh0dXVWZldGSm5WTEpI?=
 =?utf-8?B?em9UZ1RVM2dwYzZ5RWYveDRid1cxNVYrYzgyYmlLSWowWGJyV2I2czhmaWRv?=
 =?utf-8?B?c1pYL1UxSkFrWlV5dTFhb21leS81c1QzaGtnTFU0Ymgwajlyb01HL29yMUJ1?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42abf86d-a422-477d-b6c8-08db3468046f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2023 17:22:36.0396 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ucOpVNC7t2j0wYaVigQ4xkgyyOO6X2CwvU7ukjdCjwvBJf6rvtZE6D+rVb1lEvfFjpbzGLQSV7NFC0y7QNCKpaur8LzDyxQuqC2sQxQPgkU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7105
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/2] i915_pm_freq_api: Add
 some basic SLPC igt tests
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 4/3/2023 8:36 AM, Dixit, Ashutosh wrote:
> On Mon, 03 Apr 2023 08:23:45 -0700, Belgaumkar, Vinay wrote:
>>
>> On 3/31/2023 4:56 PM, Dixit, Ashutosh wrote:
>>> On Mon, 27 Mar 2023 19:00:28 -0700, Vinay Belgaumkar wrote:
>>> Hi Vinay,
>>>
>>>> +/*
>>>> + * Too many intermediate components and steps before freq is adjusted
>>>> + * Specially if workload is under execution, so let's wait 100 ms.
>>>> + */
>>>> +#define ACT_FREQ_LATENCY_US 100000
>>>> +
>>>> +static uint32_t get_freq(int dirfd, uint8_t id)
>>>> +{
>>>> +	uint32_t val;
>>>> +
>>>> +	igt_require(igt_sysfs_rps_scanf(dirfd, id, "%u", &val) == 1);
>>> igt_assert?
>> ok.
>>>> +static void test_freq_basic_api(int dirfd, int gt)
>>>> +{
>>>> +	uint32_t rpn, rp0, rpe;
>>>> +
>>>> +	/* Save frequencies */
>>>> +	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>>>> +	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
>>>> +	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
>>>> +	igt_info("System min freq: %dMHz; max freq: %dMHz\n", rpn, rp0);
>>>> +
>>>> +	/*
>>>> +	 * Negative bound tests
>>>> +	 * RPn is the floor
>>>> +	 * RP0 is the ceiling
>>>> +	 */
>>>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
>>>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rp0 + 1) < 0);
>>>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
>>> Is this supposed to be RPS_MAX_FREQ_MHZ?
>> We could do this check for max as well. But this is trying to see if min
>> can be set to below rpn.
> In that case this statement is the same as the first one (2 lines
> above). Is that needed?

ah, yes. Need more coffee. That should be RPS_MAX_FREQ_MHZ.

Thanks,

Vinay.

>
>
>
>>>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0 + 1) < 0);
>>>> +
>>> After addressing the above, this is:
>>>
>>> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>>
>>> Also, before merging it would be good to see the results of the new
>>> tests. So could you add a HAX patch adding the new tests to
>>> fast-feedback.testlist and resend the series?
>> Sure, will do. Thanks for the review.
>>
>> Vinay.
>>
>>> Thanks.
>>> --
>>> Ashutosh
