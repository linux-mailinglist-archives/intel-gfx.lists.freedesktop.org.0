Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 417A78567C1
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 16:32:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACA7910E96A;
	Thu, 15 Feb 2024 15:32:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AbMY94FK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 360BE10E96A
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 15:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708011169; x=1739547169;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qMs1YoftAFmdqi41yNDUyO9QxH3N9Hqo8s8knR8ekaU=;
 b=AbMY94FKS+BjahICff4dRNCaYoh8AhFb8EayZeNSYO8WUDojOj1A4Mz3
 aNwi1TWXafaMV33GMb9vkHhro3lQk7LRyj4n+7C3GICnWkrDAKNtslAla
 K38AD224Y1NaMT8ZYMvPtibWay8zLpCfL+ecVhA1hKHIErHOmKmvA+tCD
 oQXSJLbTYYkTjvXr3BjBgBluVIbLimY3+sdDY8DJGYahPkF1F3NrTZFzo
 nKtSFmTyUwF5+yfZoyKEW8yAc7sW5umIgwH5yux3NM1ClBPxLG8T+sD9i
 DfpxML21Ya1L8/tWF69OvlcddQbodh5RnE/mieoCdTmT2b98/92f64lBS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="2230020"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; 
   d="scan'208";a="2230020"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 07:32:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="826426948"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="826426948"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Feb 2024 07:32:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Feb 2024 17:32:42 +0200
Date: Thu, 15 Feb 2024 17:32:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/6] drm/i915/psr: Calculate aux less wake time
Message-ID: <Zc4umn1QE8tVfxNl@intel.com>
References: <20240215104934.2395239-1-jouni.hogander@intel.com>
 <20240215104934.2395239-3-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240215104934.2395239-3-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Feb 15, 2024 at 12:49:30PM +0200, Jouni Högander wrote:
> Calculate aux less wake time and store it into alpm_params struct
> 
> Bspec: 71477
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 53 +++++++++++++++++++
>  2 files changed, 54 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0d4012097db1..a531c1e5af20 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1721,6 +1721,7 @@ struct intel_psr {
>  
>  		/* LNL and beyond */
>  		u8 check_entry_lines;
> +		u8 aux_less_wake_lines;
>  	} alpm_parameters;
>  
>  	ktime_t last_entry_attempt;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 72cadad09db5..b139db67df55 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1126,6 +1126,56 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
>  	return true;
>  }
>  
> +/*
> + * AUX-Less Wake Time = CEILING( ((PHY P2 to P0) + tLFPS_Period, Max+
> + * tSilence, Max+ tPHY Establishment + tCDS) / tline)
> + * For the "PHY P2 to P0" latency see the PHY Power Control page
> + * (PHY P2 to P0) : https://gfxspecs.intel.com/Predator/Home/Index/68965
> + * : 12 us
> + * The tLFPS_Period, Max term is 800ns
> + * The tSilence, Max term is 180ns
> + * The tPHY Establishment (a.k.a. t1) term is 50us
> + * The tCDS term is 1 or 2 times t2
> + * t2 = Number ML_PHY_LOCK * tML_PHY_LOCK
> + * Number ML_PHY_LOCK = ( 7 + CEILING( 6.5us / tML_PHY_LOCK ) + 1)
> + * Rounding up the 6.5us padding to the next ML_PHY_LOCK boundary and
> + * adding the "+ 1" term ensures all ML_PHY_LOCK sequences that start
> + * within the CDS period complete within the CDS period regardless of
> + * entry into the period
> + * tML_PHY_LOCK = TPS4 Length * ( 10 / (Link Rate in MHz) )
> + * TPS4 Length = 252 Symbols
> + */
> +static int _lnl_compute_aux_less_wake_time(int port_clock)
> +{
> +	int tml_phy_lock = 1000 * 252 * (10 / port_clock);
> +	int num_ml_phy_lock = 7 + DIV_ROUND_UP(6500, tml_phy_lock) + 1;
> +
> +	return DIV_ROUND_UP(12 * 1000 + 800 + 180 + 50 * 1000 +

Would be much clearer to have a properly named variable for each magic
number. I don't really want to have to read the comment to understand
what the code is calculating.

> +			    num_ml_phy_lock * tml_phy_lock, 1000);
> +}
> +
> +static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
> +					     struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	int aux_less_wake_time, aux_less_wake_lines;
> +
> +	aux_less_wake_time =
> +		_lnl_compute_aux_less_wake_time(crtc_state->port_clock / 1000);
> +	aux_less_wake_lines = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
> +						       aux_less_wake_time);
> +
> +	if (aux_less_wake_lines > 32)
> +		return false;
> +
> +	if (i915->display.params.psr_safest_params)
> +		aux_less_wake_lines = 32;
> +
> +	intel_dp->psr.alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
> +
> +	return true;
> +}
> +
>  static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
>  				     struct intel_crtc_state *crtc_state)
>  {
> @@ -1142,6 +1192,9 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
>  	if (check_entry_lines > 15)
>  		return false;
>  
> +	if (!_lnl_compute_aux_less_alpm_params(intel_dp, crtc_state))
> +		return false;
> +
>  	if (i915->display.params.psr_safest_params)
>  		check_entry_lines = 15;
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
