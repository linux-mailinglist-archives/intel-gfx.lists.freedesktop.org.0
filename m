Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F6F870FA6
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 22:58:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8BB711262F;
	Mon,  4 Mar 2024 21:58:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PzzQFUZE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6137D10E1D2;
 Mon,  4 Mar 2024 21:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709589522; x=1741125522;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KqCrB8zAQa+SgaXtvaMnyzj0vTpiDIWsU9wQM5MP6xo=;
 b=PzzQFUZEmCM09ulAs2UWQL7M3Ifd+IZaKfUCt28ZM7cUCvf4zWdgWaz9
 6I6idxUsdU2iUbkMAS5Vgt/+QlXu94QvnMMDjApcAOr+lzAdWvurk3rL7
 YJKq1VZpSCPf6NfTqS+BWCFPEEgkjxhaFXJNA1/OFrr9JV0zMxpIpg8Xd
 DxquYxIIxprZRbD7W01OG+Tbz1eWCngBW3yCDt51gkzJVj8+kfel0riUJ
 4e1mkvu3izSP86s3eNKSmCLHyxCjMdJQpgw4eemywa7EnmCiaS9fvXwN6
 Ufk4SagY7go0ArEU096Wd/845TMPi0AbSDMxgMUVi/wErRQ3kI8K23zXv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="26571844"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="26571844"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 13:58:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="13635510"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 13:58:40 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 13:58:39 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 13:58:39 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 13:58:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lKT4reccLrPoNoC+DqC/W10flnPHTBADqVP5pb5ogr6mZqX0NhtGhWVl1WVf6Mw9MoKBqqMzm+wbyfTDid5t1SIWO3eGtzu5bTz5cW0MlUmJ/6rF6S+HoGhzJ/D0WE7CKwvmZr6ACM2WyroQ2oHbIo5RpldrvfUI9s496a66Hg3arlNOg4Ud2zmHmHdcnDPypl8XqD7AqNlvZFv4FuQZmMTaOVzrAfTljex03B8oYNrwS2KcmMxzoYzhKMhxPUWESOIca1jCuJjfofqzGhdplBVD7u9eS6Lf9TvtwaqX4KXP6rqBSvPOc0ZnG3suiOSJevq+9DhnfqyBaARFNaCprQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NkVS1Yg5kP2IFspXUyDg4m8XDtNFlv0aBhkb+m2X/lE=;
 b=jafUxOpHwWJrR39LCgdUS1ty0hnHyox0OaqVlQ45MjoTVhB1zFPaxkAX2W6yaPt1F6B+B9tIzKRkUcGnF6+PQ9jWgHYhRWLihDSTaA2TLKNRB8RFszB7rCAQeSZvr3UQEfAG702k0mMhVDmQyBUGGRes6G1fYypaYwnXTP/I5we5fcVuXhQN8+zxSWmjZhb37N9MRl0+coAVnF131W7kNrarQWi65jTdARyqnXpj26/si7lb6B/p/gYzSTwuLVCcR2Ps7DkCpBzw3Lq0bbzHfMPF+TtiFiU5RL9pVzxiXCyugNJCh72kesr53jUAimcsVZOZKL+XjSfpmv2J6FuoHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB7448.namprd11.prod.outlook.com (2603:10b6:510:26c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.22; Mon, 4 Mar
 2024 21:58:37 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 21:58:37 +0000
Date: Mon, 4 Mar 2024 13:58:34 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>,
 <vinod.govindapillai@intel.com>, <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 2/8] drm/i915/cdclk: Add and use xe2lpd_mdclk_source_sel()
Message-ID: <20240304215834.GW718896@mdroper-desk1.amr.corp.intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
 <20240304183028.195057-3-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240304183028.195057-3-gustavo.sousa@intel.com>
X-ClientProxiedBy: BYAPR08CA0038.namprd08.prod.outlook.com
 (2603:10b6:a03:117::15) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB7448:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f2aa79f-7774-41f8-8f05-08dc3c963e59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Af6E/gjl+6ANFdaFfLI/iLwwj4SaAjKRjoiqHOjpOWJ3MkQgi/MMzxvXeXYRBMBc6r73fYCIUDtXURQ1aGoQVItylHNNXk0Xj+k2EhJ64vnwlYQaC41uqec3N0GmpVCOc/jbdh6q2VjqXCpuHWocNmOtsoutw1EgtIzHJTQER0rZkfM47LjXZJxWDgfPyOkh4n6Eoq0kcS51J6za1hDUsRniVwsibqMnF/KRjqr3cf7DdYNWUdlx4Rl9RujgdJLu0Zy9btliKBck/GC0e1dzJ+ea4CYY8MIxJERWnhWdj85T3PaWmnVmlOpFMSPBmtyQiLwXhQliYYsmYNdieMIiojObM0VIByhmchwP4Zui+f99wcqpEqXSazAwLrlUrmFRMzbi69QJYmhVIeIxD8iRJIpVLPZXCQNdqrWdey17YNgB6+SKHcKybm2xV6oU+ZY/gIQ4MLxiOanmVU4cW1/Ot1q4s5WT1loJNKdTZqibfoKa9r8zCzYWpbDB0Ei7boXQdm75WujtQyYQjrJ0tAN2keOYbYdCwTdS8pqRS13K8v1ttwTNRpYvtOlgg0FceH3InzcwoDCYMxQFAxmsHUU/krpzmRCyT6zEp9OG93MlG5GOEL0xY+6gUZilibXprF8vgqOXuHbk7gJrLiAS28dqyw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dcPD+UKWPQYmTZFn287b98jwqH+mJG0u60MPpKsBi5LhBISmgJbVTC+5UVBc?=
 =?us-ascii?Q?EUADRqe9Ccrrc8nOkexX9HrZs8LGnvkoC+FlZ0ctiuUV6DT7iV/qXKYnfGWd?=
 =?us-ascii?Q?dmXC9PnDviiTvGOW+X+eHW0SOkzlDjjUXrvTP3pZYVECjbETFVwRLj/9h3+S?=
 =?us-ascii?Q?aAETP10gmQWB8Dc+b2j70TiVQiXPcSWMzT6TCVWiqlG0wa381oWcnFDqJqa7?=
 =?us-ascii?Q?kO5WCJ1M0/AKN5RPimDqnv8iAc8YKyRAnOmCLrsyywX3bgGbpMEYnSprsq4x?=
 =?us-ascii?Q?eP77dDzFZp1Y8Lo2cPbVG4C7kzk9kZ4kVKkk1iHCWl52u+JRyVWdHBkfL4yZ?=
 =?us-ascii?Q?aMEMCJ+qftIXUmD3ahjOv7oAO2WVYE40OgqqdM5gL0as3lcP3xQRo2N7UuAn?=
 =?us-ascii?Q?UCBYkKhkELumFXJ90goSmnmR1v8jw1/GmOz1pWwxah15YRN6YPl5JZgSHlQk?=
 =?us-ascii?Q?902lsJ2eEGsMmC0tAhjUq+H2bGQKPxxz2zytc1kkUdRI2PK2tWeJAIdKUxf5?=
 =?us-ascii?Q?SIdePFEDkpIYgHdNUVDmTfcDPMdVpfaK160CAwwo0qolba4p01gb8PdkZ6iu?=
 =?us-ascii?Q?XMSQJnHRXMovFTRwzy3XA2drz8xQet39gK7jO0tX9/J34J7QjUOFRgDmyEis?=
 =?us-ascii?Q?8WjAHiQVixExMdlufVIs3QfJwGxLB6nUN5NcgNUz12wpies+Nq4tO3x7LRwi?=
 =?us-ascii?Q?tOT5cvVKcgnjhKgPfFS9ffoehesGaX9Ze592yOPbFLd6Q9C0QzO3IEzz6jO9?=
 =?us-ascii?Q?W0uKaMYDu3aROOW2bf8BdI6VNaRBW2YTxcxhg7va5hiVBdHHMSWhuFMfm5zg?=
 =?us-ascii?Q?1SMjsyJd7RJnTyKZ7ZPIKpPcE1oLmZNkn64QafeRVIjaBSfnPULIxq1SgHJb?=
 =?us-ascii?Q?Lq7gIJKFMM0D/XO5AtpHUUDFMoKx+yTp+GGC6v+1oyakYdZ2cHr12PSGHrCh?=
 =?us-ascii?Q?6+DgxmLp8niEBJfInW9RyYhGUTeKHHcj4kd/knOS6P6lmU8xRxKFY6tiFQaR?=
 =?us-ascii?Q?7DQ7xMtIEADCsnJkNLaOB0J7fduzChEVvUCqD+lFtG2Jes/PaiLfvd66dSCs?=
 =?us-ascii?Q?p0nOjOPmHhoIW8JtkIC57732lh1dJdUiHlwUstHwHYQCnV0RBQQRWSEHa+Y4?=
 =?us-ascii?Q?81I/sNggBRPJmxTxhlVKwJCEAF9Dnq1MXekSqsLei/0az8oOA2lJ7Kc6XM3q?=
 =?us-ascii?Q?/LP2toRcgUnDy5yryCkdGb5SsAfj5HMsMfA9VGseA7mFZtj+jOgxm2PjD0vT?=
 =?us-ascii?Q?mGSiyTMROdCmXXS/mIYoTbJM8lTOtX9AGPtNGdIx2RS+5uEmdU17RRW6sRiN?=
 =?us-ascii?Q?63dgPKVpVVQHvKO0OV/DeWLSrbfEIjHD5Ikr+YJbcgCUHCC40wRkVIPvaw5N?=
 =?us-ascii?Q?p34PbgRv7zBpouGP4s0zgjKWKuStEToqDN2p5cHdizdYDd8SSgkr9Llz89R+?=
 =?us-ascii?Q?UQUhosLdGfjwmaB9Patzy3j7mE2XKgKedG7BvIvDZrVxmrMyTAkqkHsySsYB?=
 =?us-ascii?Q?4aSqEmkNDPQZY03QxYFOk5TP3qyH18z5unJt0WPPvBBN7LCdy2W52jt0Xfdf?=
 =?us-ascii?Q?ZMzVU4MimcmcOlr7nV8U+/tBmvbduZYCO+QJS/22tentTjZ0rHbugep5Ptos?=
 =?us-ascii?Q?WA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f2aa79f-7774-41f8-8f05-08dc3c963e59
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 21:58:37.0087 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qs6CQDK0vuDAq6GJNyP4gdLcESxsqwzYG15vM2oDT8PwZDUlZWN1jUi9Q9tS4oz44xkSIIf/1uy7RPsTLayDLSmNBZ1c6ttVxbIXMAzRr5Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7448
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

On Mon, Mar 04, 2024 at 03:30:21PM -0300, Gustavo Sousa wrote:
> There will be future changes that rely on the source of the MDCLK. Let's
> have xe2lpd_mdclk_source_sel() as the function responsible for reporting
> that information.
> 
> Bspec: 69090
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 17 ++++++++++++++++-
>  drivers/gpu/drm/i915/i915_reg.h            |  4 +++-
>  2 files changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 407bd541eb46..bf84bf27213f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1876,6 +1876,21 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
>  	return vco == ~0;
>  }
>  
> +static u32 xe2lpd_mdclk_source_sel(struct drm_i915_private *i915)
> +{
> +	if (DISPLAY_VER(i915) >= 20)
> +		return MDCLK_SOURCE_SEL_CDCLK_PLL;
> +
> +	/*
> +	 * Earlier display IPs do not provide means of selecting the
> +	 * MDCLK source, but MDCLK_SOURCE_SEL_CD2XCLK is a nice default,
> +	 * since it reflects the source used for those and allows
> +	 * xe2lpd_mdclk_source_sel() to be used in logic that depends on
> +	 * it.
> +	 */
> +	return MDCLK_SOURCE_SEL_CD2XCLK;

At the moment this function only gets called on Xe2 and beyond where the
register field exists; if that's going to change soon, then wouldn't it
be more natural to just use an early exit to highlight that there's
nothing we need to OR into the CDCLK_CTL for earlier platforms?  

    /* Not configurable for older platforms; they always use CD2XCLK */
    if (DISPLAY_VER(i915) < 20)
            return 0;

Functionally it's the same, but it feels more intuitive to me.

If we aren't expecting to call this from common codepaths that aren't
already protected by a display version check, then we could make this a
drm_WARN_ON() to assert that we haven't deviated from expected behavior.


Matt

> +}
> +
>  static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
>  						    const struct intel_cdclk_config *old_cdclk_config,
>  						    const struct intel_cdclk_config *new_cdclk_config,
> @@ -1980,7 +1995,7 @@ static u32 bxt_cdclk_ctl(struct drm_i915_private *i915,
>  		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
>  
>  	if (DISPLAY_VER(i915) >= 20)
> -		val |= MDCLK_SOURCE_SEL_CDCLK_PLL;
> +		val |= xe2lpd_mdclk_source_sel(i915);
>  	else
>  		val |= skl_cdclk_decimal(cdclk);
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index e00557e1a57f..eb953ed1f113 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5900,7 +5900,9 @@ enum skl_power_gate {
>  #define  CDCLK_FREQ_540		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 1)
>  #define  CDCLK_FREQ_337_308		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 2)
>  #define  CDCLK_FREQ_675_617		REG_FIELD_PREP(CDCLK_FREQ_SEL_MASK, 3)
> -#define  MDCLK_SOURCE_SEL_CDCLK_PLL	REG_BIT(25)
> +#define  MDCLK_SOURCE_SEL_MASK		REG_GENMASK(25, 25)
> +#define  MDCLK_SOURCE_SEL_CD2XCLK	REG_FIELD_PREP(MDCLK_SOURCE_SEL_MASK, 0)
> +#define  MDCLK_SOURCE_SEL_CDCLK_PLL	REG_FIELD_PREP(MDCLK_SOURCE_SEL_MASK, 1)
>  #define  BXT_CDCLK_CD2X_DIV_SEL_MASK	REG_GENMASK(23, 22)
>  #define  BXT_CDCLK_CD2X_DIV_SEL_1	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 0)
>  #define  BXT_CDCLK_CD2X_DIV_SEL_1_5	REG_FIELD_PREP(BXT_CDCLK_CD2X_DIV_SEL_MASK, 1)
> -- 
> 2.44.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
