Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23409A2F68A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 19:13:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B818510E380;
	Mon, 10 Feb 2025 18:13:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L6eM+JPF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 506ED10E1F7;
 Mon, 10 Feb 2025 18:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739211200; x=1770747200;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2CG3Jw/y2d3okBJoCxgZQdklNwi9eyeBaDJZ8ZDdnFA=;
 b=L6eM+JPFJqDys4qhWhKlkwXxnwYsmwkg7oSm6CgttLNuKndtE0qxPjgi
 3EbdDw/PrrS2n09f+g9WL4CTfWYrmzVHz2/Wad1DbpDrCM1lUvDSm4xDq
 FZic1fJUAtEGp4p2LYCcxOLVEm4TgPJuXxl9ISBgtNgIPaxSF7rZxdVQZ
 qqWyBMM0pzRTeZuaO/X5Hw5FnE62no9ND16ehXXfaoIgnKgHCKvTVwluI
 9uD5ddA2hR57DI2SjPPTN764Gms/YaSqr+eTbdWk+q89nEDfkzQ+j7jDa
 IrxXb/xKyayd1DYQR1QD67pf9dj3pM0OpBOj3usr8CSCOedUilUCPMvRq Q==;
X-CSE-ConnectionGUID: Xxs0XJELSrauTix185hqEQ==
X-CSE-MsgGUID: nOTuo+D0QZqF6oSsv5/d7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="62281219"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="62281219"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 10:13:20 -0800
X-CSE-ConnectionGUID: pM18Rd81QWuN17elWAoRBQ==
X-CSE-MsgGUID: ffWd3g8vTmivLiZDm8K4oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113139691"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.29])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 10:13:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Subject: Re: [PATCH 12/17] drm/i915/ddi: Configure/enable a port in
 DDI_BUF_CTL via read-modify-write
In-Reply-To: <20250129200221.2508101-13-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-13-imre.deak@intel.com>
Date: Mon, 10 Feb 2025 20:13:14 +0200
Message-ID: <87v7th3byd.fsf@intel.com>
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

On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> From: Imre Deak <imre.deak@gmail.com>
>
> The various flags in DDI_BUF_CTL must be programmed at different places
> during a modeset. The expected value of the register at any moment is
> cached in the intel_dp::DP variable and the whole register is written
> using this variable. A simpler way would be not maintaining the cached
> value of the register at all and update only specific fields in the
> register via read-modify-write. Some places - like D2D link enabling or
> the port disabling - use RMW already.
>
> Based on the above update the register via RMW during the port
> configuration / enabling as well. After all the places updating
> DDI_BUF_CTL are changed - probably the voltage-swing/pre-emphasis level
> setting is the only one remaining - tracking the register value in
> intel_dp:DP could be removed.
>
> Signed-off-by: Imre Deak <imre.deak@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index ddb182550ad0f..64c42505f2ad6 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -359,6 +359,10 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
>  
>  	if (IS_ALDERLAKE_P(i915) && intel_encoder_is_tc(encoder)) {
>  		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
> +		/*
> +		 * TODO: remove the following once DDI_BUF_CTL is updated via
> +		 * an RMW everywhere.
> +		 */
>  		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
>  			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>  	}
> @@ -370,6 +374,22 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
>  	}
>  }
>  
> +static u32 intel_ddi_buf_ctl_config_mask(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	u32 mask = DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES |
> +		   DDI_PORT_WIDTH_MASK;

The caller only sets DDI_PORT_WIDTH() for display >= 14.

> +
> +	if (DISPLAY_VER(display) >= 14)
> +		mask |= DDI_BUF_PORT_DATA_MASK;

But doesn't touch this?

> +	if (display->platform.alderlake_p)
> +		mask |= DDI_BUF_PHY_LINK_RATE_MASK;

DDI_BUF_CTL_TC_PHY_OWNERSHIP?

> +	if (IS_DISPLAY_VER(display, 11, 13))
> +		mask |= DDI_BUF_LANE_STAGGER_DELAY_MASK;
> +
> +	return mask;
> +}

I don't know, this patch is incredibly hard to follow.

BR,
Jani.


> +
>  static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
>  				 enum port port)
>  {
> @@ -3062,7 +3082,8 @@ static void intel_enable_ddi_buf(struct intel_encoder *encoder, u32 buf_ctl)
>  	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
>  
> -	intel_de_write(display, DDI_BUF_CTL(port), buf_ctl | DDI_BUF_CTL_ENABLE);
> +	intel_de_rmw(display, DDI_BUF_CTL(port),
> +		     intel_ddi_buf_ctl_config_mask(encoder), buf_ctl | DDI_BUF_CTL_ENABLE);
>  	intel_de_posting_read(display, DDI_BUF_CTL(port));
>  
>  	intel_wait_ddi_buf_active(encoder);

-- 
Jani Nikula, Intel
