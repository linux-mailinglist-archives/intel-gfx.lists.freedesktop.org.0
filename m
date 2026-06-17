Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w055HMeMMmqu1wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 14:02:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 135996996E2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 14:02:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=edvUs0vO;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9743910EFC4;
	Wed, 17 Jun 2026 12:02:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B26210EFC4;
 Wed, 17 Jun 2026 12:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781697732; x=1813233732;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yAOxGXLXmJMYKomRLizEw+Y1KXkFOcli9SxtHdRiHl8=;
 b=edvUs0vOhOznL9+wUa5kIWTK1KGlM+4DDqV9Gv8lb4bu1+EO7o6W9lpG
 17/WZfvOkd2UD4s6cmDktceo2HH2Ol4ukfYHMrd1qO2L4WNXT7mSgl4lM
 7RCMxNO5fxpVw/kbnBw6C2g6wIHDRU51NRMo8dO3g/7y+MBniQ6fSif8S
 1qlCKmNfEFdhodSlQAhj4hZBEshIiWqXUiypzHgiC8J4WSTIYMXqZmrgc
 Ejamu8E9IDAIB1uBFjsWzkLe+cOnQfdIislJ2bkQki/CdJdOkeF2qi60G
 ckiOEhgk+Eh7TFH4IZ0Rex974ELizydI3aTKi5ZsbHiQzhB/QPUZgN9mX Q==;
X-CSE-ConnectionGUID: yZ0Zb+PZTCCSZqg6g8xePA==
X-CSE-MsgGUID: XAtGB45lSOikL/1h2V88mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93056050"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="93056050"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 05:02:11 -0700
X-CSE-ConnectionGUID: 4tdUHfVJSquGUx59ydoiZQ==
X-CSE-MsgGUID: h72hqDOLQba0Hzuq5o5pKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="241692208"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.158])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 05:02:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: Re: [PATCH v2 06/11] drm/i915/display: Move CMRR crtc_state members
 under VRR
In-Reply-To: <20260616144233.832276-7-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260616144233.832276-7-mitulkumar.ajitkumar.golani@intel.com>
Date: Wed, 17 Jun 2026 15:02:07 +0300
Message-ID: <896f5a67813c2f7a9cdbd84832b523cee1a849e0@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 135996996E2

On Tue, 16 Jun 2026, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Move CMRR crtc state members under VRR infrastructure as
> it is enabled during fix refresh rate  VRR timing generator
> is enabled.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  .../drm/i915/display/intel_crtc_state_dump.c  |  4 ++--
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 ++--
>  .../drm/i915/display/intel_display_types.h    |  5 ++++
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 24 +++++++++----------
>  5 files changed, 22 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 3a530be64e40..ea337efbe524 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -312,9 +312,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  		   pipe_config->vrr.dc_balance.max_decrease,
>  		   pipe_config->vrr.dc_balance.vblank_target);
>  	drm_printf(&p, "cmrr: %s, video mode: %s, cmrr_m: %llu, cmrr_n: %llu\n",
> -		   str_yes_no(pipe_config->cmrr.enable),
> +		   str_yes_no(pipe_config->vrr.cmrr.enable),
>  		   str_yes_no(crtc->cmrr.video_mode),
> -		   pipe_config->cmrr.cmrr_m, pipe_config->cmrr.cmrr_n);
> +		   pipe_config->vrr.cmrr.cmrr_m, pipe_config->vrr.cmrr.cmrr_n);
>  
>  	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
>  		   DRM_MODE_ARG(&pipe_config->hw.mode));
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e76aa6c8dab6..e067d484858f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -949,8 +949,8 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>  static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>  				const struct intel_crtc_state *new_crtc_state)
>  {
> -	return old_crtc_state->cmrr.cmrr_m != new_crtc_state->cmrr.cmrr_m ||
> -		old_crtc_state->cmrr.cmrr_n != new_crtc_state->cmrr.cmrr_n;
> +	return old_crtc_state->vrr.cmrr.cmrr_m != new_crtc_state->vrr.cmrr.cmrr_m ||
> +		old_crtc_state->vrr.cmrr.cmrr_n != new_crtc_state->vrr.cmrr.cmrr_n;
>  }
>  
>  static bool intel_crtc_vrr_enabling(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 39e11362630c..6096ad02ae45 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1400,6 +1400,11 @@ struct intel_crtc_state {
>  			u16 max_increase, max_decrease;
>  			u16 vblank_target;
>  		} dc_balance;
> +
> +		struct {
> +			bool enable;
> +			u64 cmrr_n, cmrr_m;
> +		} cmrr;

You're leaving the dupes behind?

>  	} vrr;
>  
>  	/* Content Match Refresh Rate state */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3569e61e7fee..a9054b07d9c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3230,7 +3230,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  	as_sdp->revision = 0x2;
>  	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
>  
> -	if (crtc_state->cmrr.enable) {
> +	if (crtc_state->vrr.cmrr.enable) {
>  		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>  		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>  		as_sdp->target_rr_divider = true;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index c979950d32cb..83f25184c66c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -53,7 +53,7 @@ static bool intel_crtc_cmrr_enabling(struct intel_atomic_state *state,
>  		return false;
>  
>  	return is_enabling(cmrr.enable, old_crtc_state, new_crtc_state) ||
> -		(new_crtc_state->cmrr.enable);
> +		(new_crtc_state->vrr.cmrr.enable);
>  }
>  
>  static bool intel_crtc_cmrr_disabling(struct intel_atomic_state *state,
> @@ -68,7 +68,7 @@ static bool intel_crtc_cmrr_disabling(struct intel_atomic_state *state,
>  		return false;
>  
>  	return is_disabling(cmrr.enable, old_crtc_state, new_crtc_state) ||
> -			(old_crtc_state->cmrr.enable);
> +			(old_crtc_state->vrr.cmrr.enable);
>  }
>  
>  bool intel_vrr_is_capable(struct intel_connector *connector)
> @@ -276,11 +276,11 @@ intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
>  	 * is tracked in HW.
>  	 */
>  
> -	crtc_state->cmrr.cmrr_n =
> +	crtc_state->vrr.cmrr.cmrr_n =
>  		mul_u32_u32(requested_refresh_rate * adjusted_mode->crtc_htotal,
>  			    multiplier_m);
>  	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock, 1000) * multiplier_n;
> -	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
> +	crtc_state->vrr.cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->vrr.cmrr.cmrr_n);
>  
>  	return;
>  }
> @@ -875,13 +875,13 @@ intel_vrr_enable_cmrr(const struct intel_crtc_state *crtc_state)
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
>  	intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
> -		       upper_32_bits(crtc_state->cmrr.cmrr_m));
> +		       upper_32_bits(crtc_state->vrr.cmrr.cmrr_m));
>  	intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
> -		       lower_32_bits(crtc_state->cmrr.cmrr_m));
> +		       lower_32_bits(crtc_state->vrr.cmrr.cmrr_m));
>  	intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder),
> -		       upper_32_bits(crtc_state->cmrr.cmrr_n));
> +		       upper_32_bits(crtc_state->vrr.cmrr.cmrr_n));
>  	intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
> -		       lower_32_bits(crtc_state->cmrr.cmrr_n));
> +		       lower_32_bits(crtc_state->vrr.cmrr.cmrr_n));
>  }
>  
>  static void
> @@ -1038,7 +1038,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	intel_vrr_enable_dc_balancing(crtc_state);
>  
>  	if (!intel_vrr_always_use_vrr_tg(display))
> -		intel_vrr_tg_enable(crtc_state, crtc_state->cmrr.enable);
> +		intel_vrr_tg_enable(crtc_state, crtc_state->vrr.cmrr.enable);
>  }
>  
>  void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> @@ -1140,10 +1140,10 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  	trans_vrr_ctl = intel_de_read(display,
>  				      TRANS_VRR_CTL(display, cpu_transcoder));
>  
> -	if (crtc_state->cmrr.enable) {
> -		crtc_state->cmrr.cmrr_n =
> +	if (crtc_state->vrr.cmrr.enable) {
> +		crtc_state->vrr.cmrr.cmrr_n =
>  			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder));
> -		crtc_state->cmrr.cmrr_m =
> +		crtc_state->vrr.cmrr.cmrr_m =
>  			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder));
>  	}

-- 
Jani Nikula, Intel
