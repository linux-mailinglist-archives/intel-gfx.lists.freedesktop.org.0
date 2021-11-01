Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B20FA441AC3
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 12:38:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A339D89FA0;
	Mon,  1 Nov 2021 11:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE9789FA0
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 11:38:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="294454375"
X-IronPort-AV: E=Sophos;i="5.87,199,1631602800"; d="scan'208";a="294454375"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 04:38:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,199,1631602800"; d="scan'208";a="500001547"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 01 Nov 2021 04:38:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Nov 2021 13:38:27 +0200
Date: Mon, 1 Nov 2021 13:38:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YX/Rs64T4e4rpiEM@intel.com>
References: <20211029202432.140745-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211029202432.140745-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Check async flip state
 of every crtc and plane once
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 29, 2021 at 01:24:32PM -0700, José Roberto de Souza wrote:
> For every crtc in state, intel_atomic_check_async() was checking all
> the crtc and plane states again.
> 
> v2: comparing pipe ids instead of crtc pointers when iterating over
> planes
> 
> Cc: Karthik B S <karthik.b.s@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 38 ++++++++++----------
>  1 file changed, 20 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 79cd158503b37..e494028260621 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7707,35 +7707,37 @@ static void kill_bigjoiner_slave(struct intel_atomic_state *state,
>   * correspond to the last vblank and have no relation to the actual time when
>   * the flip done event was sent.
>   */
> -static int intel_atomic_check_async(struct intel_atomic_state *state)
> +static int intel_atomic_check_async(struct intel_atomic_state *state, struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	const struct intel_crtc_state *old_crtc_state, *new_crtc_state;
>  	const struct intel_plane_state *new_plane_state, *old_plane_state;
> -	struct intel_crtc *crtc;
>  	struct intel_plane *plane;
>  	int i;
>  
> -	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> -					    new_crtc_state, i) {
> -		if (intel_crtc_needs_modeset(new_crtc_state)) {
> -			drm_dbg_kms(&i915->drm, "Modeset Required. Async flip not supported\n");
> -			return -EINVAL;
> -		}
> +	old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
> +	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
>  
> -		if (!new_crtc_state->hw.active) {
> -			drm_dbg_kms(&i915->drm, "CRTC inactive\n");
> -			return -EINVAL;
> -		}
> -		if (old_crtc_state->active_planes != new_crtc_state->active_planes) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Active planes cannot be changed during async flip\n");
> -			return -EINVAL;
> -		}
> +	if (intel_crtc_needs_modeset(new_crtc_state)) {
> +		drm_dbg_kms(&i915->drm, "Modeset Required. Async flip not supported\n");
> +		return -EINVAL;
> +	}
> +
> +	if (!new_crtc_state->hw.active) {
> +		drm_dbg_kms(&i915->drm, "CRTC inactive\n");
> +		return -EINVAL;
> +	}
> +	if (old_crtc_state->active_planes != new_crtc_state->active_planes) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Active planes cannot be changed during async flip\n");
> +		return -EINVAL;
>  	}
>  
>  	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
>  					     new_plane_state, i) {
> +		if (plane->pipe != crtc->pipe)
> +			continue;
> +
>  		/*
>  		 * TODO: Async flip is only supported through the page flip IOCTL
>  		 * as of now. So support currently added for primary plane only.
> @@ -8054,7 +8056,7 @@ static int intel_atomic_check(struct drm_device *dev,
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (new_crtc_state->uapi.async_flip) {
> -			ret = intel_atomic_check_async(state);
> +			ret = intel_atomic_check_async(state, crtc);
>  			if (ret)
>  				goto fail;
>  		}
> -- 
> 2.33.1

-- 
Ville Syrjälä
Intel
