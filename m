Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CFDBDEDC2
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 15:54:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D77C10E7EE;
	Wed, 15 Oct 2025 13:54:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C1qHv4qV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E68910E7EC;
 Wed, 15 Oct 2025 13:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760536473; x=1792072473;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MTg0uQuPsc/9wcSTF4nO4+4jHZEP6DwkbRPi7EvOLg8=;
 b=C1qHv4qVJU8WDfD/DeNyiwSv4Bz2TvDsZl3ygGk+ePHqIV2XBlPM7mz3
 jYow0nPVhtHrih2XG9PMkXfWAHqNHsta88W1C0dlJX9+TgdWVv2haNMUq
 LE9cK1UXJtTYgnCIfgTduDBV+6RaSKUUrRvUHOyx98U4VtIat1iCb362z
 I4bRuNFyLc7TF/5JbGjk+7rJI2UMaZcNy0u8wduA6xhwtztBIYG8CdlEv
 ysTCpC2VArOjdKVQlwV7xgOBc2W7jBluo2vDW39dDGy+jgXerrShR1AKv
 IyYPS+YQtLHOUnnvLkM/kKmk5ScHxTGF3V3xozk73rkxI+b6ZuvV51DEQ Q==;
X-CSE-ConnectionGUID: Kvi0LBraQoGtrK1pX0SlbA==
X-CSE-MsgGUID: NRD1GAepQKiBvICaWsflYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="61919026"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="61919026"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 06:54:33 -0700
X-CSE-ConnectionGUID: MoubEPGXS7OBjaBq5gZr8A==
X-CSE-MsgGUID: iuICPxZqT/yEwz4FFM2R5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="182139821"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.116])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 06:54:30 -0700
Date: Wed, 15 Oct 2025 16:54:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 09/10] drm/i915/display: Add vblank_start adjustment
 logic for always-on VRR TG
Message-ID: <aO-nlDe9i-Xe51Vx@intel.com>
References: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
 <20251015072217.1710717-10-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251015072217.1710717-10-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Oct 15, 2025 at 12:52:16PM +0530, Ankit Nautiyal wrote:
> As we move towards using a shorter, optimized guardband, we need to adjust
> how the delayed vblank start is computed.
> 
> Adjust the crtc_vblank_start using Vmin Vtotal - guardband only when
> intel_vrr_always_use_vrr_tg() is true. Also update the
> pipe_mode->crtc_vblank_start which is derived from
> adjusted_mode->crtc_vblank_start in intel_crtc_compute_pipe_mode().
> 
> To maintain consistency between the computed and readout paths, also update
> the readout logic in intel_vrr_get_config() to overwrite crtc_vblank_start
> with the same value (vtotal - guardband) on platforms with always-on
> VRR TG. pipe_mode is derived
> 
> This also paves way for guardband optimization, by handling the movement of
> the crtc_vblank_start for platforms that have VRR TG always active.
> 
> v2: Drop the helper and add the adjustment directly to
>     intel_vrr_compute_guardband(). (Ville)
> v3: Use adjusted_mode.crtc_vtotal instead of vmin and include the readout
>     logic to keep the compute and readout paths in sync. (Ville)
> v4: Also set pipe_mode->crtc_vblank_start as its derived from
>     adjusted_mode. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 8d71d7dc9d12..1cfcc31bd899 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -436,7 +436,8 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
>  void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> -	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
>  
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
> @@ -444,6 +445,13 @@ void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
>  	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
>  					intel_vrr_max_guardband(crtc_state));
>  
> +	if (intel_vrr_always_use_vrr_tg(display)) {
> +		adjusted_mode->crtc_vblank_start  =
> +			adjusted_mode->crtc_vtotal - crtc_state->vrr.guardband;

Maybe a small comment here to explain why we touch pipe_mode.
Eg.

/*
 * pipe_mode has already been derived from the
 * original adjusted_mode, keep the two in sync.
 */

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +		pipe_mode->crtc_vblank_start =
> +			adjusted_mode->crtc_vblank_start;
> +	}
> +
>  	if (DISPLAY_VER(display) < 13)
>  		crtc_state->vrr.pipeline_full =
>  			intel_vrr_guardband_to_pipeline_full(crtc_state,
> @@ -821,6 +829,19 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  	 */
>  	if (crtc_state->vrr.enable)
>  		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +
> +	/*
> +	 * For platforms that always use the VRR timing generator, we overwrite
> +	 * crtc_vblank_start with vtotal - guardband to reflect the delayed
> +	 * vblank start. This works for both default and optimized guardband values.
> +	 * On other platforms, we keep the original value from
> +	 * intel_get_transcoder_timings() and apply adjustments only in VRR-specific
> +	 * paths as needed.
> +	 */
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		crtc_state->hw.adjusted_mode.crtc_vblank_start =
> +			crtc_state->hw.adjusted_mode.crtc_vtotal -
> +			crtc_state->vrr.guardband;
>  }
>  
>  int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
