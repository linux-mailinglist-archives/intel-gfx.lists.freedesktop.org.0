Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7072A1BDCA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 22:15:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE37A10E1AA;
	Fri, 24 Jan 2025 21:15:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k+knbfX7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69D9310E198;
 Fri, 24 Jan 2025 21:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737753313; x=1769289313;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xZJYpQ4RWoFsovdhO6peZo5/nXsRHQSt9Mgl+bFwCzs=;
 b=k+knbfX7DKM1BbNsiZfHq24gvQSrZSXIGDD/vcD0H/tVlCq3H2rMTSRD
 cZehI1TvCcocwBNpCp3m/z0dJ2cf9DVH16T0xvBCZk2uEiRlGp1bswc9N
 6EIZYn2vNTCz4i5dpuPU6LLMwl+cCpxG9kQH+sNwFOnrSfH51pGB9WoO0
 sqjJYppvNnzaJjfBIilfwSeizSRKi6UuNA90b6yaW/aJHFRqsiFxnzLMB
 860fSFBvh7lw9VhLCLNu8VKjXEohuG/XxNkdhAa7+Dbrni4RqJM4jc5nP
 FOnqJas6w+omOxkmrRISOzI6MnuN5b9TQ8ayL3BXknm2hCYgTe1mLBCts Q==;
X-CSE-ConnectionGUID: y1DYobvpSHyoX9h6l3VdiA==
X-CSE-MsgGUID: MY3M+UfSS4qEgHgQ+SuE2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38443804"
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="38443804"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 13:15:13 -0800
X-CSE-ConnectionGUID: RY/mT0FKSRCaVzxr6TdT6Q==
X-CSE-MsgGUID: +PwX/ERkQiKi9TcgXUoNLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="107992630"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 13:15:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 23:15:09 +0200
Date: Fri, 24 Jan 2025 23:15:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 21/35] drm/i915/display: Enable MSA Ignore Timing PAR
 only when in not fixed_rr mode
Message-ID: <Z5QC3VVxxAVe4Yvr@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
 <20250124150020.2271747-22-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124150020.2271747-22-ankit.k.nautiyal@intel.com>
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

On Fri, Jan 24, 2025 at 08:30:06PM +0530, Ankit Nautiyal wrote:
> MSA Ignore Timing PAR enable is set in the DP sink when we enable variable
> refresh rate. When using VRR timing generator for fixed refresh rate
> we do not want to ignore the mode timings, as the refresh rate is still
> fixed. Modify the checks to enable MSA Ignore Timing PAR only when not
> in fixed_rr mode.
> 
> v2: Initialize enable_msa_timing_par_ignore to false.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c              | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 8 +++++++-
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d48a3108f363..dac953b2af31 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2281,7 +2281,7 @@ static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  
> -	if (!intel_vrrtg_is_enabled(crtc_state))
> +	if (!intel_vrrtg_is_enabled(crtc_state) || crtc_state->vrr.flipline == crtc_state->vrr.vmax)
>  		return;
>  
>  	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 9cb22baafeeb..b8063807fd34 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -724,8 +724,14 @@ void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, b
>  static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
>  					    const struct intel_crtc_state *crtc_state)
>  {
> +	bool enable_msa_timing_par_ignore = false;
> +
> +	/* Enable MSA TIMING PAR IGNORE only in non fixed_rr mode */
> +	if (crtc_state->vrr.flipline && crtc_state->vrr.flipline != crtc_state->vrr.vmax)
> +		enable_msa_timing_par_ignore = true;
> +
>  	intel_dp_link_training_set_mode(intel_dp,
> -					crtc_state->port_clock, crtc_state->vrr.flipline);
> +					crtc_state->port_clock, enable_msa_timing_par_ignore);

We only set this during link training, so this won't work for fastsets.
I think what we want is to just always set this when the timings are in
the VRR range.

>  }
>  
>  void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
