Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A19A8BAB38
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 13:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EE3910EB27;
	Fri,  3 May 2024 11:00:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RO8f+Dex";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F1110EB27
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 11:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714734019; x=1746270019;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=3Tv8lhYT4UX0CM/XpXlvAGo6CEEEYxw8dOSoxDajhnU=;
 b=RO8f+DexfX/YWtHBIRI6sBg/GPPB2bgxkz0wfmM5wBNUlQDiyiDHRtXh
 ET8zoklP3B4hqQEFJ9RSF4z0IDOmtwM3t1corp+WdRnJ58NwF9b1Hg1oj
 hfOZd+dH7lLcoVLj1KS4ttpkzuTM05R5K8x0Jyzbv+lBBdP2hENFvCHgf
 fYTxuUOGevxTpqim02lwnf4WOdkvKWBW49WOU1bxnyJNYuVDjlyqp8Oag
 JzE1zxqEBOyJDQnCISQ9qg3Y6xtRhMl9TqyMPxX4RFmMsHFh9EvQ4qxm4
 kA5O9LI355Y9CG8TKCYGV4KqDM5Nw4GugQu5WYej6o6flTGRg8Sj3jOa1 w==;
X-CSE-ConnectionGUID: KQmIFpr/QSmkkzoUMFnFHw==
X-CSE-MsgGUID: sbGYAmSwT7OCbPXpdhyOyw==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="21093622"
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="21093622"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 04:00:19 -0700
X-CSE-ConnectionGUID: 2lRugbS4SM6hFr9S0s1yjw==
X-CSE-MsgGUID: w1xIyzoXT2O61GIvk3ul3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,251,1708416000"; d="scan'208";a="31900494"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 04:00:17 -0700
Date: Fri, 3 May 2024 14:00:17 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Calculate crtc clock rate based on PLL
 parameters
Message-ID: <ZjTDwXmdSPALPU/l@ideak-desk.fi.intel.com>
References: <20240502131716.504616-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240502131716.504616-1-mika.kahola@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 02, 2024 at 04:17:16PM +0300, Mika Kahola wrote:
> With HDMI monitors we bumped up a case where the crtc clock rate
> caused a mismatch on state verification. This was due to
> assumption that the SW clock rate from PLL structure would match
> the calculated counterpart from HW. This is not necessarily always
> the case and therefore we would actually need to recalculate the
> clock rate from SW PLL parameters. Then these SW and HW crtc clock
> rates can be compared with each other.
> 
> The patch recalculates the crtc clock rate for SW state based on
> SW PLL parameters and compares the crtc clock rate calculated
> from the parameters found from the HW.
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 8e3b13884bb8..89a195917179 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3078,9 +3078,10 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
>  	const struct intel_c20pll_state *mpll_sw_state = &state->dpll_hw_state.cx0pll.c20;
>  	bool sw_use_mpllb = intel_c20phy_use_mpllb(mpll_sw_state);
>  	bool hw_use_mpllb = intel_c20phy_use_mpllb(mpll_hw_state);
> +	int clock = intel_c20pll_calc_port_clock(encoder, mpll_sw_state);
>  	int i;
>  
> -	I915_STATE_WARN(i915, mpll_hw_state->clock != mpll_sw_state->clock,
> +	I915_STATE_WARN(i915, mpll_hw_state->clock != clock,

There is a corresponding check already in the encoder state checker,
which is more approriate, since it compares the calculated PLL clock
against the - adjusted - crtc port clock and I think that's the only
place all other platforms check this. In any case the above check
looks correct:

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  			"[CRTC:%d:%s] mismatch in C20: Register CLOCK (expected %d, found %d)",
>  			crtc->base.base.id, crtc->base.name,
>  			mpll_sw_state->clock, mpll_hw_state->clock);
> -- 
> 2.34.1
> 
