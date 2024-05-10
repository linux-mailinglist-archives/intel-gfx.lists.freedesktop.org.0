Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A8F8C2537
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 14:59:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45FCF10E241;
	Fri, 10 May 2024 12:59:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JFTzYBI5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE61110E241
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 12:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715345978; x=1746881978;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=d/ASlDmKkOW+56u4qkDm4UNk4GETgOh7F1MHNK67+Dg=;
 b=JFTzYBI5eagr+GEbOLA5vb32FnaNZCuFHCO8NbTokypT5nyRH1gNII6w
 3L4pjNeGM5OaIsHix4mWHpY37L1Wt6Wn+L3lA6Wg667eaJwTvYQoUNovI
 I0MZIcwpwj8urpntW0Y5cQF1t1KVV1mmkS/paxCWvssn2lc1JkJ2ppdx1
 NTF061Qo3CiIsAQRuewAwSiNTsJ14V6gotLdixy7aG4FYEv4EziSHqUDF
 UM7+mQxNQvBHyPyHbu4s2SaG6gQ5OL8VUCFEzD8sFwTYmtI5xPFJNwBSx
 4GtD2tnNvm4kQVhvTnP0Y6foJvN3drGsr2KLsruD2vM2M40W1dzexhqmI A==;
X-CSE-ConnectionGUID: RY1zqaSNTNe2gsZH4vLUcA==
X-CSE-MsgGUID: oJIM3Jx0RsiejEUl3WvrCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11536095"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11536095"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 05:59:37 -0700
X-CSE-ConnectionGUID: WT2FTVfKTc6mfHOukOXylA==
X-CSE-MsgGUID: zFoNJvUSSV2XJPi6/qOBHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29995205"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 05:59:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/display: Remove uhbr13.5 pll state values
In-Reply-To: <20240509030646.3037310-2-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240509030646.3037310-1-arun.r.murthy@intel.com>
 <20240509030646.3037310-2-arun.r.murthy@intel.com>
Date: Fri, 10 May 2024 15:59:32 +0300
Message-ID: <87o79dhlfv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 09 May 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> uhbr13.5 is not supported on dg2/mtl. This patch removes the pll state
> table for synps and c20 PHY.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 26 --------------
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 --
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 35 -------------------
>  3 files changed, 63 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 8e3b13884bb8..fb07d14d9a7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -885,31 +885,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
>  		},
>  };
>  
> -static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
> -	.clock = 1350000, /* 13.5 Gbps */
> -	.tx = {	0xbea0, /* tx cfg0 */
> -		0x4800, /* tx cfg1 */
> -		0x0000, /* tx cfg2 */
> -		},
> -	.cmn = {0x0500, /* cmn cfg0*/
> -		0x0005, /* cmn cfg1 */
> -		0x0000, /* cmn cfg2 */
> -		0x0000, /* cmn cfg3 */
> -		},
> -	.mpllb = { 0x015f,	/* mpllb cfg0 */
> -		0x2205,		/* mpllb cfg1 */
> -		0x1b17,		/* mpllb cfg2 */
> -		0xffc1,		/* mpllb cfg3 */
> -		0xe100,		/* mpllb cfg4 */
> -		0xbd00,		/* mpllb cfg5 */
> -		0x2000,		/* mpllb cfg6 */
> -		0x0001,		/* mpllb cfg7 */
> -		0x4800,		/* mpllb cfg8 */
> -		0x0000,		/* mpllb cfg9 */
> -		0x0000,		/* mpllb cfg10 */
> -		},
> -};
> -
>  static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
>  	.clock = 2000000, /* 20 Gbps */
>  	.tx = {	0xbe20, /* tx cfg0 */
> @@ -940,7 +915,6 @@ static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
>  	&mtl_c20_dp_hbr2,
>  	&mtl_c20_dp_hbr3,
>  	&mtl_c20_dp_uhbr10,
> -	&mtl_c20_dp_uhbr13_5,
>  	&mtl_c20_dp_uhbr20,
>  	NULL,
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7098ca65701f..a9c17c6d8d77 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -247,8 +247,6 @@ static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
>  
>  		if (uhbr_rates & DP_UHBR10)
>  			intel_dp->sink_rates[i++] = 1000000;
> -		if (uhbr_rates & DP_UHBR13_5)
> -			intel_dp->sink_rates[i++] = 1350000;

This is about the sink, not the source. We'll want to keep this.

BR,
Jani.


>  		if (uhbr_rates & DP_UHBR20)
>  			intel_dp->sink_rates[i++] = 2000000;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index e6df1f92def5..6b1eda0d73d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -213,47 +213,12 @@ static const struct intel_mpllb_state dg2_dp_uhbr10_100 = {
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_STEPSIZE, 76101),
>  };
>  
> -static const struct intel_mpllb_state dg2_dp_uhbr13_100 = {
> -	.clock = 1350000,
> -	.ref_control =
> -		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> -	.mpllb_cp =
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 5) |
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 45) |
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 65) |
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 127),
> -	.mpllb_div =
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_CLK_EN, 1) |
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV_MULTIPLIER, 8) |
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_WORD_DIV2_EN, 1) |
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_DP2_MODE, 1) |
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 3),
> -	.mpllb_div2 =
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 2) |
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 508),
> -	.mpllb_fracn1 =
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 1),
> -
> -	/*
> -	 * SSC will be enabled, DP UHBR has a minimum SSC requirement.
> -	 */
> -	.mpllb_sscen =
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_EN, 1) |
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_PEAK, 79626),
> -	.mpllb_sscstep =
> -		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_STEPSIZE, 102737),
> -};
> -
>  static const struct intel_mpllb_state * const dg2_dp_100_tables[] = {
>  	&dg2_dp_rbr_100,
>  	&dg2_dp_hbr1_100,
>  	&dg2_dp_hbr2_100,
>  	&dg2_dp_hbr3_100,
>  	&dg2_dp_uhbr10_100,
> -	&dg2_dp_uhbr13_100,
>  	NULL,
>  };

-- 
Jani Nikula, Intel
