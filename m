Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E36A87C2B
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 11:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F5610E509;
	Mon, 14 Apr 2025 09:49:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SfkLsX+P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDB6D10E509;
 Mon, 14 Apr 2025 09:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744624149; x=1776160149;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cwlGjYlvzwwd0rcjjCq/5AASDq5XwT0AxiDe3+W0VJU=;
 b=SfkLsX+PrPKyrDOailEMgX7QvxpiBHo/4Hr3z++mYZ8orIr1nY7bpaDW
 lhE45Ta8ETuB/lEfB5kBLHQWwejE11MdahygN/R4G+Kxv0VRlayFiqgtN
 3eIhs8aBeblLiBoVGpe0KUSvePuKPVeIxsVbr2nSzMJUR1AlJSocCuBqr
 hJC40ijrttPOO9ShSLv4XTFOBejXHjShHSfXFvWkwquXrSX2fAWU7e9lZ
 86qopj8yTI0YMS7Ic6EZBKonmCQB5nsM2s6I3E3TyjdLiwHbMuoeEsLjU
 3ub8R+2VVF6X2rKU/vQbWsKYu+C8374fy7K1DgEg3lkECxO9HRBtp11AB A==;
X-CSE-ConnectionGUID: vJnEhY06QXmQuN4ifB9hqg==
X-CSE-MsgGUID: qIx9x9MDTnOavzW/UgR8Fg==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="71471439"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="71471439"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 02:49:08 -0700
X-CSE-ConnectionGUID: Cw1yDy6NT8KE/Zo3OZ29rw==
X-CSE-MsgGUID: COo/rw0rTpSUWm2TpWI5ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="129755158"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 02:49:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH v5 2/2] drm/i915/display/dp: Remove the uhbr13.5 pll
 state values
In-Reply-To: <20250404-dprates-v5-2-c93f561a095e@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250404-dprates-v5-0-c93f561a095e@intel.com>
 <20250404-dprates-v5-2-c93f561a095e@intel.com>
Date: Mon, 14 Apr 2025 12:49:03 +0300
Message-ID: <87lds3t6nk.fsf@intel.com>
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

On Fri, 04 Apr 2025, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Remove the pll state table for UHBR13.5 on synps and c20 PHY as UHBR13.5
> is removed in previous patch.

Subject should be about the PHY, not about DP. drm/i915/display/dp is
excessive anyway.

There's no "previous patch" once this is committed. Don't mention
patches in commit messages. And it might not be "previous" anyway.

synps is a typo.

>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 26 --------------------
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 35 ---------------------------
>  2 files changed, 61 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 22595766eac5332e541f3441bed80a187dc80224..398e207159876a54472560087b5841ca372b4c01 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -902,31 +902,6 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
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
> @@ -957,7 +932,6 @@ static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
>  	&mtl_c20_dp_hbr2,
>  	&mtl_c20_dp_hbr3,
>  	&mtl_c20_dp_uhbr10,
> -	&mtl_c20_dp_uhbr13_5,
>  	&mtl_c20_dp_uhbr20,
>  	NULL,
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index b9acd9fe160cde7de682b48648eb183a0549b014..79a6d14d7592a35ba51c52f6fe26564f3e1c1340 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -215,47 +215,12 @@ static const struct intel_mpllb_state dg2_dp_uhbr10_100 = {
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
