Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 430918B8440
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:15:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A31112FE5;
	Wed,  1 May 2024 02:15:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RjySq1Wq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43DCA112FE5
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714529727; x=1746065727;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CWCusIFP3vcBZG9CiHC+nZulWPsSv8guvWVYRNCbmg8=;
 b=RjySq1WqVGnkNVNPWJqjoiJEBp3CSizpApBqT3+L7bEifSx16dCbOHWt
 cj2+P4y2IowNiojUUC0ql60StUm8bWb0CN+HVtmFslyyGbYYfJDSTiPFP
 Pf6YT8kT9bRH5yZF4gxc5J04Un4YxckIJLxER884NblnsYkFu6a/RzjS/
 I1KDzWVCe4CWNyB2sMEXIaELTgtMpGJDGq9rNhRfKVeBVpmm7bKQ4tv3Z
 UfdfAjk1xpLxxBCTUBK2YGj+tdAnLVoEQE/gdAb0qFy1KyWf+hIwYShOk
 DtC2EUs/00YG76Lta8KT0YgxCNP1IzPJ6nZf5JYuvVUF6C0SE7GSZdpEW Q==;
X-CSE-ConnectionGUID: AHPYoXnkTDeZD444Bnu4ag==
X-CSE-MsgGUID: udN+OzFzQIWfGc+exINHzg==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="14058377"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="14058377"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:15:27 -0700
X-CSE-ConnectionGUID: +/5j2CMKRKWBlwyqGhuhcw==
X-CSE-MsgGUID: zJDH9/L/TZ+hFvjrL693Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="27154832"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:15:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:15:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:15:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:15:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hAjw5IiKv8rfWWRlI69C2UpqbYoVuxumL0WxszUCpXnPwLNwR5k+2dlZIPeEmCIRWXNRXpmHHXwGT0O2mxAo1kJ/ESrVq6ttTRBV2ESziexT5o1OjEouf1CUtgK8pqy6nDhn4/ry2KbMhO5LL5espgE4oPezUWOCh/zgCh+6eB+NkRxfInZDwRtEc1NXg9/k/uNXB2XdMFxKZnDlRpEzdqSJJCfxintr4s8j1ZTI3OjbHBYNSAXbmmFBVylVIJRCUlRLfs+twp+vjwpD1xTZFT/8PFOmbnhJpc8hn/hhyJoH0RxHbizRs6L6Pyinqamsj7lm7EWvBpwJv8qs+8fj3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+t5RQ/psbqw1BwUUHYOeRlASMq38o7EzEVywndG/Axs=;
 b=axmB3shFVVwbNS1jq6tebjQhnSuSTDJtzTrSnJ/wqXTxPLIARucfXFx0Cn990rGNG9Qwf6tl1n5IWvuSlC/g3pN9Q9wh0Op7DKPICI6BAbB3GUXEkRl4w3pwTKZkE82GYxZq7QhUf6/glRO5aihGnui8d1vlT+yK59cdhws38QBeBwZfG199jGI849Re5W+8kmbP30zvD1BEYpt/xY8hpLN/I+Hj/ptEtrY5c3SLwycJ1sxLDE7NNU2aZgUAPr/dNDucZJDd5E4rnvJ42j2bDA6V3c87mW2B14lhNbU7cEX/D8elNYFyYeMtvGj2d9WYS+s5Ia86zdZKeSggXigiHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8475.namprd11.prod.outlook.com (2603:10b6:806:3a3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:15:24 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:15:24 +0000
Date: Tue, 30 Apr 2024 22:15:19 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 04/19] drm/i915: pass dev_priv explicitly to TRANS_PSR_IIR
Message-ID: <ZjGltw3btjAdVbFk@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <3a03109d11e7f55a456c3e5ef28d3ffa69582d3d.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3a03109d11e7f55a456c3e5ef28d3ffa69582d3d.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0137.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8475:EE_
X-MS-Office365-Filtering-Correlation-Id: a203705a-4978-4398-5fd3-08dc69848f55
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PhO0Du3l94QsExz7G1aqxmttpSSTKHuwyjiSQ70d8jLu4hDwGNj4Y+0z8ffg?=
 =?us-ascii?Q?smj+jqB1Q+4IXA5SvQhjO9xgGGkGuM9AenmbJdbxgPx86a3JXtVHY2qNJgg1?=
 =?us-ascii?Q?Tdbwg03vdwZrk/NzD4Xj9F5jZHoNHbjGFR8U422NsE0WsHGzOT9VErVEJ7vK?=
 =?us-ascii?Q?cgNPihWgqdkiKZ1c2Wisl4mazBnL+avhelLPP6bcsUAW7WNd23a85TqJ/po0?=
 =?us-ascii?Q?RLCJ2uTERSDrv3//G8lWOtaCbvMsGv2QcrRJpuADYy86vbBdXHaLKgL+lnIN?=
 =?us-ascii?Q?gN626pjtewCjFr8GPmGx5eWSkGkhMkUce9vs4i1mCJlKyswLBGlHnsazbRwz?=
 =?us-ascii?Q?2jbJyPtRoNuGei8SUHSxukEvok4HnamInUQcS+PzbpIhil8sfZjVfAk/V0JB?=
 =?us-ascii?Q?KRJhY1yb736/2Age8P0cL84+AM+vCYUKw7ERbMw2DDYgasJ978RDCLSkwCtF?=
 =?us-ascii?Q?QUSroSy7uCdi3R/PwTgfI5vTvTNGUlGv5+jBxUninM3zEoiHHRptO+hj6YoF?=
 =?us-ascii?Q?Kj9VnIMpm4aD/1NxY9zdg1qhJHdBzbDo8r32yMDQxQAK2ATJe2SvwZ788/XE?=
 =?us-ascii?Q?LauP1XLclpKbSZxTdANU0JkOzUVUvI2gwg8N9NQuMw2l1Ui/AsMuCJkJ70O9?=
 =?us-ascii?Q?Pcc3rHEqYkaRI5IEi47GTGv9hrs8jy8RRv7SX2vIMlpkgKBx3o1m2qLsjFZL?=
 =?us-ascii?Q?v4rL9Pd01bC+CEKiUcEyEFlmSl6geKihyg+FcoZDM+ib+5yfaWBORjavUhSZ?=
 =?us-ascii?Q?5cAS22A8gXYuL+lSON/9gtRm6+0MpNknbalTEe3mWZjpLNsHKShzjVb5KYwN?=
 =?us-ascii?Q?P4wGvo/aqvt6vZs83nSyHFOi28D9ZntkWmsJezM4cQLfadh9Tadd3+qkh1Xs?=
 =?us-ascii?Q?yQ+fP4CPH8FmT3Cs2OtPlioW88xkGDTmLpqTYkqByE8SUtSYvNSYmDmOcvC/?=
 =?us-ascii?Q?qfucN6F66s1OkIWPoV52rGhft96AlFRvHneAfR9qhpSJWhM5UmkUC9TIrbk9?=
 =?us-ascii?Q?S5xZj5Lex38/WaFJmpHNgvJGRh+l7CWzpDntEoulBrELhiO5ukmnjYNLRTgd?=
 =?us-ascii?Q?xXDjHbCSe31lcWJ1eQ8Pd+tiVZ3zzeT1koP5pyy/avsdaZSZGQLFbDZmDLgt?=
 =?us-ascii?Q?qh7gyNnwa0d7Ti8Ku5gxuwW/tvZ3+hrlYvhKfye67pTT44XJjzK4YJ2AYwvQ?=
 =?us-ascii?Q?zN5tFOvn/Cy8Je4gcW3AC26doHZC+gmFD17fRG3tjBx3dCMKuEB278i5RKF8?=
 =?us-ascii?Q?1om6KnwufDxP1PdOFMh6tBYEtAdw+AD5jgy1y5ZDhw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7c+UeWX4zvLB1/ghLUf4PsQUc+uroLVnNqeNVDJAaHv9fKgsRP6zzSx86lHy?=
 =?us-ascii?Q?bwT0TI0bEVgQLczvCjfJoReLLnft6lDPaUkB+k350rG/r9b91A1/FssAw81B?=
 =?us-ascii?Q?NjokjO2raIz1LjrFCn0+T5Y9kerrx9dOkyM3ta2ODRMkT9H2C1Snk0ywJRc1?=
 =?us-ascii?Q?8AzEaqUOjOI9Le5DXJJlz/pFxmaG91R3yibn5uOc1i8HSoRBkOvMZRdXrb5m?=
 =?us-ascii?Q?n2tbWvCAwZGTAurEUaZguqlU2u+fxJBV9PDXlofjxVjwEowghIW8WGCJXROI?=
 =?us-ascii?Q?Wjb5dacrTQqbsFPvytazJ9Mo4fbrwOFWTcGLK9mbGSVb3sspgaKAdZhXkejB?=
 =?us-ascii?Q?xufUDfBk3UC8BYrYGwWgUoFfqEyYKsnCuQ9+tWEVrK24sJAM6/yWXrTFD8Go?=
 =?us-ascii?Q?VgRINPE5mtGO/hVbmYqwC1vS6dOI+DN6jIMTyeI2PF06rhwr8o0rs17iWFqe?=
 =?us-ascii?Q?zbDZxboa3OlaritxJv98PlvN+I1DjRbfyTQOMw9p85KKLjqVBQxnL2khH8pU?=
 =?us-ascii?Q?VNG2PRGVgUqgaxSu+qHl0JgS9POvHmVDBR8jahf8IEptuxnkxWYmkdtl3CMA?=
 =?us-ascii?Q?8NbbKieOI0+Xm1o/+gdkXPzWGjtKhLZM8WqtTfas9onV665+UI1nk8mUmBFs?=
 =?us-ascii?Q?9w8MRDy/gIi7e9+YIA6sEOEqPQF6kgp1MoaYV0KFJKTF26HKHt646FZzUXHI?=
 =?us-ascii?Q?EnxALK5iY9cooxDcgC4z1ARWN4JUlCsGU9A7CyC6GD830KTv2NWrJ7vEJUI6?=
 =?us-ascii?Q?Q1pIgGG9PxHnKs/oDLUiCPtkKXdXq4R+aIG5SPMpGZ+HnRBVUn4BuFe810qF?=
 =?us-ascii?Q?C1aJNnxPx42pBwbGDSd/TiM7zRa2kFPB1ewgKLXrMY00vlo/m2kOCZ10RQBR?=
 =?us-ascii?Q?6EftGvnazdeV2RxUmqks45Nlp1sEZsDNoPGqPIMV6Oday2itJLs6XOdETr+h?=
 =?us-ascii?Q?GjYTTq91TstYBy9/b2EXuoDbBuxgHJ3RX3W0LHs5iRvJ73tYYopBWcnhZVU4?=
 =?us-ascii?Q?96Zgv36Gu20pSGVchJjpojlUKrirPS7R+zsYKmm81mYi/5jzc4J6AtgyxFVN?=
 =?us-ascii?Q?1V17+glE2CnR3xY+w5sHOIlQ3UqOrIj4/KM3bX/M7uHRh5pIgYxyX+1TNZd1?=
 =?us-ascii?Q?K8+LsATpW4Ny2SZISqU0Ta9eOQDtkB2EQDJaULe+wU2Jpg9a0dhrR5f7A9hA?=
 =?us-ascii?Q?j5lTjEHKCFNuSmG0VeQFikbV4blFY0tEJZdCQgXZv/iBiF0Nslb7kw+OECDE?=
 =?us-ascii?Q?wRxRfv431/P0NTVs2+FO+R+I1uEQ2d+30NQE0b1xXiGyQbNNFIT7iZUAYHcs?=
 =?us-ascii?Q?SPz6rqtLKAh52yzrYAQXdjDDgC8Y3lVxq23Is0FmHFN7qQzYFQEYbWpBXATJ?=
 =?us-ascii?Q?GXlPOrf+041jYtYYYZFJg3Hb6a1jNXT3CjK1Bg6NqCSwPog4cDFWqOBjSwfl?=
 =?us-ascii?Q?Nvnwchv3IU7ZQB75S7gwxXfZMqphDBelfjxvIGY/9E+N28E6m3hs8MqPQAHJ?=
 =?us-ascii?Q?qqp27ruOgDo1HJbQaBaIZl4yddpil+kFWKwpjSrTCHsmzDCWsVcuc5ffTbJx?=
 =?us-ascii?Q?0w2CMBzjGvjnDafyxty/gIHYTJT8PuSeED4/OoDCpT7YP1eS9Mp9SRkLmWA/?=
 =?us-ascii?Q?Gg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a203705a-4978-4398-5fd3-08dc69848f55
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:15:24.3566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nbpZ3cFCppU9GU1Jc06qqTYmTxNNFbsG3UxD4S4rDtpH/12fcq1y7vpZGBl5ZZGP/74msnMZy/uGc/xDzPZedQ==
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

On Tue, Apr 30, 2024 at 01:09:58PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_PSR_IIR register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 10 +++++++---
>  drivers/gpu/drm/i915/display/intel_psr.c         |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h    |  2 +-
>  3 files changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index a9bcf249e925..c41f058acaff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -876,7 +876,8 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  
>  			if (DISPLAY_VER(dev_priv) >= 12)
> -				iir_reg = TRANS_PSR_IIR(intel_dp->psr.transcoder);
> +				iir_reg = TRANS_PSR_IIR(dev_priv,
> +						        intel_dp->psr.transcoder);
>  			else
>  				iir_reg = EDP_PSR_IIR;
>  
> @@ -1458,7 +1459,9 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>  			intel_uncore_write(uncore,
>  				           TRANS_PSR_IMR(dev_priv, trans),
>  				           0xffffffff);
> -			intel_uncore_write(uncore, TRANS_PSR_IIR(trans), 0xffffffff);
> +			intel_uncore_write(uncore,
> +				           TRANS_PSR_IIR(dev_priv, trans),
> +				           0xffffffff);
>  		}
>  	} else {
>  		intel_uncore_write(uncore, EDP_PSR_IMR, 0xffffffff);
> @@ -1690,7 +1693,8 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  			if (!intel_display_power_is_enabled(dev_priv, domain))
>  				continue;
>  
> -			gen3_assert_iir_is_zero(uncore, TRANS_PSR_IIR(trans));
> +			gen3_assert_iir_is_zero(uncore,
> +						TRANS_PSR_IIR(dev_priv, trans));
>  		}
>  	} else {
>  		gen3_assert_iir_is_zero(uncore, EDP_PSR_IIR);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 12b541e8bbf9..0b1f7e62470e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -314,7 +314,7 @@ static i915_reg_t psr_iir_reg(struct drm_i915_private *dev_priv,
>  			      enum transcoder cpu_transcoder)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 12)
> -		return TRANS_PSR_IIR(cpu_transcoder);
> +		return TRANS_PSR_IIR(dev_priv, cpu_transcoder);
>  	else
>  		return EDP_PSR_IIR;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 40dc6ee7ec1d..5fd4f875ade0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -67,7 +67,7 @@
>  #define _PSR_IMR_A				0x60814
>  #define _PSR_IIR_A				0x60818
>  #define TRANS_PSR_IMR(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IMR_A)
> -#define TRANS_PSR_IIR(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IIR_A)
> +#define TRANS_PSR_IIR(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PSR_IIR_A)
>  #define   _EDP_PSR_TRANS_SHIFT(trans)		((trans) == TRANSCODER_EDP ? \
>  						 0 : ((trans) - TRANSCODER_A + 1) * 8)
>  #define   TGL_PSR_MASK			REG_GENMASK(2, 0)
> -- 
> 2.39.2
> 
