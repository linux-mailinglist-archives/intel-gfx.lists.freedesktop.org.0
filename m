Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vhLoCmSMMmqX1wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 14:00:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 231A269968E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 14:00:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=lf2HjffD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAAF210EFCE;
	Wed, 17 Jun 2026 12:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C27B10EFC5;
 Wed, 17 Jun 2026 12:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781697632; x=1813233632;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yhnAl9sbNqndfyo0/9fDu6/jXzRoIXAi204MBtJWGwM=;
 b=lf2HjffD+MXOwjmpxyHzSXYwcHY5xOZpJ5ZSO++GCztHyt+Cew5bRNks
 +RUkC6Y3IUU6DE6eW/cW65Qthy6QvJ0tGyuvocQ71Xa9HkdzGbj4ku87S
 AJAh67wVTDIJUCG5YSdU+I5hELjvH6zGMQ1ClDGYfGvdKBjD5eGlu14DJ
 Ql2Kbd9e4U+PSSJC+/YrZrvjnm0Ulm4OwDjqFw3mbACLQTqOA/XRorl5Z
 iS5C5+g1V14DKLUErOtH5uDj2n0OVNrJ2+vOz2/ZQ2esb83fsD4W1fT0Q
 nP4sve9pCApUG+CNTyc4TU4hFbEoEUnE+a0zn6EL4SxS8hswO3RWPrgMh w==;
X-CSE-ConnectionGUID: JIsWmbcxSzeitXQb11aaFA==
X-CSE-MsgGUID: a33cYqigTlSpMhFdqZTCQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="107959560"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="107959560"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 05:00:32 -0700
X-CSE-ConnectionGUID: kFwlHDWsRhGuBDaESZ5qAA==
X-CSE-MsgGUID: Wm6jct1nSb6BJw9rNSj5kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="247915270"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.158])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 05:00:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: Re: [PATCH v2 02/11] drm/i915/vrr: compute CMRR fractional timings
 generically
In-Reply-To: <20260616144233.832276-3-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260616144233.832276-3-mitulkumar.ajitkumar.golani@intel.com>
Date: Wed, 17 Jun 2026 15:00:27 +0300
Message-ID: <3f0f4fbed5f291ee05034a2eea89f95b3b0da8cf@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:from_mime,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 231A269968E

On Tue, 16 Jun 2026, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Replace the disabled, eDP-only, fractional-CMRR code
> with a generic, transcoder-agnostic computation driven by an
> explicit per-CRTC target. Compute CMRR_M and CMRR_N timings
> based on video mode reqirement if CMRR is required to be enabled.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 121 +++++++++---------
>  2 files changed, 63 insertions(+), 60 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 897a1ffd7b79..39e11362630c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1548,6 +1548,8 @@ struct intel_crtc {
>  	struct {
>  		u32 numerator;
>  		u32 denominator;
> +		/* Derived during atomic check: 1000/1001 video timing required */
> +		bool video_mode;

compute config must not change permanent state, only crtc state.

Moreover, the video_mode here is just a funcion of denominator, so why
do we cache it when it can be computed on the fly?

>  	} cmrr;
>  
>  	int scanline_offset;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 41118883b845..e36c0cab096a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -26,9 +26,6 @@
>  #include "skl_prefill.h"
>  #include "skl_watermark.h"
>  
> -#define FIXED_POINT_PRECISION		100
> -#define CMRR_PRECISION_TOLERANCE	10
> -
>  /*
>   * Tunable parameters for DC Balance correction.
>   * These are captured based on experimentations.
> @@ -186,69 +183,69 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>  	return intel_vrr_vmax_vtotal(crtc_state) - crtc_state->vrr.guardband;
>  }
>  
> -static bool
> -is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
> +static void
> +intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> -	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> -
> -	/* Avoid CMRR for now till we have VRR with fixed timings working */
> -	if (!HAS_CMRR(display) || true)
> -		return false;
> -
> -	actual_refresh_k =
> -		drm_mode_vrefresh(adjusted_mode) * FIXED_POINT_PRECISION;
> -	pixel_clock_per_line =
> -		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
> -	calculated_refresh_k =
> -		pixel_clock_per_line * FIXED_POINT_PRECISION / adjusted_mode->crtc_vtotal;
> -
> -	if ((actual_refresh_k - calculated_refresh_k) < CMRR_PRECISION_TOLERANCE)
> -		return false;
> -
> -	return true;
> -}
> -
> -static unsigned int
> -cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
> -{
> -	int multiplier_m = 1, multiplier_n = 1, vtotal, desired_refresh_rate;
>  	u64 adjusted_pixel_rate;
> -	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	int requested_refresh_rate, current_refresh_rate;
> +	int multiplier_m = 1, multiplier_n = 1;
>  
> -	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
> +	if (!HAS_CMRR(display))
> +		return;
>  
> -	if (video_mode_required) {
> -		multiplier_m = 1001;
> -		multiplier_n = 1000;
> -	}
> +	/* No CMRR ratio configured through debugfs */
> +	if (!crtc->cmrr.numerator)
> +		return;
>  
> -	crtc_state->cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate * adjusted_mode->crtc_htotal,
> -					      multiplier_n);
> -	vtotal = DIV_ROUND_UP_ULL(mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_n),
> -				  crtc_state->cmrr.cmrr_n);
> -	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_m);
> -	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
> +	/*
> +	 * The numerator encodes the requested refresh rate in kHz, so the
> +	 * requested refresh rate in Hz is numerator / 1000. It must match the
> +	 * refresh rate of the current mode.
> +	 */
> +	requested_refresh_rate = crtc->cmrr.numerator / 1000;
> +	current_refresh_rate = drm_mode_vrefresh(adjusted_mode);
> +
> +	if (requested_refresh_rate != current_refresh_rate) {
> +		drm_dbg_kms(display->drm,
> +			    "[CRTC:%d:%s] CMRR requested refresh rate %d Hz does not match current mode refresh rate %d Hz\n",
> +				crtc->base.base.id, crtc->base.name,
> +				requested_refresh_rate, current_refresh_rate);
> +		return;
> +	}
>  
> -	return vtotal;
> -}
> +	/*
> +	 * A 1:1 ratio (denominator == 1000) means no video timing is required
> +	 * Any other ratio (e.g. 1000/1001) requires the video timing.
> +	 */
> +	crtc->cmrr.video_mode = crtc->cmrr.denominator != 1000;
> +	if (crtc->cmrr.video_mode) {
> +		multiplier_m = 1000;
> +		multiplier_n = 1001;
> +	}
>  
> -static
> -void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
> -{
>  	/*
> -	 * TODO: Compute precise target refresh rate to determine
> -	 * if video_mode_required should be true. Currently set to
> -	 * false due to uncertainty about the precise target
> -	 * refresh Rate.
> +	 * Let pixel_clock_hz = adjusted_mode->crtc_clock * 1000.
> +	 *
> +	 * cmrr_n = requested_refresh_rate x htotal x multiplier_m
> +	 * cmrr_m = (pixel_clock_hz x scale_m) % cmrr_n
> +	 *
> +	 * where multiplier_m/multiplier_n = 1000/1001 when the
> +	 * video timing is required, else 1/1. The integer vtotal
> +	 * term is tracked in SW (it is the programmed mode vtotal)
> +	 * while the fractional part represented by cmrr_m/cmrr_n
> +	 * is tracked in HW.
>  	 */
> -	crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
> -	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
> -	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>  
> -	crtc_state->cmrr.enable = true;
> -	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +	crtc_state->cmrr.cmrr_n =
> +		mul_u32_u32(requested_refresh_rate * adjusted_mode->crtc_htotal,
> +			    multiplier_m);
> +	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock, 1000) * multiplier_n;
> +	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
> +
> +	return;
>  }
>  
>  static
> @@ -424,8 +421,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
> -	struct intel_dp *intel_dp = intel_attached_dp(connector);
> -	bool is_edp = intel_dp_is_edp(intel_dp);
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	int vmin, vmax;
>  
> @@ -459,13 +454,19 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  		vmax = vmin;
>  	}
>  
> -	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
> +	if (crtc_state->uapi.vrr_enabled && vmin < vmax) {
>  		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
> -	else if (is_cmrr_frac_required(crtc_state) && is_edp)
> -		intel_vrr_compute_cmrr_timings(crtc_state);
> -	else
> +	} else {
>  		intel_vrr_compute_fixed_rr_timings(crtc_state);
>  
> +		/*
> +		 * CMRR is a fixed average Vtotal mode and is only computed on
> +		 * the fixed refresh rate path. It is generic across transcoders
> +		 * and gated on platform support and a valid debugfs ratio.
> +		 */
> +		intel_vrr_cmrr_compute_config(crtc_state);
> +	}
> +
>  	if (HAS_AS_SDP(display)) {
>  		crtc_state->vrr.vsync_start =
>  			(crtc_state->hw.adjusted_mode.crtc_vtotal -

-- 
Jani Nikula, Intel
