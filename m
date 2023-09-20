Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD17E7A863C
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 16:11:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FDF010E4C4;
	Wed, 20 Sep 2023 14:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3E7110E4BB;
 Wed, 20 Sep 2023 14:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695219075; x=1726755075;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=E04iOeHsOzNDzUhghS6JIP0QZuaFFf6KCoXYgH2HKhs=;
 b=TJPlUNZP0jdcTELkD+/fTuHXW37+MS6+/hNZ9v7ICTsVHu7m+p1Ic3ML
 feEpezodiy271A/h+a51JsS2rM2RLng6RqqCkCDIpLWTVnb0roIf4YTGI
 vrMN819YeLLsbLpEjrqZZHYN4H7TUqNwJoogTG1ebW5QJqmrMs4DRg08u
 AZTF3sTpjn7O1CrSGB/54FmAQD9vb8HiUgsJKAbrRxtWB24PNVbQ2RaKm
 K2oQHu27NmGnEAf/X++KmOXqjWtiQNb00yHBvy9bU1BP7IdWjeTiAwiAI
 B7v7qHdvclNGuiiZPJtEvKXhwHslabonPmFfLNZ5CFF/55vMZvg6QQjGG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="380138410"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="380138410"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 07:04:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="740220197"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="740220197"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 07:04:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 07:04:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 07:04:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 07:04:34 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 07:04:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FUuub/KJuh2EwUDq0EGdd3ZMvLEauhOGghNgmXXGJreKbshANtv1bhKZsUl/Iogru0PrOkMnLqo/7lUm457e6O4cGf6Dlz7lD/EiBUD61CFxvGOaaGS+kf/MJ8LvKEpL4EyNrOT6Jy4Ik41bJrhrOucUxBlR+4eUL/E5JhmoLV0epIGhEw587Hld4nqaiFbBlvRvJ6Y7+ujAzmAsxNyGo6Z8UcXeLupXjL+RaBHIRMuiJx+f4OB2aKSVBH7QhzxnnWs0jlUdpaaMQAz0xe0+xcP6u9nFRYGwq0CVVAFLtEHr01pP3zcdDpU+toLeoa5VszDuNb6vqDwzk00xH3uU+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qlDjGD1NcdOKOZ0YSJz1uDVuDZmU8konH90YnUuZH/k=;
 b=aEgzsaT0NwaNvpyDrHbbNq1w4bKRI3kAzMuNSpgcjRZdyE6jd2XzmARim11olTizb6XH4zFDcn8GqyfQsxRYQB6CrXO17y2cdItxo/pSl3smkAVDlNxtT8Tr7fBQw8xR6p2qEwgicFckRUIhW/qEDM4AfOxSg7w4DsN+vfeN3hZ6NBF3gQAC0LgsImuP1eCe/eo6QUPXhRgUS//hf7leUbB5fYA7UYUBr5DKdevO31TxI/zw92sff4wVKN31exw5/2COOyHThlR1hZASHYkBFIHJQCDbf0uJ0N+okFlcdv2cqHj+0oRaE6Ryt1YP53aV7EFFM4oKEwjjn4iYEKqH5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 SJ0PR11MB5053.namprd11.prod.outlook.com (2603:10b6:a03:2af::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Wed, 20 Sep
 2023 14:04:32 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::6b9:384:8202:b294]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::6b9:384:8202:b294%7]) with mapi id 15.20.6792.026; Wed, 20 Sep 2023
 14:04:32 +0000
Message-ID: <7981d753-67ab-9d57-7925-77eb6cbe3f81@intel.com>
Date: Wed, 20 Sep 2023 19:34:20 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-US
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
References: <20230918190259.2817143-1-vinay.belgaumkar@intel.com>
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20230918190259.2817143-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0047.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:49::11) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|SJ0PR11MB5053:EE_
X-MS-Office365-Filtering-Correlation-Id: f3ba3872-ce8d-4706-cca3-08dbb9e28326
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TCrpm9YOrSt+Z/1p3RkeBbVPPbhMzwD55z95UeTPlvKDJmwZ2p2tEGhmELMwofCuwxWGhNcy+tmnW359hsWSkWZuEzYfct9rXFiPhEM10A2YdDLEZf7j/inRntG7NTBKVdkf4zQ3WNE8r6Im9nTZ1Faj66uIMLzsOUArvBIgp3fYbAgFz1axRwQhYSZZmPLYzeO9Wx2hgjRmGXg0xTj4JBRcPkY69KHeimAxfvuqrtuFqkMBMvc6ZU+PSV2M+Boq1IgSuJX+1V192k4U+0OPMiY9WqRgPLfew9Zb1ONv6tmH1KUm62/ZTHiAU7P9r25OAAGJunTltGzATM+7fQs/Eo4/60fOiT2/sqThds/1niuVMlWIN9NGAjtXIIsc2OqaSztg9ze68Trmx2IGnmD2Oscl+YusPsoYeXyVQzJFDIvZBzlYJs2mLCHTa6oHyzM8P/FATzxQOQVi1QPLQnToRjH8KFCdVR33Jq/lwuKhFxqdPIft5lV9mfFMBJwatF37tJVhBHeLSO9I++clYFdCenpFNPbGFn2XVK7a35uRMa2ouGX9vAHrfEgKTapdIpIPHV0nPCorEFW+IjOVqo9g1/l11Ixv93rZRMRGlHgcvIx0c5zPJXVDnZ64Lrpx7pYJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(136003)(39860400002)(366004)(346002)(1800799009)(186009)(451199024)(2906002)(86362001)(36756003)(31696002)(82960400001)(38100700002)(966005)(316002)(6512007)(66556008)(66476007)(66946007)(41300700001)(450100002)(8676002)(2616005)(8936002)(31686004)(6666004)(53546011)(6486002)(6506007)(83380400001)(478600001)(5660300002)(26005)(44832011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEN1TUVHVmt6aU5vSlY0YW1acEJGYjB3NjA5TEhSS3luMm8rNEJGSm9PNWFl?=
 =?utf-8?B?bzN3WFFtekxqNnJWSG14VDN6N2ZqOTdyWWs3clQzZ3dCcExKMlRodlorN0NU?=
 =?utf-8?B?cy83M0YyZU16WHl4aGxpT0h5ZDVMRjVtVHNhWm9obFdmSGxoYUZuYjJ3T25y?=
 =?utf-8?B?NnQrdXBEbzAyQWd5U2p3eW9yRkF0bVpNeDkyVnFDbm5PdmwwUTFmWkVuNXBr?=
 =?utf-8?B?czhJN2V5ZjczUG92WFUzaTBzSHpVaXYzd1EwZ2c0cUdVRFNYcWpJRnZ4Y09Y?=
 =?utf-8?B?WEhiaW05K3RKeitZbFNBaEh2dUNJdVJLWUFXOXRTUlI2SCszRUZXZnUzUkVx?=
 =?utf-8?B?aHFNeW9rS3ZhYit5V2tpY1dYdTlheTdOTHNYbW91aFI0MjVZSVR0UjdNUDFJ?=
 =?utf-8?B?WWFmNi9hTlI4cVEwWlN1bXVxS3QrOEsyejJYZW9NUlkyZUlFTlpRNVgyaE1E?=
 =?utf-8?B?clBmUTVMb0c2TU1wTE1OL2FPc09NdXJFZC9VYkdTVWx6c1FlUmZQUzFQRlBq?=
 =?utf-8?B?UExXQm16MXF5bkRWM2t1d2FCM08vUk1NQlRXbEkwaXIvOGg0eXlOOHZiNkdr?=
 =?utf-8?B?aytVTUFpa1VUUEZUckpVUnZwWnVtaFdvYUVnZ3pFcGxCUjNxWS9Td0IyYk5y?=
 =?utf-8?B?bEhQdWVNeFlHOW9GdU02NFllVTlndnhMcWtQRW4rdithRlA2Zlo2eXVRSGIz?=
 =?utf-8?B?VEFYSDd5WCttRXNJblRkUUN0MDNxRVdQUmI3RG5lSXhTZ3M0eTZMT25CcktI?=
 =?utf-8?B?dTVBalRCUVo0aWxYRklJYkVENkh2QnVCa0RDSFdPUGdjcHZ2Ujd3cHlPRFAw?=
 =?utf-8?B?ZXBBMS95WXdHREg4Q0YydVhNZHBkSHEvbEpHdjZ1UVBuS1N5ZEJKaEdmVEtn?=
 =?utf-8?B?VFVhaFR5akxFYWNDUTZHZnVzeStqZXhIK2p2KzFGZ3o2M3lwRzRES3NhbHNv?=
 =?utf-8?B?cjNaNmZPYzcvclZXekppVnhtQ1ozWXhYNWVveHNQV3NsS3Y1SmN2UWpESWtD?=
 =?utf-8?B?d2JzRkU5c2NnZE9Ebjc0ZGZ4ZDVzb2praW5IMWNnaFVGamJWRm80dDhPSUYr?=
 =?utf-8?B?UER3UW4wNmNCSTBQOGFGelA4cWQ4STRFSU5hMm1FRzBsMWZjMzJZd3R2YXhU?=
 =?utf-8?B?a3JBUkwyMExXSmg2VTFXcFFDSGVKS2kwNGlOM0ZtTmEzdmN5djBzaEdHNmFp?=
 =?utf-8?B?Tmdkcko2MnFMSWdTdjE2QXMwMEJJYjE3Y2Nva2Vvd0JqTHYrbWFlekNBQTFG?=
 =?utf-8?B?Y0ZpWDAycnB0eUJZVWlEdS9kc05oRTVnd3p5bXFSTG8vc0dyZWZyYkhoNnI1?=
 =?utf-8?B?aDU2MjM0eGFibm0xM21wa2YwdjdIMVNQb3dPT1JKVms0bXBMSnNxVDlkeHow?=
 =?utf-8?B?RDBhUGIveUIxR0NVS0ltWmhJRjNVQ0xVUmNPWmlaU2pVSlVReFlJbkxTR0Ey?=
 =?utf-8?B?Q0JCZnFaVUpPMmZlN2kzblNzbDh4eGdtZjlWZWcyNWQvOS9uUnViL3RJR05F?=
 =?utf-8?B?REpsVlp5KzJEMG9DR3Y4ZUNOTXZrbDBoUmN6MjZVNlpvQWROMjBSZnJkcmZn?=
 =?utf-8?B?R0RPLzZndlZwOGtiVDJLeDNoZTdpYW5JZFlzTmNnbzhrOFhBMk9TUWl4OE9q?=
 =?utf-8?B?WjB6MFluZEpiMWZFTzE2b2ZVNmlGb2xGdWkvY1VGMTVVUFBXejBRRm9paXZD?=
 =?utf-8?B?dWx3L2UwTFlCSm1OczVGZThUVlVabW9CSmZPWXBSOW5jSllaOHhJd2c3REJG?=
 =?utf-8?B?MkkyRlU4d29NdVM0eWZQYnBpMUhHcVRReXJFY0dwWXZJdzRqSVlGOSswTkFs?=
 =?utf-8?B?UFQ1WXZWUWdOK212bDZoMHJJaFhEQk15bTByQ2VISW9RYTl3dSsxeDNacStQ?=
 =?utf-8?B?dFBxOVllcWI4VW5MR3RnNVRUMWgzTlI5TkxhWUdldEM4SEdkVnpreE1oMmdI?=
 =?utf-8?B?QWkzNVp1RnlQSWZwSkFEeGYxS3Zwbm5pMTFFMC8wbmtTVnVsaTVjSDZZNGxN?=
 =?utf-8?B?Q1pSQzdVUGU4K0pQalp1N3BhMmRaY2NORU8vdTFkN25wRlRSOFRoS2FtTDZC?=
 =?utf-8?B?bEV1Q25JakppNmpCeUpWYjBKa3VKdHJjWWdtT3dCVThiRGtwNHY2VEx0dFow?=
 =?utf-8?Q?1ZCOqwdbMXH8pQdLvzY1HHofy?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3ba3872-ce8d-4706-cca3-08dbb9e28326
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 14:04:32.1375 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +japArkV7/aDCivtoPWIN8Y8ZOG5pYHUrcdJucMWtCfIkXwH8p+xjmqMLg6dvRISnt78EFdWQyhG3JMX3mpZPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5053
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/i915_pm_freq_api: Set
 min/max to expected values
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



On 9/19/2023 12:32 AM, Vinay Belgaumkar wrote:
> A prior(rps) test leaves the system in a bad state causing failures
> in the basic test. Set min/max to expected values before running it.
> Test will restore values at the end.
> 
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/8670
> 
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
LGTM
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
> ---
>   tests/intel/i915_pm_freq_api.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/intel/i915_pm_freq_api.c b/tests/intel/i915_pm_freq_api.c
> index 03bd0d05b..6018692a2 100644
> --- a/tests/intel/i915_pm_freq_api.c
> +++ b/tests/intel/i915_pm_freq_api.c
> @@ -55,7 +55,11 @@ static void test_freq_basic_api(int dirfd, int gt)
>   	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>   	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
>   	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
> -	igt_debug("GT: %d, RPn: %d, RPe: %d, RP0: %d", gt, rpn, rpe, rp0);
> +	igt_debug("GT: %d, RPn: %d, RPe: %d, RP0: %d\n", gt, rpn, rpe, rp0);
> +
> +	/* Set min/max to RPn, RP0 for baseline behavior */
> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0) > 0);
>   
>   	/*
>   	 * Negative bound tests
> @@ -170,7 +174,7 @@ igt_main
>   		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
>   			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
>   			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
> -			igt_debug("GT: %d, min: %d, max: %d", gt, stash_min[gt], stash_max[gt]);
> +			igt_debug("GT: %d, min: %d, max: %d\n", gt, stash_min[gt], stash_max[gt]);
>   			igt_pm_ignore_slpc_efficient_freq(i915, dirfd, true);
>   		}
>   		igt_install_exit_handler(restore_sysfs_freq);
