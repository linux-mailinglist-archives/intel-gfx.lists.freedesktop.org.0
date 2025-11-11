Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A16C4D585
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 12:14:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ABE810E55B;
	Tue, 11 Nov 2025 11:14:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="auyNM39T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB2E10E559;
 Tue, 11 Nov 2025 11:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762859652; x=1794395652;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=CGsimFvrxaWXHfto6RDZdhaFnWwSYiGOpa7dq37vBTE=;
 b=auyNM39T9q5EQ1mQjREmB+EBXZJ2onB73lXuQcRk0F2/IxDPQIJ4u2U1
 90iCtQN7dUxsiExWjEssYCKM2VpHGp0K1SX3YCf7swUvR6tbWCq1RmfP2
 dbM6RQtDkRzYL8k608OrtUtjRYQKZeChf/VvgFfYffqcmxLbtwTlIQ+qr
 lh3t9au9kZ3G5+6n6t7IISG8QW7F9QoRYQUiKcEj+0rzcO5XAq346YeAA
 8m1CZ5aqFwKQyfsUnEFADQWf/UokK2zGFTxQyzQ1ariW/IwWCEpsniEPu
 4wk+ixZezfYetGjRWKDQI0eQ7a/5zuuVXgmp4olrsskxLdHDGwBhggRXx A==;
X-CSE-ConnectionGUID: 0k9Czy0dSEW5v4VEOeFPKw==
X-CSE-MsgGUID: qfQYe/ndQeesK+9VuHwFGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="82317013"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="82317013"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 03:14:11 -0800
X-CSE-ConnectionGUID: 6MObHcHgTGyaoqnZ8Pffzg==
X-CSE-MsgGUID: VeYrnRSaTlmQubpQYL2E3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="212334266"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.239])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 03:14:08 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>
Subject: Re: [CI 14/32] drm/i915/display: Print additional Cx0 PLL HW state
In-Reply-To: <20251031103549.173208-15-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-15-mika.kahola@intel.com>
Date: Tue, 11 Nov 2025 13:14:05 +0200
Message-ID: <141250547b313dd31f20741af553847f1e2bfa45@intel.com>
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

On Fri, 31 Oct 2025, Mika Kahola <mika.kahola@intel.com> wrote:
> From: Imre Deak <imre.deak@intel.com>
>
> Print all the Cx0 PLL state in the PLL state dumper.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 3418fc560faf..1e68a73c2ca8 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2311,8 +2311,8 @@ static void intel_c10pll_dump_hw_state(struct intel_display *display,
>  	unsigned int multiplier, tx_clk_div;
>  
>  	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
> -	drm_dbg_kms(display->drm, "c10pll_hw_state: fracen: %s, ",
> -		    str_yes_no(fracen));
> +	drm_dbg_kms(display->drm, "c10pll_hw_state: clock: %d, fracen: %s, ",
> +		    hw_state->clock, str_yes_no(fracen));
>  
>  	if (fracen) {
>  		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
> @@ -2835,7 +2835,7 @@ static void intel_c20pll_dump_hw_state(struct intel_display *display,
>  {
>  	int i;
>  
> -	drm_dbg_kms(display->drm, "c20pll_hw_state:\n");
> +	drm_dbg_kms(display->drm, "c20pll_hw_state clock: %d:\n", hw_state->clock);
>  	drm_dbg_kms(display->drm,
>  		    "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
>  		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
> @@ -2851,12 +2851,24 @@ static void intel_c20pll_dump_hw_state(struct intel_display *display,
>  		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
>  			drm_dbg_kms(display->drm, "mplla[%d] = 0x%.4x\n", i,
>  				    hw_state->mplla[i]);
> +
> +		/* For full coverage, also print the additional PLL B entry. */
> +		WARN_ON(i + 1 != ARRAY_SIZE(hw_state->mpllb));

Why? What if we hit this? At the very least please use
drm_WARN_ON(). What does the comment have to do with the WARN?

> +		drm_dbg_kms(display->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
>  	}
> +
> +	drm_dbg_kms(display->drm, "vdr: custom width: 0x%02x, serdes rate: 0x%02x, hdmi rate: 0x%02x\n",
> +		    hw_state->vdr.custom_width, hw_state->vdr.serdes_rate, hw_state->vdr.hdmi_rate);
>  }
>  
>  void intel_cx0pll_dump_hw_state(struct intel_display *display,
>  				const struct intel_cx0pll_state *hw_state)
>  {
> +	drm_dbg_kms(display->drm,
> +		    "cx0pll_hw_state: lane_count: %d, ssc_enabled: %s, use_c10: %s, tbt_mode: %s\n",
> +		    hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
> +		    str_yes_no(hw_state->use_c10), str_yes_no(hw_state->tbt_mode));
> +
>  	if (hw_state->use_c10)
>  		intel_c10pll_dump_hw_state(display, &hw_state->c10);
>  	else

-- 
Jani Nikula, Intel
