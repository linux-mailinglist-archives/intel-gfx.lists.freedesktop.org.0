Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0E18B843F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:14:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7DD112D19;
	Wed,  1 May 2024 02:14:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DNYD6b6j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB78112D19
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714529693; x=1746065693;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VmSOsY+EJT4EDvin/XhffAwf2/WrT4eLdyTkkpTWAc0=;
 b=DNYD6b6ji5q62X2fY+oW05GTWwMKwmlzMvKAdBz+hNMLUjZk/of8PNss
 G9coHBJT0RHhBnbWxmQFh8DckleqMmspI3ox6B1/nmMAUkoGhitpyJX+s
 i4Uv9C5z420cpO5xbEXh+303SR56kDGvPE71ZeZTgJLvdeOofst8jAmtj
 yJZQ5LK/IigM5UfFiUIjQvwzwYC/+ZTo0bJRHEmRZSjD7qptXHZ07TdZR
 2U0FNgWjMxSJI3YKVOosHQMnEaX5GAY6hKRtxTeFof/jdEEYWt4jWggiL
 fJGOZBXoue9lYAxHerUiqpP53z9DyiUlHX5h0mRbCPaoJ16dSrlr97WDQ g==;
X-CSE-ConnectionGUID: 6tyby8SkTD6Dqpt4a1O0Fg==
X-CSE-MsgGUID: Jzajkf3YREqxoWGuWopNew==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="20877416"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="20877416"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:14:52 -0700
X-CSE-ConnectionGUID: cVkPf5LST2qpmGp7gjTm6w==
X-CSE-MsgGUID: GAABzQxtQBeSCuA96Kge9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="31451630"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:14:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:14:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:14:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:14:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:14:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ScDa/N79xTCPKpd2PtMKCNjxYnSK4MhoKGJHbB/MvQK9MkojnEeoKFjs+hiUYif3t75kOV7q2gNwwEmjcszD0uJmqDhO72brYcReUOxpnY1Xu1ZPqapDmb3Cm1ZD4UzMoYTLLjq4zUXgJSpElh8NklCnA3ujpcmp2SE3AQJYyddUQlkLdTQSPZ0zxL5Ez1N7R3r9KS6pqdXrTaj0I5tI0mzbL5FZ1m5Vl96R1aCH40paqkPvmkRYPUkB2RJhANk+ruar5gOELaNhRGK4UlWzUG4GbaSMotfZl0T2m/9zTQUoR/15BrleSfHenNjkBSJDVNVKcaYqJj0NRN9UTjb8zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7LPYOU+eG4oLvYfO5mDf4jwzWBjI7Tt5hb4rRlFAoqA=;
 b=ZJtg89jmdIrM7g2AidErEkN3/1X/F7t09Abkmo/pbEyP+FlMXW2QdSVtvHhuqrhZyCZKhsYoLRrcm1TtwUEGgZ4/Uq1oY3saTlCEQeLu3cOcUhVYzzabfW0dVDcVzvZI4pFcACDDJgno0sI9U0xBmGqwjH3U/v+GvQl/HVmLb1iANaAzpTyuNiKqzRNBhue+gT+RUsCAxp49tBNLcHJbiqj9AN67yJu9qemJG82M8/4gRI9k7MAYeeJ93q8/IGQjjUl5/GXAIKu7gBfSyYl25PNLrfCm7+uKdUJypYES+KRPL5P10PJsP+zX5yv4Qz5IGOdl7uldo+twJJ+0mAxBmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8475.namprd11.prod.outlook.com (2603:10b6:806:3a3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:14:49 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:14:49 +0000
Date: Tue, 30 Apr 2024 22:14:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 03/19] drm/i915: pass dev_priv explicitly to TRANS_PSR_IMR
Message-ID: <ZjGllTed_wP5IeeT@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <09e9c11ffb669dac901c2416462a8f3dabc86020.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <09e9c11ffb669dac901c2416462a8f3dabc86020.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0034.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::9) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8475:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d8ba9ea-7cca-468f-51c0-08dc69847a8a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nrFneh8HbO1KRDJnxnJTKbkYX+mW8meT+YRF2h+Eo2Z1VE2xGplbg5nwMfwu?=
 =?us-ascii?Q?q/qpYvjneew+OTmW3B9NybZR6AQVKC7KgV+KvMW3iFcvGB8AsliiGN8+PwFi?=
 =?us-ascii?Q?BdgnYOjfZIKKXUIS5RSCyrUlWM5Ctd8V8DIKl5MRt3XB+gwPtZif8JEmD4e2?=
 =?us-ascii?Q?FrD3DJsSakyPlr7Xa07AeA+eadE0PsTxWl3G5KAjwAJkJv6JQ7GXCYwtpysm?=
 =?us-ascii?Q?Z9+M4JpS22j1aIZDFK+fnzuxD8Dtuy/J13dTkjmLPJ7xdbKZYlj8MBYJ8EQp?=
 =?us-ascii?Q?krvcZNKf8JzDJ8S9ZSVvNUYpHC1nGNe4WglIjCx4Roov+4hB/zoXKzl0HLBB?=
 =?us-ascii?Q?x+jtgc3nv9VsBacw2QSye0aI7TC7CXWGhhchPN/T1EcMhVPNoIzrF7LZ5dDc?=
 =?us-ascii?Q?GmMO9Zgh0MPRjC6SAdm9KqrsAmrq3xOvx6PrXAiBBUu/XDMsuR2WpX7fYgn6?=
 =?us-ascii?Q?hXnSpmz0Urt4yOy1dRJOnd17/rd6HBTWoW2A/p0CgOCb+kyYQDBkBoi/xI7/?=
 =?us-ascii?Q?IxGdEl7JUxthuUqwS5AGFk69AMCumQG0RriLM6qlwW1ZGnQfieeuF7YCS/5L?=
 =?us-ascii?Q?kanh+lb3xyV3Q9YN2Rd8IJE87BkP2GYDWpTv6YQMIX+9vObtDf/fQTcB8sH9?=
 =?us-ascii?Q?vvpEn1gCjn7zfpCYmOiQXvUgNPxfAFh2hV95YkU8oSGG37gQQ/g5j+Etwigj?=
 =?us-ascii?Q?lyuY3/pyKUzySeOAvKHprYaZ3dP2Rdkkd1XY5uYUp3KOcf+hVmyi3iX+xFWG?=
 =?us-ascii?Q?furGcPzarzXUb3ISQMqYpYAQuqjAYTfNeJhAOHsFhz9fJsG/Q72vtsKM7yNw?=
 =?us-ascii?Q?BSYct8p2EsSL2+HDlHlh1/G/8zLvpLD7jleJNv6BCbSlG558bASK5DZvaprs?=
 =?us-ascii?Q?9POmnku1UrsG4OYDLPb3dbhLR/reS2GnBG7l6PrHBW1ZLpMVO527LGTWsZBh?=
 =?us-ascii?Q?iYWl3pm06RPOSotJ1VbZmDp/5rTtSX2p4Gdb0GqoYVtDYLnjkdzHhO0xVZKo?=
 =?us-ascii?Q?9DU0vps4VrvxQolXtx5FDAida5nemTfY+4WnUS05Q3y+EndeoVXgyF0lAb8X?=
 =?us-ascii?Q?CV+2FSo3on7H7CxPUALUPrHkieJhoZugLjTkYQ8VRpzQPmN3u9NJG07Y5jst?=
 =?us-ascii?Q?dOiiFYkD/14hsilTGpH4ETkAIxUpmfbkms419JNBFIEghVxjVT3g579SrvRv?=
 =?us-ascii?Q?qDe/FGT36GdkefXWhW5Kk4tVDrOajFZ1VQD8JlQax/MUNWvbl+P/9AaV1M/J?=
 =?us-ascii?Q?K3iOXWYah7528r3lY8YG12RLE5FPzj68p1oJxVcC3Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dhoy2gNOWJxgI9nWUfjoGLrkCFL0xgUyGPFqMjsVWpaAw2gkriyMoc9eMM0I?=
 =?us-ascii?Q?7LGOGnYEiHDF9C1tQRdq44yPNPL9kJYV4yBBYnuyOazIRMRV3uq8kZ1N/7Ag?=
 =?us-ascii?Q?oJ5oOly8j369zHgqTkaoLI5NGbb0L7Xj8h0kHzrofCP/YfQUFTwYzJpjeUYp?=
 =?us-ascii?Q?A0OcebgqFfC5tWq3h8BypPiaiygDyx+xOXSSPrXjhmx/i3HrfCQP8V5QeMtt?=
 =?us-ascii?Q?wwDFwReTMQF+w33IIelwUfYOgh8SBmof2MVx0C8TMG2uMqRUUxALOL2uTXmn?=
 =?us-ascii?Q?z5Wo7KuGtczmTL7fa4RGotx/DKxxNG3HMC4iOzekLiV5OViBFXsGlgz+ewpb?=
 =?us-ascii?Q?AEKPYG9T0Vor3DCzgPjOmRdTq8ylv0TlOyf0+AwPDfFujMDNm2xT2tIidbOQ?=
 =?us-ascii?Q?N7U9bMy67ExGjAPI04bsmPHLWERj0Y+WHPToH3DwZJ1op87KRDyXtnyczjQ6?=
 =?us-ascii?Q?g5fIxTEohha+YxTGM3oLgnHuFx/RcncK1wO0LC7mTeeHorsldQ7Et9lyfwde?=
 =?us-ascii?Q?x5fLJuIUtHNSJwn7asNeoPnynB2HSsyWvfsSKiyH0MNXhFPXGdNfDmaajJTL?=
 =?us-ascii?Q?sUbyOfcs1NjtNI6vuOalklQvQm/LpD3QEkwc821EvtaXcB+K+tTXB/0iVJdW?=
 =?us-ascii?Q?wrGBuZt/2zkIEvKr/zJN/nasPhjt4s9tbeyylqelOt9tj71NQ+ibxxtNafus?=
 =?us-ascii?Q?18VnYgzH/GEXt10ayoxHarZDabPWBiZKyEendeuaoGXDT5nvdDfM9KNg/aA/?=
 =?us-ascii?Q?40JqL0Zi5a+jPXEmC1CKFTC0bhmdiJwZlxbk1NyB33VePNX7qn4KNlKtM84J?=
 =?us-ascii?Q?rTVkqMhLsD87+rbS9uKGyckMQLz+nTfolC5gtOo1TB5hAU99jwSgTaXLIRax?=
 =?us-ascii?Q?olWg98niWjzA60tXyBmsZiK/u9Z85cm6B/j89SUBJgJ/50dUnLMghcqMVJ3c?=
 =?us-ascii?Q?aIytFDoqbng967oZE1QDxDdVB8BoZVzPwfoDjfBGJvj0Uh9Xl8xtUmwcv1LN?=
 =?us-ascii?Q?YVr05HFeMcQlgi99OiFwVYMBz7tB6E40LA+W00QBGfKME2lj+ne2wsNAeeMx?=
 =?us-ascii?Q?do6RMJzeTWCCowI4hOioaq4EsbLuDcaskveHSdcwprJprS5uFKoKAfts0doV?=
 =?us-ascii?Q?rmkYcYlDdfcMss/Dyucxh6HW9rWcyUfdWv3FfcNChdZmpYm3FzPKAvfGMI4v?=
 =?us-ascii?Q?XP66xLEGgH+IZltEWopO7hyq2wAJrcXkhy7wI2B2t9UDIOVzlqQAnP3UFUiw?=
 =?us-ascii?Q?GdH/fGHvO5AQibLZPHCMKDeVFubKTdsCnXBoejeYRO2nn83m/6UZB4k/z2z5?=
 =?us-ascii?Q?YSwkK59Jvt+lpXKfIU8QNnw3AL9KpSvj01145vm7ppGheDZrLUB+WDTTj7MA?=
 =?us-ascii?Q?SFoGs2dpzZt4YWbrZ4RCyMOzvXkrNi2+ewEoqRjZsqlhDY3jjivEoq7mHBG6?=
 =?us-ascii?Q?8NFFIoMKYHEPoIqIJrB+zslSBTD0KDn76tLuY5DVIPuO+jst70J/fHpt+P0o?=
 =?us-ascii?Q?4DFW0k/6u0mYG6SlxDxBBLz62GKAveMyICZm5qfMHSo7fFwW9Kv5iZIc5TqY?=
 =?us-ascii?Q?v05qEVA9yE9NYul7cl/ocZKGvyq90luZPow5ObuuZnmTosxRFwluqMb6Z7RV?=
 =?us-ascii?Q?5A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d8ba9ea-7cca-468f-51c0-08dc69847a8a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:14:49.4888 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /1+5Te93ENPWK1XBJrjTpDqYiS7uLM7k57hWsTranQoMhSQGOcLuNRMm4KL5Ld9MkikPMOEN5o/yXFMpAhf4Rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8475
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

On Tue, Apr 30, 2024 at 01:09:57PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_PSR_IMR register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 4 +++-
>  drivers/gpu/drm/i915/display/intel_psr.c         | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h    | 2 +-
>  3 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index c337e0597541..a9bcf249e925 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1455,7 +1455,9 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>  			if (!intel_display_power_is_enabled(dev_priv, domain))
>  				continue;
>  
> -			intel_uncore_write(uncore, TRANS_PSR_IMR(trans), 0xffffffff);
> +			intel_uncore_write(uncore,
> +				           TRANS_PSR_IMR(dev_priv, trans),
> +				           0xffffffff);
>  			intel_uncore_write(uncore, TRANS_PSR_IIR(trans), 0xffffffff);
>  		}
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 57414a1375b1..12b541e8bbf9 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -305,7 +305,7 @@ static i915_reg_t psr_imr_reg(struct drm_i915_private *dev_priv,
>  			      enum transcoder cpu_transcoder)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 12)
> -		return TRANS_PSR_IMR(cpu_transcoder);
> +		return TRANS_PSR_IMR(dev_priv, cpu_transcoder);
>  	else
>  		return EDP_PSR_IMR;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index d815f08aac2c..40dc6ee7ec1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -66,7 +66,7 @@
>  #define EDP_PSR_IIR				_MMIO(0x64838)
>  #define _PSR_IMR_A				0x60814
>  #define _PSR_IIR_A				0x60818
> -#define TRANS_PSR_IMR(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IMR_A)
> +#define TRANS_PSR_IMR(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IMR_A)
>  #define TRANS_PSR_IIR(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IIR_A)
>  #define   _EDP_PSR_TRANS_SHIFT(trans)		((trans) == TRANSCODER_EDP ? \
>  						 0 : ((trans) - TRANSCODER_A + 1) * 8)
> -- 
> 2.39.2
> 
