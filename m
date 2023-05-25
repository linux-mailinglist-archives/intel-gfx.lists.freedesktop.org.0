Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D23A971110B
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 18:32:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A534610E6CC;
	Thu, 25 May 2023 16:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0978410E6CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 May 2023 16:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685032359; x=1716568359;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X7FU5aIJ+uC4Yq3DPF1MgmJ2UiZ6EKo+jPiQ1DZxj+o=;
 b=lhBQvl4LCvnITq4+AKGro5sXdD0jdusaEPKoYAyX7qlhlEMrZCCTwHBp
 X9CqJnSvOA+46TLS9DlKJSNdaDHHwPpMbWCUTXLYsP5mjiWbtuLK8UomQ
 z0OBXhx78BOVgRxX+rZJWmQPoV98rN5pUeV++LDRzji3kyRCXKOR3AGur
 KF1hMHx7lluvMJvwkXHp1aQx3IoxqIiMix1648MVosjU2yCQtW1vLLk4x
 E3gn9W1cGVl/y0cr4k5bAFVjH5SWpk41iNJL2jwVlAOj3R3bxSC8lTOZ2
 qB6+Rb/F6Vs3TZIeegycN5NmyLdLAP/nkxYmeH6w+Dtb3fG4gZe8aVb5j w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="352788993"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="352788993"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 09:32:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="682408819"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="682408819"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 25 May 2023 09:32:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 25 May 2023 09:32:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 25 May 2023 09:32:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 25 May 2023 09:32:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ESqd6Obsvr+vN3qhdxSX2SruZ/ohon0u0WgtCJCx75Gx82lm65yYJG1CHxzli0sZQ8npr0RAqAvY6vyTpybOFtGeaaLndvk1MDf/+z7bOCRXhakM+6zTFweT/NoCKQrYGibPHNnkBWqsEzZmZ8spBh9HgyYqE76DfbgaD2pvDgKbcCStfwfOJBHDPCSq277FJaSvKPB8Pq+fVOas6MTRxKjWnAlviA3SfDpGFUifWXHFRs0YXtm5pTccT6Tui/nZOaykiZltmyf3zQaBJbEtpUaz0L+TsRRTaOpyp3QOW5moMCxEo708fK5I3zysdBSprxLUmlJMb7JWKdbImeqxsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VjMj/T6E1srmMg4XVtCmjy5UodJowKECNdEYNOk4aIU=;
 b=V82BLz1McPj5XofSjFIdAiDIJ2nqdICjuvXAkfPKYwazav5K67GUN5U5wUkofLWTwUPeE+rF7qTJUYIFyX7Mq9t5gJeohl0994oKuLhe7mzgdU4RWge8UQjJCx75hvOhb7/G1hRIgvuf/dLRmRxq+X9bHUKAK4DIHtn4BczxZjAq/dQ89xhxw91hvvLL8Z6sZ5fP2v8HGQJ+C351I5QhqRWpaBfac1YV6mWdOJDM8cL+d22CYVcXI7ODvKeopWD4lB3R7fY1mW++PXAm+mECj41SMrkMPO8CAuTMZ/nWBWaLZ+KV/rkgVp4COX8bD7dEM7ghw3SPPI7SfWuuDPcfJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 CH0PR11MB5507.namprd11.prod.outlook.com (2603:10b6:610:d6::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.15; Thu, 25 May 2023 16:32:33 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::8e92:306d:7cc4:2953]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::8e92:306d:7cc4:2953%4]) with mapi id 15.20.6433.015; Thu, 25 May 2023
 16:32:32 +0000
Message-ID: <b8ffd141-fedb-6d0a-0bf5-1e6080b53e1f@intel.com>
Date: Thu, 25 May 2023 09:32:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230525094942.941123-1-jani.nikula@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20230525094942.941123-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR20CA0005.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::18) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|CH0PR11MB5507:EE_
X-MS-Office365-Filtering-Correlation-Id: bf519369-6d8b-4329-e05d-08db5d3da3bb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Pkwjy1BN5qumevdBgC9GM7yDLE0n9kdh3clL0ec7pxO/VfqgkXFGcGnQmMqnmt2HcA4uQujwwJZg64BG9lAzijPVo/FReQGdjaK0Eepjm1RyBCXD6HYF7uAQTQOCCpieIi9ijh8VfGolVpHYrBLtapIDSOZP4bCyCJeBIXyoFaF05jcMAIZO/pmfDHlHQ8FSEIBoYPMv07Y1SWI9rfKH4sWquhxPjZhTrjJzmuXdgR6pS8R6ZMGCDkJfA6Q0hFDw3AQ7ivSSYrIwdiPbj7l25RdjytW8GrRLECwSwqmVugpLLO5Ym452V8MlOZZCBkA5ZXFXd6PIvjEViG7gLZXg4iIZ+9PeeByC+5ojNT9wBtXTjmL5Ui3rPH5Zty8t0Ol2A7T5f+zgceQ4f4yBQEiW21zovSy2zr3zbMj9wt7PjaeVWNiWGNoH4645Mm7vFcq2QJU7shMXRj/0KJjKpjnBv2CHtEecXdp/vi+ITNj+y2tGqlLhxFqtm2qDqeNIPmNR2Yx1ARSYY11Md0ARvFmL3Ver3uGMqpAMzySMPX+LlgZeLIWyIc6U2zbsgUvgsre9btMEWXsCfV/4kCfpPu+YuL7EAzoJUNbg4Dx/yzsM6bNGHCNOY/mSwQQVejEjKh5BWTAlx3ZO/trkdn/wwy4QbQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(39860400002)(376002)(346002)(366004)(451199021)(478600001)(31686004)(6486002)(107886003)(53546011)(26005)(6512007)(6506007)(66476007)(186003)(66946007)(66556008)(4326008)(5660300002)(82960400001)(2616005)(36756003)(41300700001)(86362001)(38100700002)(2906002)(8676002)(31696002)(8936002)(316002)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDgzcFZ2ckVFQ1JJZjdjSk5EUzJtQXpBSHJEaDBPeG9qM01LOGhITUwrUTQ0?=
 =?utf-8?B?RTNtMnBWbkdBSjVZNlJhRVZLaG5oNHlvWHBxMVFBVGM3NnFjamE3WUF6REZY?=
 =?utf-8?B?anN3VGpzcXBvS0huMThqT1ZWZFROOExVZ2dXQklwSHh1dC9Eb3ZZTTFjOElR?=
 =?utf-8?B?c0IwejJzS0xPMnNuV3QyVVBvUzNRQXp6T2RWZkFwU2M2dnRkS1REeGtwaVE0?=
 =?utf-8?B?bW95VWhvZDZQc0ZQQ3hoNDV5Sy8yaVRVVHdDV1JFRnV1MThxOHNySUZGbmJk?=
 =?utf-8?B?VFprRDZXNlRuQzlISkVEQ3hFdFQxUHQwenZ3U1l5cGNMT1AwQ3hWYXhCbE9V?=
 =?utf-8?B?TFcrYmViWFVwL3h6OXhHWlAxNVhPV0RZcFh3SUtRRzQzMTRVdDZGL2FGckU2?=
 =?utf-8?B?VzNBczBrRWtkRUJjM3lEblNZNVkzY0g2SWhkb2dsR3FaMHNraXJ1emJQdmly?=
 =?utf-8?B?M0RkcmdnRCtQekRCTmJZdVZ4Y1JEUjY5dzhLaENIQVhkc0NrdWhCK3BZMTh0?=
 =?utf-8?B?Vnd6TjRoU0d3a2ljRi90SzJHbytLL0JLb0lQWXp4ZmRHRzAvL3pleWNCS2s0?=
 =?utf-8?B?RlVkQzlXbHgzdFYyTVVQdEtrVWZkK0RHZWpBd3FJUHR2aUttSEpJS0ZGMVQ2?=
 =?utf-8?B?K1MwWk9NY012WG16SUhqdE1mRzdBWWZsejdvcFFTbGRyaWZjM1ZsK2tpUW5a?=
 =?utf-8?B?VnU2TnpmRmhVWlJTT3NGM2RkQk9LcWNHM0R2VE1STXVnVmNPWThmL2lObzZz?=
 =?utf-8?B?SFhTRlBoYk5TRmlubmJZd29WNzRBOXFQalI5c0tMMTU0TVdFY0pKOVJRbENU?=
 =?utf-8?B?YVowMUtxK1FwWElzanRnWnhReHF4UU1INVZJcjM1b0F2aHFRQWJEczEwYmN6?=
 =?utf-8?B?VW1HT0M4R1owVTVFWFFuUTBjcnhWNm9DVVpQNzh5NU9oSTl0WHAvSlZyR0lm?=
 =?utf-8?B?L3RlTVlNZ0tBdUxza2E1V3JVYjE0cGJlbEJ3Y2RXelNPWnpwMU9hY2EycitX?=
 =?utf-8?B?ZEp2OUhJVTZhUW4rMjJMMStoMFF5VjlVbGxEa2wvL0M4d1BZR1V5cnhJNTFk?=
 =?utf-8?B?aXRoYXBEd3RUNlhkVXJkSFhrd3lkMGRFeDhWNUh4SENjVTh6bk42QWNvZUts?=
 =?utf-8?B?cEh6czZlZ2FEeXloZVllckUwOXhhUURTQmU4YmwxYXV0R2s2VmNQelg4MTFW?=
 =?utf-8?B?eDg0RTFsOGJoRVZNa3R0UE9RQUxmU05CS0tUTE4ySEt1T3psdTZUSXFaMnF3?=
 =?utf-8?B?L1oxdjRpU09CdnB2OTZsS05TSFU2aHNyS2Nvb243dEdSakFzUlpoZ0pzdGp5?=
 =?utf-8?B?bzFVTDJxTGxUbmlaUXREVzd0NGFaS1hnUFhlZ09vZVlja1VqejFNZGlpa1ZU?=
 =?utf-8?B?bmZQZFMxU3ZyM29MYVpGcjNvQkp3eG9oVFJod3RNeTlqN2hOVjZnd29vUCty?=
 =?utf-8?B?VUhZK0liaHlXc0FqMjR3clZTS0lYenl5ekpMZ2FLb1ZNdFdwK3FTY3VtVENo?=
 =?utf-8?B?MHRSa0djK1JFS0dPNlVjTW5LNjVWaitLWXhacVpwZGVJdS9nNXdpbE0rdmRx?=
 =?utf-8?B?cnNnUG1pYzR0Q2lDZ0QyQ3VXZ2ZCUkI5dGRXSklZVnJuZ0d5NHZZQWdTMksz?=
 =?utf-8?B?cG9OdW1QTTc5VUpKMDU1K2ttSW9rUDI3S3RNaFpFNktCWEhPY282dEdGR0FI?=
 =?utf-8?B?RHFOdWVCOG52WTFUckpPZ01lb2h3TDJSZ3NNTlRzQ1ZnWDFMNnBIcEdsZDFY?=
 =?utf-8?B?ZDFWVzl3UTdoK0U0Q1hIM1R5dXMwSDl0M1dxaEVRSTlILy9jTStId3VHSmFH?=
 =?utf-8?B?a3ErV21FQUdCQnVTOWtkZkxxWHBlVVpxSGR0NGw5MXlOenp0QitKY3pRTWkv?=
 =?utf-8?B?a2Jydkw5NWlNVUM3QWw2Y2RSMWRwWmZEbVVpa3k2OHVNWjBIQUJLU2ZuaVVS?=
 =?utf-8?B?aEtEQ3VHbWhnVTE1WndsZ3pYMnlReUhoZUd1cDQ2Z09pUEhHVE1wMWtSOXBx?=
 =?utf-8?B?dU0yWlQ4ZDNqVXRVS3ZCVWFMcHZibkxEM3Qyd08wSDlYSnNoSEppazEzL1Nw?=
 =?utf-8?B?OUFhRm9BQ2UrRm5DVmNiMkhpMkNpVzRpSGMzRXpHZGlzQlBvdUFGTkhDUHll?=
 =?utf-8?B?WG9YS3NlbllBR291SWdqM0IzT1dKOFBDUkgzbHdnT0xCa2VnNWMrSk9xY1Iv?=
 =?utf-8?Q?yNqa35dQOMPlJVxn3mIRb70=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf519369-6d8b-4329-e05d-08db5d3da3bb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2023 16:32:32.6815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o5s5kPRfeQ8AQjmdoW5pAzZCnQjQIY66qoiu/PNt7/8Wg4CCX/cEsF9P1R8atfyl8BbeqApeH5muhIDpQdu2v/MqBJim5zk68q44aU1/ETA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5507
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: use system include style for
 drm headers
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 5/25/2023 2:49 AM, Jani Nikula wrote:
> Use <> instead of "" for including headers from include/.
>
> Fixes: 8a9bf29546a1 ("drm/i915/gsc: add initial support for GSC proxy")
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

dumb mistake, thanks for fixing it

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
> index ebee0b5a2c1d..5f138de3c14f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
> @@ -5,8 +5,8 @@
>   
>   #include <linux/component.h>
>   
> -#include "drm/i915_component.h"
> -#include "drm/i915_gsc_proxy_mei_interface.h"
> +#include <drm/i915_component.h>
> +#include <drm/i915_gsc_proxy_mei_interface.h>
>   
>   #include "gt/intel_gt.h"
>   #include "gt/intel_gt_print.h"

