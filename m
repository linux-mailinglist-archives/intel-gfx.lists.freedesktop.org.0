Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6AB87995A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 17:49:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CEEE112F14;
	Tue, 12 Mar 2024 16:49:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D9C3FbEz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0783B112F2A;
 Tue, 12 Mar 2024 16:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710262152; x=1741798152;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6wH3Z1jP98pkLWooIr6bsdBCkQuZzFiKPj5Ic3IaF2o=;
 b=D9C3FbEzP1f94SlRv5oV/DZYlLd8QY9zGKisex8gAO+y7lsAewJAruVK
 k140553bJJNh7Fnr3erPGAIzW9MKnYMbGeeDZLLygmEBsFLJ5Mrrly7RF
 YcTLGYjxcHk2IOshaq1gzqHMPHZRwFKavKaffOjRCLE2GbzYFuhRzuZkT
 RIfSniLTCdyuno5muwxQI5cV88FbMVZXDqUMAxtKvEFL3CA0re4EE91X0
 oK0n/CzxDTa4xUKWLkbgP+SZon38p8bFvaR1SjaTu8eIczY6PxEUjA1Lk
 gAmjUBxYUm9uhkXeunF1j3TvLAoGsv9sVlMSwKZ+lIkyQ7r1vu8rL1zCH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="16427168"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16427168"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:49:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16249989"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2024 09:49:12 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 09:49:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 09:49:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Mar 2024 09:49:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Mar 2024 09:49:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R7leHqn7qhYeXCmrq6i0KSQBQ3aF7bbFzLb+Xh5e9mD5tnpZHd1olHnAi/E5xSZsczmQoOCyJt9ME3KrDgcham0L4uoIYOO5DwICfwq4EhLZuoCkR7QKUsU6hlPEQ36wL84iHBIoelXC3cERxSSb7p2WHg1/YGRMH0Kb0bg/BSUn53RLhPTMSbadag426WuRE3pxPoqFjO1PzBBUauP63aR80fQ2TC02K6YTUsI6uGSEAMFm1Mb+18BuYp+N2VZuktc1wxbuduPylNphM/zYG/2ktU2lw3HF7GDI7o989apq5GUq+HhhDIiTDy0yuJiZ8IsIruuixtat7nMaFDuHJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KWpc7SG9+PEy448/qomkRAcTpX2W7NpL1lXybzyR7dI=;
 b=CnI1jFupHTg0K+b1AfWqBnrcKzP369Ejz8lpk1fz3HePSZfeid39HoBmvq6a7MDxHMxaFK3J82ZC7h8qjIoOaDxdcB1zb1t/+/nVVct5ka8mp7m+R2ZPifX09R0zJCVnEHv/je/9CuBGqvzWSH42B0siGhPjN0X/GK21csNXcb75E7ZSe5elca4euakJknwo6aMQpjxRZ1L9ZgLYzCalORUruaA8FGKNRT4m9/GFrl1NJe/sWk1dSLadpeTF+f/PCIoruQ78UFL31Ho1gBCAqKSsKWOscPF16HD4NqWkNuN1Cw3LvdrR1vxZPo0RGA4P1yWEb8DIZut7sCi9rOtUEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by LV3PR11MB8675.namprd11.prod.outlook.com (2603:10b6:408:219::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Tue, 12 Mar
 2024 16:49:08 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7386.016; Tue, 12 Mar 2024
 16:49:08 +0000
Date: Tue, 12 Mar 2024 09:49:05 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, Stanislav Lisovskiy
 <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH v2 2/8] drm/i915/cdclk: Add and use
 mdclk_source_is_cdclk_pll()
Message-ID: <20240312164905.GI718896@mdroper-desk1.amr.corp.intel.com>
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
 <20240312163639.172321-3-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240312163639.172321-3-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0207.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|LV3PR11MB8675:EE_
X-MS-Office365-Filtering-Correlation-Id: dd8cccc4-bf6a-45dc-a100-08dc42b455c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: syVeBGk+pbp4299ObFATJUDwuoBYfRiCy4c0jUeL4JfYX54LdJpSK+WtbuRmtLxevluNHXnMfAI3aTIiM+HxJWh5TT83uxdQvuRCEzwwVTwUFSnjmmMmCOYg5PSlrBuqAszYKL7AW80iU6NIG/beLuDEwoKCTbwLbhQFL3xT6Rkpt7L6LQ8bEHULHkmOK89vqnlh0lfY0lmEK1DtTrPYfUSeSmIJwuKmxy1UxCCRbfCZR4nSK2H/1BEhLTcL7M/1Er3DZwLxIto+RMrhvf8H3t06z8dYdOzecCok0N52OPO2xvMCf0fUjoPOjOhYMz0ZmHot6os/6v0UuaPCx8kTPlcfICiVh6bnyP3u/QlF0d0tc3aKphN5unDtWb5ev8pkBpb8YXI73v1rfj4rpTNlstOmKqtxvtmKbyZ42c5G4UxxuxQcBJJ7GUAETNVCEMXoSDHYvsj4Z+SWabUinguJ+AllZyIhZoQbKvdMRPFwZAtZbH2OaDUFh/0TtTyzA34IMh0fV5mQJLBz4jbsDjepsguE255Siy71enJtre4Sd6crMkW0f62mrGulczCs6NKXWI+wrzptkEtP1EQW77GOGWf+pjfvXMB7gmEkEjFHEcBCsNkd4nA0nKvJGwlP5E9IdWrRSr2SFoXKl1X9FXkI5D+/dY66ri2I6FLiEXvM4g8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UjxOTTlXxh0riQg7usyZL9WtdXI4Khe1c3htMlteeCp8AxJ5N1TYWv0Hzzlz?=
 =?us-ascii?Q?4MjNWTvcBo6Wym61+gD73RAgrWc1xGpGdNxYNW7cEOeWRbtPVmfsY+hOeOd/?=
 =?us-ascii?Q?1ljtc3825M9lIJygXs4rGGbTHU+asJ5EwzsVMYutf7SX+kHTnyC04w8bFIpB?=
 =?us-ascii?Q?zZO7xuCarBJB4SJRMHlybreaUWKqwt+SYWdZDLiJs1FjhuPVW9datcfWreKF?=
 =?us-ascii?Q?kJeTfuzHgAG6N1Dob2AevktB87j8CHLiKSgP1gm2A0cr/Zzm6m3Bjr1i0cdA?=
 =?us-ascii?Q?XpfDt8Pf9ibqzBWy7ydSSyc2oOl4cdROGxkMo/xQNS4jAU5GVPKm65/hJncL?=
 =?us-ascii?Q?OwfLxG7zi4FVFpDGTUiZ8oH82xeGKVmjItYMQON3cXGIk/SeaHI0Z2rbw7+2?=
 =?us-ascii?Q?sDbtSU4SJ8P5BskGXW4gcZfc548YCo5VqAQc7pBpGfRre09uioYCGuypdRgi?=
 =?us-ascii?Q?GcNhm3YvL9O++Gex7DxzbN9a1KWl+xE1dpuD6DWTd+mnzOEBKbdHoH2tOY9g?=
 =?us-ascii?Q?yv7Yb/VmdUz+7DhusowIkUPdxB7Qxf6lOpjy0y7rC3zl/GJufCNbbEcqd8rt?=
 =?us-ascii?Q?y2RC2AkleSsK1IZn6QAGVN95cuwXT2TuagxR15Mqia3jTCYl5IY+dkO8Et3w?=
 =?us-ascii?Q?G83xJcUMHnE6mNeuq67EvVILKaWk5C3m2ZxXkuq1dgkH8ZguWWyz9zwuLkVg?=
 =?us-ascii?Q?2owXkRHXeNDT9nx2PvDsUvsw/CEspipSX8L+ufVGigklUOEnpXPR+S/HZYmr?=
 =?us-ascii?Q?MxeD1/udWXwmDVNJnmSW0mHYfRJDZS9qAYxwFPfJ/I0eMazbIvNc5A7ez5MQ?=
 =?us-ascii?Q?5GYGxobihEg/ZCqyWfOpAkJCGKoHh/Axig9GO61wbOsHf3LYW5IDHMEGyK3g?=
 =?us-ascii?Q?HybR09ScTOh0mrxRTK43qOP3Zy507m8yLvomULi10bllTgHWw/ZxurPZJJ/i?=
 =?us-ascii?Q?RWV/+bWJbvOx0NW4mUfAVm1ZVYOEfwmvhBx959Yvc0w2PvAmu8A49GYl8vgp?=
 =?us-ascii?Q?t0+dpBSAlVia6iZN+hTFUyUkdaJ1OKC67GRYgtpXF49VrM+fCNs1cc87PCHH?=
 =?us-ascii?Q?EWoF4g20y7irZz3CTrHRWurIR9sXpkgrf5XaqMpw9N5yobAXutWtFkjjnKr6?=
 =?us-ascii?Q?HUo43zCY4smOz9fePh44eixHPjrvQE0L9DfK8otmEo630uzKv+xzA88fEvNv?=
 =?us-ascii?Q?aq202bkR58Zw0iWWsDg0SLphbogc0/uLO+HmmrPx/rxi7/y1cspp6PTJoN+J?=
 =?us-ascii?Q?55zdlwe7Ze/ckXBMXeougTdncczJ2Lzql8tp3PtAbcxBw+Hp7JGDRMBvdYfH?=
 =?us-ascii?Q?6PZJ+ydOB6tmVDMypwvuRQAZFizOPYnEo9Ke3jo9Mj+qK4t3AYH6pHa07Ywf?=
 =?us-ascii?Q?uX2BE3h7CZU3twUNjD8X2NYPVu8foeTSBlBAHm9WuDnnddB25IOBhCI0UxVt?=
 =?us-ascii?Q?htQYvpfvyhLGhItdb1OJdKQx7uWCUec3pKQPVbQYxewtPtUm3TjKn9sGRhge?=
 =?us-ascii?Q?Xo1Oijn+ptNvGNE0n1YgrejUz5bU8I/inNckiKb2XZenuPfJuePBnJ876d9C?=
 =?us-ascii?Q?PTEXoP0OgJ+uiGiLri2MRrtWsyj+LXi7TwIlOOedYw3Ym6MnpJ24zmeZ2o5s?=
 =?us-ascii?Q?NQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dd8cccc4-bf6a-45dc-a100-08dc42b455c9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2024 16:49:08.1890 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I4SLUxWeq8vQ/FC94hFyA04IcWON9/AYR7vmMGTAxpJXWsEQwlM5Mnjmg5TBomFD8WsJ8y19g7L+xwnFmvLHWLqS6KsGjjtvxz0bhX1tK8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8675
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

On Tue, Mar 12, 2024 at 01:36:33PM -0300, Gustavo Sousa wrote:
> Currently, only Xe2LPD uses CDCLK PLL as the source of MDCLK and
> previous display IPs use the CD2XCLK. There will be changes in code
> paths common to those platforms that will rely on which source is being
> used. As such, let's make that information explicit with the addition of
> the predicate function mdclk_source_is_cdclk_pll().
> 
> Arguably, an enum could be created, but using a boolean should suffice
> here, since we there are only two possible sources and the logic that
> will rely on it will be very localized.
> 
> In order to get the code into a more consistent state, let's also take
> this opportunity to hook the selection of CDCLK_CTL's "MDCLK Source
> Select" to that new function. Even though currently only
> MDCLK_SOURCE_SEL_CDCLK_PLL will be returned, having this extra logic is
> arguably better than keeping stuff untied and prone to bugs.
> 
> v2:
>   - Extract mdclk_source_is_cdclk_pll() out of xe2lpd_mdclk_source_sel()
>     to make latter only about the register's field.
> 
> Bspec: 69090

You might also add 68861 here since that's where we find out that Xe2
and beyond should always use the CDCLK PLL as the MDCLK source (rather
than the CD2X which would still be the register field's default value if
we didn't touch it).

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 15 ++++++++++++++-
>  drivers/gpu/drm/i915/i915_reg.h            |  4 +++-
>  2 files changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index be268c6abe21..ad0f03e51e4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1876,6 +1876,19 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
>  	return vco == ~0;
>  }
>  
> +static bool mdclk_source_is_cdclk_pll(struct drm_i915_private *i915)
> +{
> +	return DISPLAY_VER(i915) >= 20;
> +}
> +
> +static u32 xe2lpd_mdclk_source_sel(struct drm_i915_private *i915)
> +{
> +	if (mdclk_source_is_cdclk_pll(i915))
> +		return MDCLK_SOURCE_SEL_CDCLK_PLL;
> +
> +	return MDCLK_SOURCE_SEL_CD2XCLK;
> +}
> +
>  static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
>  						    const struct intel_cdclk_config *old_cdclk_config,
>  						    const struct intel_cdclk_config *new_cdclk_config,
> @@ -1980,7 +1993,7 @@ static u32 bxt_cdclk_ctl(struct drm_i915_private *i915,
>  		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
>  
>  	if (DISPLAY_VER(i915) >= 20)
> -		val |= MDCLK_SOURCE_SEL_CDCLK_PLL;
> +		val |= xe2lpd_mdclk_source_sel(i915);
>  	else
>  		val |= skl_cdclk_decimal(cdclk);
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8823531b8770..d6193c858a74 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5891,7 +5891,9 @@ enum skl_power_gate {
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
