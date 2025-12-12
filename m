Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F23D3CB9324
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:52:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83C4E10E8F2;
	Fri, 12 Dec 2025 15:52:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VpnJ/AYI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3DC110E8E6;
 Fri, 12 Dec 2025 15:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765554725; x=1797090725;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4WEQ8EIiZkJ4AqnPPvQGrXgAwfFZ9kLBWZEjfgxfEnk=;
 b=VpnJ/AYI02VMmRkOK8putlLpdl03jOs7CZqc0M1xi9Oi/WRSfkkKcfxZ
 i4pzMTbHxZCSQKxg8d5hnQcrpJz6tHGKVyeZVYva4nSymtArFwNzoZoE6
 p/Ofx2M1H7pX71ZTjLiVIxc1auZ3cyZp1V6E6C03wZt7ynQ1zJSZEfvd7
 IGTwdujy7DL0ATvy3LxOzIxzFZricF3G3NKeVCl7KV5DLvehUtYBXyr04
 cvSPrYSCW44JhUVyM3lFl8UiZMUsIo6p/QiwVoUw8H00V0aBX6Qk0zBGe
 O9UgTl9GV9vNlbGlFGUFnAK16DyuOAS5cccIgFfZzBh/Mg/O86za+KYaE g==;
X-CSE-ConnectionGUID: dwAd6B2yTnO48dmyzIMv1g==
X-CSE-MsgGUID: o5HKzOYBSA2PcMBa47FzXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="78262967"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="78262967"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:52:05 -0800
X-CSE-ConnectionGUID: dg0I+7UJT7Ktbj9qHWAqXg==
X-CSE-MsgGUID: oDsyxtelStKfIPKTNfyzJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="234521998"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:52:02 -0800
Date: Fri, 12 Dec 2025 17:51:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH 1/5] drm/i915/display: Move casf_compute_config
Message-ID: <aTw6H38TLq1EE-wX@intel.com>
References: <20251209062527.620382-1-nemesa.garg@intel.com>
 <20251209062527.620382-2-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251209062527.620382-2-nemesa.garg@intel.com>
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

On Tue, Dec 09, 2025 at 11:55:23AM +0530, Nemesa Garg wrote:
> Prefill calculations are getting screwed up as casf_compute
> is getting called in later stage. So move casf_compute_config
> to crtc_compute_config and check if there is a change in the
> sharpness strength, if so set the flag uapi.mode_changed
> so that everytime when strength changes casf_compute_config
> can be called and new strength value gets updated.
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_casf.c    | 14 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_casf.h    |  3 +++
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++----
>  3 files changed, 23 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
> index 95339b496f24..6e45ff7d5ff7 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.c
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -288,3 +288,17 @@ void intel_casf_disable(const struct intel_crtc_state *crtc_state)
>  	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), 0);
>  	intel_de_write(display, SKL_PS_WIN_SZ(crtc->pipe, 1), 0);
>  }
> +
> +void intel_casf_check(struct intel_atomic_state *state)
> +{
> +	int i;
> +	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> +	struct intel_crtc *crtc;
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		if (new_crtc_state->uapi.sharpness_strength !=
> +		    old_crtc_state->uapi.sharpness_strength)
> +			new_crtc_state->uapi.mode_changed = true;

We alread have the exact same thing for the nearest neigbour sampling
stuff. Both should be handled in the same place.

> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
> index b3fb0bcb3f5b..2eec90d9d4c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.h
> +++ b/drivers/gpu/drm/i915/display/intel_casf.h
> @@ -9,6 +9,8 @@
>  #include <linux/types.h>
>  
>  struct intel_crtc_state;
> +struct intel_atomic_state;
> +struct intel_crtc;
>  
>  int intel_casf_compute_config(struct intel_crtc_state *crtc_state);
>  void intel_casf_update_strength(struct intel_crtc_state *new_crtc_state);
> @@ -17,5 +19,6 @@ void intel_casf_enable(struct intel_crtc_state *crtc_state);
>  void intel_casf_disable(const struct intel_crtc_state *crtc_state);
>  void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
>  bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state);
> +void intel_casf_check(struct intel_atomic_state *state);
>  
>  #endif /* __INTEL_CASF_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9c6d3ecdb589..882ea286fc9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2494,6 +2494,10 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>  
>  	intel_vrr_compute_guardband(crtc_state);
>  
> +	ret = intel_casf_compute_config(crtc_state);
> +	if (ret)
> +		return ret;
> +
>  	return 0;
>  }
>  
> @@ -4286,10 +4290,6 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  		return ret;
>  	}
>  
> -	ret = intel_casf_compute_config(crtc_state);
> -	if (ret)
> -		return ret;
> -
>  	if (DISPLAY_VER(display) >= 9) {
>  		if (intel_crtc_needs_modeset(crtc_state) ||
>  		    intel_crtc_needs_fastset(crtc_state) ||
> @@ -6435,6 +6435,8 @@ int intel_atomic_check(struct drm_device *dev,
>  
>  	intel_vrr_check_modeset(state);
>  
> +	intel_casf_check(state);
> +
>  	ret = drm_atomic_helper_check_modeset(dev, &state->base);
>  	if (ret)
>  		goto fail;
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
