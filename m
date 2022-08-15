Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D11D5942D2
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 00:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF73BD64E4;
	Mon, 15 Aug 2022 22:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B6C2CFBE1
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 22:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660603238; x=1692139238;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jU7IDw7C2hB3a9BiRtNSs2b5ooy1hod7wCCnRh2F864=;
 b=WmRzltbHPuabYydkLRswfsivvjROq5t4KQAeFSBaeJWWqVqSa0+L/i3K
 tScu3IA88Q46akDSBxVV1HWD/GLkmOZ2y7F4vMJBZgJO0EOXFRGd0VidE
 z0qsBTIwP1UR07tgId8critEKAdVQj3LXArtcduMtoTJ1ZAfKHNCCr8Dw
 RhUb7LiRoQ9UISdYI9XEwRpQ9IJxDGiWeX36fcJxgCbXIT8WgyeHejm2D
 6XdvgkyZwZyEavTkzCIvD0028OxCKSDIxSSb+L31Dzg9HHwsH8sTz57QC
 ilYn2mRONQDJOlOjH3vkNyNCLX7EG4enfBZMzyzj9xaUhTwLqPkezRbDY Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="318062747"
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; d="scan'208";a="318062747"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 15:40:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; d="scan'208";a="674984043"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 15 Aug 2022 15:40:36 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 15:40:36 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 15:40:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 15:40:33 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 15:40:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XmBqfofW/rz6aUO1vYpiziaSRU6WpZhBzoerfG1XGLoSEwu3ramaCMKJ7dV+/jqieVycZgUJLvd7Wb8hi6Aqvuc4Baq8xVax/4eNNE3Ek9jMee5Z3rem3vOOK0m4IYx7KnoYz+9OPZ7IyCdeJwjC2AKAGng5ddyOuUsN0NFPP3EgaxTFaNz3XFh6k1lZPvuQUeNxG8yXxle4yePCL1qqFvQsSnLm60Q4aXGfSKwSu/bKGc589J1ZYUqlk+COrkrlrI/FirPbfmPVSRgysLOZ3h4gO2VlwKvBemtW3xRDeu9kzuW5j+VZNaYG/5BTsKnp/rZcCr9rTW7B5AbIrnzKxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1fDtGANYjilMfmNfc7EO1UEeUZ0/WK8qY+mkg8Ip0lw=;
 b=LmQH6ylEBZDw3iJwlM0OZT+CLbPOMw63k8CFZVcJv7AYGGsNdpWPvedegb07h19ig2bOHcQXCyZcWq1L7495GDcMQK/KnbRZWbRp995MY2M6kPvgVkTOkEtOKFhyC2/9vXfqRuHHYepI2i8VxHPoNyetqcY+pgcy9ZbruTgi+Go2P0LHuVKiF54TQyB7IEYMAk2VOGnszNq0lkhgbpJPIB+RToW+QyxSfosY6ivZfxm9iAg9yywAY6rQyi8qNtEaNecB2bLAhmY1znfq35haXu7zLgh8ajzWM4eD1nU3geOjAZ78dLX1xS3mxbflPs6MjhIeMWo9JXU1rqKhYzH9xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DM4PR11MB5487.namprd11.prod.outlook.com (2603:10b6:5:39f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Mon, 15 Aug
 2022 22:40:27 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e%5]) with mapi id 15.20.5504.028; Mon, 15 Aug 2022
 22:40:27 +0000
Message-ID: <442e7caa-054e-9c1c-7d02-4d0a5cad6244@intel.com>
Date: Mon, 15 Aug 2022 15:40:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220815160134.1527085-1-alan.previn.teres.alexis@intel.com>
 <20220815160134.1527085-2-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220815160134.1527085-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0072.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::17) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6c85f84e-9634-425e-c471-08da7f0f26b4
X-MS-TrafficTypeDiagnostic: DM4PR11MB5487:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LQuSqdorTX0BMoy0EHV7Q3V+bTJaajjyS2Y1lXgfD+LnxhpGbYBX1btEdJIxL/vyjjBcfv83hD/eHo2+whKgayc1rsyWrccqbIzSUy2jRtSDeCJexVmO1/OI33W6R7FpB+PDIEi+eMAO9hj5ZiaT3CBz6V2dtEplLyk6gdm35qGX5qKEuZKYronfq1c6XgF9bXXHzmm/d+F/KpQb+tcY17T3ecjJqqbUgKakfgo750r4GQsEufR2bzrch+kpxK30OT+KgoiVcQ3akDt/eTbfl/woQ44NxTjqbWRnaK2Z+pvQrOQtr4CLJNBolqHsy3QEUwqWJdS7/1bJc/j3llRPm4Fh5vZ687i7N1A5I/PJyR0Bo922DTtHDJcj9AFZvOyM4TAZyQTo+fSlf+k9G1G92XnsE5QRw680tM7NVYv/niukreEDX9jkE75sbvADeK7KTjh0x9CUAP/AysQKtLhITTzWbEO995WixssZEt5aIsAP5qCynH6SUn3yL/CfIRFLU/49g1LN6WMC0SgkP8ls3Ik5djV2BUCBap18yrlJ9jBb6II7ErYIXtDvFf2dyq6l+TYsIal9CBHHxBUtroiVTQixlifdda0Ie2sg+OZ+ZN6xJybP2ivhMlmYyzzVkt+l2+ECUKKQXK2ukgkHHZAV2IOZmziCxkTMOGQrwWi1o4HSVe9P2Gf4v1uwHlv+bE0tmO2ewp4NZT7TjXxxO3WYrY0pbtcDmeZ0D3q5ajI252dhOZTRkrhzedLNOqsfBmQXwuD8ycRE46m7CXhymjBAWMwcpaFQZ7uo0/WbA+cxMv99VXDUm1dMYjHN3PHVzyK0MwvoxaLbJ9zaxi1zcEUqzw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(396003)(376002)(136003)(346002)(86362001)(31696002)(186003)(53546011)(31686004)(36756003)(6512007)(2616005)(83380400001)(82960400001)(6506007)(26005)(316002)(478600001)(41300700001)(8936002)(66946007)(8676002)(2906002)(66556008)(66476007)(5660300002)(38100700002)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0JRczBnV05TbndlU1JMZTdOYnVFeDBPQTMrZmFnZWpLSlB5ODRWZDVGS0li?=
 =?utf-8?B?bFBrUWVvSTBzczNpUndBekkvS0hYb3lCYWl1REtSMldQN0FVQTkreEFheTcz?=
 =?utf-8?B?WWkwVTkwZ2JvZ05qN0NocEtadkJHMHdaSkN4TEdBZHoyT01sUUhmSm54MXBy?=
 =?utf-8?B?VDBzRWQ4YTlYTVgrNnJHM2N0amNrcjNjQXVhMU9yZkNqZmduRWVQRVMvcDE2?=
 =?utf-8?B?a1ltY29id1lkRVFMSit2V0VneXRUQU5KK1ZDS2FTYm9od1lhK3FtTXNGY3NF?=
 =?utf-8?B?UWZQZW9CWmZaQVFWbXRXVUptUWJzRnU3ZGkwbnJva1orWXlBRTlZMjRTMVpI?=
 =?utf-8?B?WnJ0a0xmdUJBTkd2TWZiM2c1UW5FVm43TFAySWhhZWt2MGZhcG1INmd2MlZC?=
 =?utf-8?B?bW5WZUV5SGZFbDBOTitQM2V5Q2RPdXVTOTZETTBrSUEyeTArSTQvRk0yK3k3?=
 =?utf-8?B?NFBDaTlpMUZUemI0MmVwcERZZ3hPOEJ4WXl3U3dwY0pkS24ybGFHNklxVGZE?=
 =?utf-8?B?TTZQOUFPTml5SXlmMnZhbUVLanJVanFYOXFOeVBvRkQ0RHl4OHo1L0U2cGl6?=
 =?utf-8?B?bDFDSVhpOTR6MWJhV0RleXJ3c3VmSnNpL0c2aGhjZ1loblpBb0pDdmM1WjVK?=
 =?utf-8?B?K1BGcEZHM2tkQmFVMzAvclpvc0xRZ2Z2ZGRMekxmc3ZSZmYyVDNpa3NtYVlw?=
 =?utf-8?B?UXlxTEtlM25ndC9NYjcvWFZNWTZZS3RyZWNYMWFPem5pVElDQm9lcUlITTdP?=
 =?utf-8?B?OTAwMlNhczZsK294UzhpOEVXTUtJNXhKVC9ydkZ3Rjl1VkhPbDFXNGY0Z3Zz?=
 =?utf-8?B?alBjL0M3eCtPeDJkOWRHaTJtK2pIZUI3MVVtZXdUam1kUkFkYWQ2SzBJbjJS?=
 =?utf-8?B?NXYxL2t1cW8zVDAza08zMkVta0VrWFJXckFlZ1d0aDAxK0hNbktLaTc4YThz?=
 =?utf-8?B?LzBFdjhTUUlqMnhHRUZpMUhhWktWYUZPZHVOY3l2NERlSXF3b1Z4d085eThF?=
 =?utf-8?B?aXBYckJCd2RTcG9KdjlyWjdzZU83N0hQMkdOSzVmbGwzT0ZHdEE1UDBGQ2Zn?=
 =?utf-8?B?dWpKbXl5SG9icTlqMlZ6Y2JXc2IvNkdoeWVvTGo2TC9TMW1LclMvckJDcXlF?=
 =?utf-8?B?K2w0Y0FFV2NFT2xGTGYxK0dRdmNuMloyT2lLWGNraW9EMVJjYUxsMHhoeHlF?=
 =?utf-8?B?S3hVSE9DOHNnelVBZVdsaWxRQmM1Q3R3UkgxYXBOUGczdVBSUEpyekZ4ZnpS?=
 =?utf-8?B?SWpyTmp3eTlCdG51Q25WT0s0VU9IaVpoRUZwOWVYQk9oRTFjU3BVc293dEFh?=
 =?utf-8?B?ZXpRRVdkaTVYUUVxZDRXaUIyQjlEQnkvTmJvY1l0NkZxMk9MUXl0SEZyc1Ra?=
 =?utf-8?B?Q29lbVNSb1JqWnh1TlJoTitjOVdnbnQ2TjdxblN4OVl0T2lITEoyRTV4K1gx?=
 =?utf-8?B?aHRxc0wrTkh3VVVxV2pER0tQaTJwRkpBZFdIRHZvNTFENFZ1dDlqUzhoMmVT?=
 =?utf-8?B?UW5BcmtqN3A0U0RyeVNYOGc1eUl1RWlWRStVS3JqK1RZM0hRNXE2ODFoUkhk?=
 =?utf-8?B?blV2aytqWUxaTVBhY3ltSlJKZjcxUmxiSndhRDg3WTd0UHIva3RObVlMOTRO?=
 =?utf-8?B?TjVNV3hUUkxlSlJVL0x0MUZJNU5tQkZ3b090eVJ0cGtWMlFnc0toa3h3UGVo?=
 =?utf-8?B?cEw5MmV3OS9aZkFVbTNqbDlrUEF0bXNUU3cyWVo1Y3IweVpEMkJhNmRyMWxX?=
 =?utf-8?B?MmJPQW5LZ0pzQ2x2eHRaTHY1amFPcUVqbEZWQlo4Ni95Y2lnYW9pamgvSmtu?=
 =?utf-8?B?bnpNUGZkWnZpME1UcXppU0wwaStXL29nbGVramZndzNvWGZ4Qk14dFhGN1Ew?=
 =?utf-8?B?YmN1dlltcjFRNStyQjNtL3pEeTQwOGduUEt5dlFvZ1RVd0NWaXBMRkpGL1dH?=
 =?utf-8?B?RC9EVWxLREVzYS9lajBJdE5ybnpMdElqajcyRHRPM1c1WHlVTkp5enJrUHlD?=
 =?utf-8?B?aEdldFBoZ2JJdWZGKzcxVkR1VGZoUVVmS1g3MWkwMjdZTU11RS9WTkJBLzcv?=
 =?utf-8?B?Vk1zMzZFSkRoZ0paQzhRWG1jaGdOVVQ2VlFHOWsvZkZ3cGs5UitLYW1Nd0Fh?=
 =?utf-8?B?UEo3QzJRWVFvTnExbUU3dU10SmhxMlRmR004ZDNWZzJMazdDY3lwMCtBazR4?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c85f84e-9634-425e-c471-08da7f0f26b4
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2022 22:40:27.7745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PUYRXSWqm/QpUyDANhxtKY42BIEHrQzxIGtztyGkpHw4La6Kr6F+YafPmvLQDNTmEe6Ia0l9ndolcQhoPq2DE2cdFf5NwBp9lQI+aEo+DzQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5487
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 1/2] drm/i915/selftests: Use correct
 selfest calls for live tests
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

On 8/15/2022 09:01, Alan Previn wrote:
> From: Matthew Brost <matthew.brost@intel.com>
>
> This will help in an upcoming patch where the live selftest wrappers
> are extended to do more.
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
As per previous review, you still need to add  your s-o-b as well as you 
are posting the patch.

Also, why is the subject "[Intel-gfx X/2]" rather than "[PATCH X/2]"? 
The mailing list automatically adds the "[Intel-gfx]" prefix. You just 
need to use the standard "PATCH" or "PATCH v###" as appropriate.

John.


> ---
>   drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c | 2 +-
>   drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c    | 2 +-
>   drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c      | 2 +-
>   drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c    | 2 +-
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c           | 2 +-
>   drivers/gpu/drm/i915/selftests/i915_perf.c              | 2 +-
>   drivers/gpu/drm/i915/selftests/i915_request.c           | 2 +-
>   drivers/gpu/drm/i915/selftests/i915_vma.c               | 2 +-
>   8 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
> index 13b088cc787e..a666d7e610f5 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
> @@ -434,5 +434,5 @@ int i915_gem_coherency_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(igt_gem_coherency),
>   	};
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> index 62c61af77a42..51ed824b020c 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> @@ -476,5 +476,5 @@ int i915_gem_dmabuf_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(igt_dmabuf_import_same_driver_lmem_smem),
>   	};
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 3ced9948a331..3cff08f04f6c 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1844,5 +1844,5 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(igt_mmap_gpu),
>   	};
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
> index fe0a890775e2..bdf5bb40ccf1 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
> @@ -95,5 +95,5 @@ int i915_gem_object_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(igt_gem_huge),
>   	};
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index ab9f17fc85bc..fb5e61963479 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -2324,5 +2324,5 @@ int i915_gem_gtt_live_selftests(struct drm_i915_private *i915)
>   
>   	GEM_BUG_ON(offset_in_page(to_gt(i915)->ggtt->vm.total));
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }
> diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
> index 88db2e3d81d0..429c6d73b159 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_perf.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
> @@ -431,7 +431,7 @@ int i915_perf_live_selftests(struct drm_i915_private *i915)
>   	if (err)
>   		return err;
>   
> -	err = i915_subtests(tests, i915);
> +	err = i915_live_subtests(tests, i915);
>   
>   	destroy_empty_config(&i915->perf);
>   
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index ec05f578a698..818a4909c1f3 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -1821,7 +1821,7 @@ int i915_request_live_selftests(struct drm_i915_private *i915)
>   	if (intel_gt_is_wedged(to_gt(i915)))
>   		return 0;
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }
>   
>   static int switch_to_kernel_sync(struct intel_context *ce, int err)
> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
> index 6921ba128015..e3821398a5b0 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -1103,5 +1103,5 @@ int i915_vma_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(igt_vma_remapped_gtt),
>   	};
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }

