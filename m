Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2018AA28A30
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 13:23:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE64A10E790;
	Wed,  5 Feb 2025 12:23:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BPThcowx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3595010E790;
 Wed,  5 Feb 2025 12:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738758181; x=1770294181;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MCb8zcz0litgDpO4rWahWtVh/QUdsoDQm7CNeNTIxFc=;
 b=BPThcowxIbEQpAzx7d1v/2QSk2j9GNo9zD++dBBPYEPchBRs85bw9DpP
 I2GbcZ3e5kIo/W8hy3Zd9EEiH+sGSln8SkLioAPfUDqaHonrEgYJMk2RE
 jhnxjVMwkGvlBhNZWyfbnWpsngm6daxABY92GHblDciLwUNKqyfVIlPm5
 9/HPo9KeIYJcOZ9fRm3SoV4lXmo3uocK/3kTMsEN343JbC4tKhmSOvTes
 mcmXBfRb51UnGkb5xjuRyT9vzI56TPUHzVCbok6am+8AqRBLuMoOgxNO3
 kxLKSdcT2mnpG+2y1zNyyHsWyBWossESKaBTmAFZgtf11MH/CV6gHdJMa Q==;
X-CSE-ConnectionGUID: HIxmj0U+TMu3fjVwjYQ0Xg==
X-CSE-MsgGUID: 3qn35X3MQdqXCrZ9o2EWVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39221178"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="39221178"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 04:23:01 -0800
X-CSE-ConnectionGUID: PZ6d3LAtRNivMkDV1Ok//A==
X-CSE-MsgGUID: JSTJhzg3R0SgmS6bFeJrFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114961625"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 04:22:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Subject: Re: [PATCH 04/17] drm/i915/ddi: Set missing TC DP PHY lane stagger
 delay in DDI_BUF_CTL
In-Reply-To: <20250129200221.2508101-5-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-5-imre.deak@intel.com>
Date: Wed, 05 Feb 2025 14:22:56 +0200
Message-ID: <87tt984m3j.fsf@intel.com>
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
> Add the missing PHY lane stagger delay programming for ICL-ADL
> platforms on TypeC DP outputs.
>
> Bspec: 7534, 49533
> Signed-off-by: Imre Deak <imre.deak@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h          |  3 +++
>  2 files changed, 21 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 76e8296cb134b..6192c0d3c87a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -328,9 +328,21 @@ static u32 ddi_buf_phy_link_rate(int port_clock)
>  	}
>  }
>  
> +static int dp_phy_lane_stagger_delay(int port_clock)
> +{
> +	/*
> +	 * Return the number of link symbols per 100 ns:
> +	 * port_clock (10 kHz) -> bits    / 100 us
> +	 * / symbol_size       -> symbols / 100 us
> +	 * / 1000              -> symbols / 100 ns
> +	 */
> +	return DIV_ROUND_UP(port_clock, intel_dp_link_symbol_size(port_clock) * 1000);

Okay, this checks out, but it was incredibly difficult (for me) to
follow, even with the comment. The meaning of 100 ns is also not
documented i.e. we want a lane stagger delay of 100 ns or greater, and
we must express this in terms of symbols in the register.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +}
> +
>  static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
>  				      const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> @@ -356,6 +368,12 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
>  		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
>  			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>  	}
> +
> +	if (IS_DISPLAY_VER(display, 11, 13) && intel_encoder_is_tc(encoder)) {
> +		int delay = dp_phy_lane_stagger_delay(crtc_state->port_clock);
> +
> +		intel_dp->DP |= DDI_BUF_LANE_STAGGER_DELAY(delay);
> +	}
>  }
>  
>  static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 04e47d0a8ab92..7fe4e71fc08ec 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3632,6 +3632,9 @@ enum skl_power_gate {
>  #define  DDI_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 1)
>  #define  DDI_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 2)
>  #define  DDI_BUF_PORT_REVERSAL			(1 << 16)
> +#define  DDI_BUF_LANE_STAGGER_DELAY_MASK	REG_GENMASK(15, 8)
> +#define  DDI_BUF_LANE_STAGGER_DELAY(symbols)	REG_FIELD_PREP(DDI_BUF_LANE_STAGGER_DELAY_MASK, \
> +							       symbols)
>  #define  DDI_BUF_IS_IDLE			(1 << 7)
>  #define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
>  #define  DDI_A_4_LANES				(1 << 4)

-- 
Jani Nikula, Intel
