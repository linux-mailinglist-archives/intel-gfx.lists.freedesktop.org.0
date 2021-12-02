Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3A1466AC9
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 21:15:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8472E6FAC7;
	Thu,  2 Dec 2021 20:15:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F236FAC7
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 20:15:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236750450"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="236750450"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 12:15:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="500887390"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 02 Dec 2021 12:15:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Dec 2021 22:15:25 +0200
Date: Thu, 2 Dec 2021 22:15:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YakpXfVID+sxfbr1@intel.com>
References: <20211202144456.2541305-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211202144456.2541305-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/snps: use div32 version of MPLLB
 word clock for UHBR
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 02, 2021 at 04:44:56PM +0200, Jani Nikula wrote:
> The mode set sequence for 128b/132b requires setting the div32 version
> of MPLLB clock.
> 
> Bspec: 53880, 54128

Weird place for that information when all the other bits are listed
in the clock programming section :/

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 2 ++
>  drivers/gpu/drm/i915/i915_reg.h               | 1 +
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index c2251218a39e..09f405e4d363 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -186,6 +186,7 @@ static const struct intel_mpllb_state dg2_dp_uhbr10_100 = {
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_WORD_DIV2_EN, 1) |
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_DP2_MODE, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SHIM_DIV32_CLK_SEL, 1) |
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2),
>  	.mpllb_div2 =
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 2) |
> @@ -369,6 +370,7 @@ static const struct intel_mpllb_state dg2_dp_uhbr10_38_4 = {
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_WORD_DIV2_EN, 1) |
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_DP2_MODE, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SHIM_DIV32_CLK_SEL, 1) |
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2),
>  	.mpllb_div2 =
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3450818802c2..1fad1d593e13 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2265,6 +2265,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define   SNPS_PHY_MPLLB_DP2_MODE		REG_BIT(9)
>  #define   SNPS_PHY_MPLLB_WORD_DIV2_EN		REG_BIT(8)
>  #define   SNPS_PHY_MPLLB_TX_CLK_DIV		REG_GENMASK(7, 5)
> +#define   SNPS_PHY_MPLLB_SHIM_DIV32_CLK_SEL	REG_BIT(0)
>  
>  #define SNPS_PHY_MPLLB_FRACN1(phy)		_MMIO_SNPS(phy, 0x168008)
>  #define   SNPS_PHY_MPLLB_FRACN_EN		REG_BIT(31)
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
