Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FED9A1BE25
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 22:54:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC3DB10E19A;
	Fri, 24 Jan 2025 21:54:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zgzrp/ys";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5769B10E19A;
 Fri, 24 Jan 2025 21:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737755645; x=1769291645;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SRez7/75Gu/3PH8G0lCtk3bMXLOzg69zI8deDJVjyVk=;
 b=Zgzrp/ysaE8bbU4WWZwpjE3n4m9LgFQIbEsvRfDcM6QpYh0RUdFle2lH
 SW/KNMSDDw7l2pdULo7ekT2uFPLhfgcbJ+sR+3PMnxnqJQW37e8fCCbih
 /lq5szwsNc2u+X2htgZqxfCqjA189yKFNovxpbACRSTGclqRxYO6xPbNk
 XNNoSAjODdoT3ifbyF+1ND7Fd7wOjBEcOFT/dK1TLm17xoKLS3ZAXBopT
 LX4Oxp4oOc9sjQTby/9oZ8c418+QCWlvTJLBtD3E4YryGye9p120sUKYz
 ifpdroSSnARTfqrmncStlk4WVfZwRMG/Sr068bFTvq+0bDOxpVaVJoscI Q==;
X-CSE-ConnectionGUID: 7ZlhQkGkS+qM0XW324pICg==
X-CSE-MsgGUID: wsSCnMVtTJ+OSdkmElBH5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="37557981"
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="37557981"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 13:54:05 -0800
X-CSE-ConnectionGUID: s/7JRxDwQECiGacSMM5FIA==
X-CSE-MsgGUID: NhTI3/FlRJivYHcjs/obxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="107999786"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 13:53:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 23:53:57 +0200
Date: Fri, 24 Jan 2025 23:53:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 31/35] drm/i915/vrr: Always set vrr vmax/vmin/flipline in
 vrr_{enable/disable}
Message-ID: <Z5QL9ZllEce8ERrw@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
 <20250124150020.2271747-32-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124150020.2271747-32-ankit.k.nautiyal@intel.com>
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

On Fri, Jan 24, 2025 at 08:30:16PM +0530, Ankit Nautiyal wrote:
> To work seamlessly between variable and fixed timings,
> intel_vrr_{enable,disable}() should just flip between the fixed and
> variable timings in vmin/flipline/vmax.
> 
> The idea is to just do this for all the platforms, regardless of whether
> we also toggle the VRR_CTL enable bit there.
> 
> For platforms for which vrr timing generator is always set, VRR_CTL
> enable bit does not need to toggle, so modify the vrr_{enable/disable}
> for this.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  5 ++-
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 44 ++++++++++++--------
>  drivers/gpu/drm/i915/display/intel_vrr.h     |  4 +-
>  3 files changed, 31 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7bdd41158a93..a0d6360f4cda 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1310,7 +1310,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  	intel_psr_pre_plane_update(state, crtc);
>  
>  	if (intel_crtc_vrr_disabling(state, crtc)) {
> -		intel_vrr_disable(old_crtc_state);
> +		intel_vrr_disable(old_crtc_state, false);
>  		intel_crtc_update_active_timings(old_crtc_state, false);
>  	}
>  
> @@ -1751,6 +1751,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
>  	if (crtc_state->has_pch_encoder) {
> @@ -7161,7 +7162,7 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
>  		skl_detach_scalers(new_crtc_state);
>  
>  	if (intel_crtc_vrr_enabling(state, crtc))
> -		intel_vrr_enable(new_crtc_state);
> +		intel_vrr_enable(new_crtc_state, false);
>  }
>  
>  static void intel_enable_crtc(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index ccc40867c10a..10a9bcb8daae 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -496,7 +496,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>  	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
>  }
>  
> -void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
> +void intel_vrr_enable(const struct intel_crtc_state *crtc_state, bool always_use_vrr_tg)

That new parameter shouldn't be needed. We should already know whether
we're always using the VRR timing generator or not.

>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> @@ -507,21 +507,25 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	if (!intel_vrrtg_is_enabled(crtc_state))
>  		return;
>  
> -	if (intel_vrr_use_push(crtc_state))
> -		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> -			       TRANS_PUSH_EN);
> +	intel_vrr_set_transcoder_timings(crtc_state);

That guy probably does a few too many things for us.
Either we need to chop it up or not even use it.
We just want vmax/vmin/flipline updated here.

So I'm thinking this should look more or less like this:
vrr_enable() {
	write(VMAX, crtc_state->vrr.vmax - 1);
	write(VMIN, crtc_state->vrr.vmin - 1);
	write(FLIPLINE, crtc_state->vrr.flipline - 1);

	if (!always_use_vrr_tg) {
		enable PUSH
		enable VRR_VTL
		wait for VRR status
	}
}

vrr_disable() {
	if (!always_use_vrr_tg) {
		disable VRR_VTL
		wait for VRR status
		disable PUSH
	}

	write(VMAX, intel_vrr_fixed_rr_vmax(crtc_state) - 1);
	write(VMIN, intel_vrr_fixed_rr_vmin(crtc_state) - 1);
	write(FLIPLINE, intel_vrr_fixed_rr_flipline(crtc_state) - 1);
}

And similarly during modeset enable sequence we should also
always program those fixed timings, then turn on the VRR TG at
an appropriate spot (if always using it), and let the later
vrr_enable() (if necessary) switch to the real VRR timings.
That way it works alsmost the same regardless of whether
whether we always use the VRR TG or not.

The fixed_rr stuff could be written like so (then they would work
for all platforms, if anyone feels like trying this mode of
operation on ICL/TGL as well):

intel_vrr_fixed_rr_vtotal()
{
        if (DISPLAY_VER >= 13)
                return crtc_vtotal;
	else
            	return crtc_vtotal -
	                intel_vrr_real_vblank_delay();
}

intel_vrr_fixed_rr_vmax()
{
        return intel_vrr_fixed_rr_vtotal();
}

intel_vrr_fixed_rr_vmin()
{
        return intel_vrr_fixed_rr_vtotal() -
                intel_vrr_flipline_offset();
}

intel_vrr_fixed_rr_flipline()
{
        return intel_vrr_fixed_rr_vtotal();
}

>  
> -	if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
> -		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
> -			       trans_vrr_ctl(crtc_state));
> -	} else {
> -		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> +	if (!always_use_vrr_tg) {
> +		if (intel_vrr_use_push(crtc_state))
> +			intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> +				       TRANS_PUSH_EN);
> +
> +		if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
> +			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
> +				       trans_vrr_ctl(crtc_state));
> +		} else {
> +			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> +		}
>  	}
>  }
>  
> -void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> +void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state, bool always_use_vrr_tg)
>  {
>  	struct intel_display *display = to_intel_display(old_crtc_state);
>  	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
> @@ -532,12 +536,16 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	if (!intel_vrrtg_is_enabled(old_crtc_state))
>  		return;
>  
> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -		       trans_vrr_ctl(old_crtc_state));
> -	intel_de_wait_for_clear(display,
> -				TRANS_VRR_STATUS(display, cpu_transcoder),
> -				VRR_STATUS_VRR_EN_LIVE, 1000);
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +	if (!always_use_vrr_tg) {
> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +			       trans_vrr_ctl(old_crtc_state));
> +		intel_de_wait_for_clear(display,
> +					TRANS_VRR_STATUS(display, cpu_transcoder),
> +					VRR_STATUS_VRR_EN_LIVE, 1000);
> +		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +	}
> +
> +	intel_vrr_set_transcoder_timings(old_crtc_state);
>  }
>  
>  void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 8d53aab3590d..da6a86cee0e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -22,11 +22,11 @@ void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state);
>  void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
>  void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
> -void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_enable(const struct intel_crtc_state *crtc_state, bool always_use_vrr_tg);
>  void intel_vrr_send_push(struct intel_dsb *dsb,
>  			 const struct intel_crtc_state *crtc_state);
>  bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
> -void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
> +void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state, bool always_use_vrr_tg);
>  void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
>  int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
