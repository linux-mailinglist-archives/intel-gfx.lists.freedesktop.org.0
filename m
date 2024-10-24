Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2968C9AE38A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 13:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C34210E901;
	Thu, 24 Oct 2024 11:17:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CiUq7Bwb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7884410E900;
 Thu, 24 Oct 2024 11:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729768642; x=1761304642;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mJiyQdtCEjyOd0k/rZCeS1HfcooKjVeNc9aAfS2I0OI=;
 b=CiUq7BwbJuuFQv8YoRn1XYfCEwQ48ywp2yi6k4GQZv6lUnoAIpZxIz9W
 Syv3UJ0sI/ha/JnBqRbPLICmzvd3ttKqlqIfytm2FFNnE4sfHx8r/uig7
 H0DQXTmgUS+PASmxC2MhLLw+ieuX4Yp/5ycgAbb9aElZs1grsx5I8LYJH
 sL86R23XDqPoz1u9CZi2yN5etPrFlqE/6xwPVGZP36sfDfzGzTaIEVmRB
 8YoYt6rjhRmZx69v30YQSQEc8zTtEfyg3CYS5FZnsxCqUfw/ZZFVagztK
 0bo02uN839RXQua7JCt1O3fDAy/83Kz6v2sO0T3Y9hmCOfimfOjO5J6pL g==;
X-CSE-ConnectionGUID: egQnGBxVRy2qZBxpBd+S6g==
X-CSE-MsgGUID: TUouL17ZRrW77Tc5FGKwyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29289206"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="29289206"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 04:17:21 -0700
X-CSE-ConnectionGUID: Hk/ng7guQEuHvGuSRaxwTA==
X-CSE-MsgGUID: IhcKXMQ3SK2dKcNxZxp9Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="81380346"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 04:17:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/cx0: Pass crtc_state to
 intel_c20_compute_hdmi_tmds_pll()
In-Reply-To: <20241023153352.144146-2-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241023153352.144146-1-gustavo.sousa@intel.com>
 <20241023153352.144146-2-gustavo.sousa@intel.com>
Date: Thu, 24 Oct 2024 14:17:16 +0300
Message-ID: <87ikthsqbn.fsf@intel.com>
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

On Wed, 23 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> The variable crtc_state already contains everything that
> intel_c20_compute_hdmi_tmds_pll() needs. Simplify the function's
> signature by passing that struct instead of separate variables.
>
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f73d576fd99e..996c3c6edd41 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2142,8 +2142,9 @@ static void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
>  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>  }
>  
> -static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_state *pll_state)
> +static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_c20pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll.c20;
>  	u64 datarate;
>  	u64 mpll_tx_clk_div;
>  	u64 vco_freq_shift;
> @@ -2155,10 +2156,10 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>  	u8  mpllb_ana_freq_vco;
>  	u8  mpll_div_multiplier;
>  
> -	if (pixel_clock < 25175 || pixel_clock > 600000)
> +	if (crtc_state->port_clock < 25175 || crtc_state->port_clock > 600000)
>  		return -EINVAL;
>  
> -	datarate = ((u64)pixel_clock * 1000) * 10;
> +	datarate = ((u64)crtc_state->port_clock * 1000) * 10;
>  	mpll_tx_clk_div = ilog2(div64_u64((u64)CLOCK_9999MHZ, (u64)datarate));
>  	vco_freq_shift = ilog2(div64_u64((u64)CLOCK_4999MHZ * (u64)256, (u64)datarate));
>  	vco_freq = (datarate << vco_freq_shift) >> 8;
> @@ -2180,7 +2181,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>  	else
>  		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_0;
>  
> -	pll_state->clock	= pixel_clock;
> +	pll_state->clock	= crtc_state->port_clock;
>  	pll_state->tx[0]	= 0xbe88;
>  	pll_state->tx[1]	= 0x9800;
>  	pll_state->tx[2]	= 0x0000;
> @@ -2266,8 +2267,7 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
>  
>  	/* try computed C20 HDMI tables before using consolidated tables */
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_clock,
> -						    &crtc_state->dpll_hw_state.cx0pll.c20) == 0)
> +		if (intel_c20_compute_hdmi_tmds_pll(crtc_state) == 0)
>  			return 0;
>  	}

-- 
Jani Nikula, Intel
