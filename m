Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 541CD4CBFBE
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 15:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8100A10E89C;
	Thu,  3 Mar 2022 14:15:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2177C10E89C
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 14:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646316910; x=1677852910;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kx+fHcIcNRl4w1q+RzXgwlWS4JUdSL4gNV3JZbiJxTE=;
 b=LfxKOd+VGvHr3O9UeDefTy2yqXU3BacUw+puxqTQuc4KNEjJZbrUgFYt
 5xTkto7SDtySz82ilU9IteKOPhl76/qB+Ftfr2w0yo163NobAR+5b3F0d
 yrTD5QvA4J47q4SOooI/drWVvGfGZyYllkl9FYnXky+lCpmpM+QvVaz3V
 ygNos/9zukZFAP9s8MlSUBFeOHkRgWi/a5X4Z0P0ySgaEv+XNT6SM4Imv
 NSoIp4tgn7/oal0JMFpQeNw4J0MxboFGkgqxkS+8I4zTl6Hn2da3WvAgh
 D3pI88JH6swJprk5Enr/yvaier/PNTOoQxcI4M3zgv/ZpACk2GPnNRcwp g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="316903939"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="316903939"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 06:15:09 -0800
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="511442550"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 06:15:08 -0800
Date: Thu, 3 Mar 2022 16:15:35 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220303141535.GB10068@intel.com>
References: <20220214105532.13049-1-ville.syrjala@linux.intel.com>
 <20220214105532.13049-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220214105532.13049-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Check async flip capability
 early on
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

On Mon, Feb 14, 2022 at 12:55:30PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Since the async flip state check is done very late and
> thus it can see potentially all the planes in the state
> (due to the wm/ddb optimization) we need to move the
> "can the requested plane do async flips at all?" check
> much earlier. For this purpose we introduce
> intel_async_flip_check_uapi() that gets called early during
> the atomic check.
> 
> And for good measure we'll throw in a couple of basic checks:
> - is the crtc active?
> - was a modeset flagged?
> - is+was the plane enabled?
> Though atm all of those should be guaranteed by the fact
> that the async flip can only be requested through the legacy
> page flip ioctl.
> 

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: c3639f3be480 ("drm/i915: Use wm0 only during async flips for DG2")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 79 ++++++++++++++++++--
>  1 file changed, 72 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index baa291e4943f..5a8c7816d29e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7463,7 +7463,7 @@ static void kill_bigjoiner_slave(struct intel_atomic_state *state,
>   * Correspondingly, support is currently added for primary plane only.
>   *
>   * Async flip can only change the plane surface address, so anything else
> - * changing is rejected from the intel_atomic_check_async() function.
> + * changing is rejected from the intel_async_flip_check_hw() function.
>   * Once this check is cleared, flip done interrupt is enabled using
>   * the intel_crtc_enable_flip_done() function.
>   *
> @@ -7473,7 +7473,65 @@ static void kill_bigjoiner_slave(struct intel_atomic_state *state,
>   * correspond to the last vblank and have no relation to the actual time when
>   * the flip done event was sent.
>   */
> -static int intel_atomic_check_async(struct intel_atomic_state *state, struct intel_crtc *crtc)
> +static int intel_async_flip_check_uapi(struct intel_atomic_state *state,
> +				       struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	const struct intel_crtc_state *new_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_plane_state *old_plane_state;
> +	struct intel_plane_state *new_plane_state;
> +	struct intel_plane *plane;
> +	int i;
> +
> +	if (!new_crtc_state->uapi.async_flip)
> +		return 0;
> +
> +	if (!new_crtc_state->uapi.active) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s] not active\n",
> +			    crtc->base.base.id, crtc->base.name);
> +		return -EINVAL;
> +	}
> +
> +	if (intel_crtc_needs_modeset(new_crtc_state)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s] modeset required\n",
> +			    crtc->base.base.id, crtc->base.name);
> +		return -EINVAL;
> +	}
> +
> +	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
> +					     new_plane_state, i) {
> +		if (plane->pipe != crtc->pipe)
> +			continue;
> +
> +		/*
> +		 * TODO: Async flip is only supported through the page flip IOCTL
> +		 * as of now. So support currently added for primary plane only.
> +		 * Support for other planes on platforms on which supports
> +		 * this(vlv/chv and icl+) should be added when async flip is
> +		 * enabled in the atomic IOCTL path.
> +		 */
> +		if (!plane->async_flip) {
> +			drm_dbg_kms(&i915->drm,
> +				    "[PLANE:%d:%s] async flip not supported\n",
> +				    plane->base.base.id, plane->base.name);
> +			return -EINVAL;
> +		}
> +
> +		if (!old_plane_state->uapi.fb || !new_plane_state->uapi.fb) {
> +			drm_dbg_kms(&i915->drm,
> +				    "[PLANE:%d:%s] no old or new framebuffer\n",
> +				    plane->base.base.id, plane->base.name);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	const struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> @@ -7484,6 +7542,9 @@ static int intel_atomic_check_async(struct intel_atomic_state *state, struct int
>  	old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
>  	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
>  
> +	if (!new_crtc_state->uapi.async_flip)
> +		return 0;
> +
>  	if (intel_crtc_needs_modeset(new_crtc_state)) {
>  		drm_dbg_kms(&i915->drm, "Modeset Required. Async flip not supported\n");
>  		return -EINVAL;
> @@ -7675,6 +7736,12 @@ static int intel_atomic_check(struct drm_device *dev,
>  	if (ret)
>  		goto fail;
>  
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		ret = intel_async_flip_check_uapi(state, crtc);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	ret = intel_bigjoiner_add_affected_crtcs(state);
>  	if (ret)
>  		goto fail;
> @@ -7834,11 +7901,9 @@ static int intel_atomic_check(struct drm_device *dev,
>  
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
> -		if (new_crtc_state->uapi.async_flip) {
> -			ret = intel_atomic_check_async(state, crtc);
> -			if (ret)
> -				goto fail;
> -		}
> +		ret = intel_async_flip_check_hw(state, crtc);
> +		if (ret)
> +			goto fail;
>  
>  		if (!intel_crtc_needs_modeset(new_crtc_state) &&
>  		    !new_crtc_state->update_pipe)
> -- 
> 2.34.1
> 
