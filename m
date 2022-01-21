Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B02495EB8
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 12:59:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F06110E3F6;
	Fri, 21 Jan 2022 11:59:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 671EE10E3F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 11:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642766394; x=1674302394;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TMHQnrDMI45RxYSvbodq/+LWdH/fc2Ib7+RBIqbiDoA=;
 b=TMvOL6oQLRXiy7n97yGV9Clg2uuzk4B/tL9v3r1Vq8FgtZ6ahfIK8kQY
 zi3Zk/A6H+3yQOtIsuc5bG+gA2g9CVWZa9miH5qyjLgMJEV9LkTN/S9GG
 aQ7g5jCre1EbzpZj6SLTYQG8t8Dblwqza3iIwn7/8+OOa5X7gykh5WRbg
 kORVl5BPswdF4Rp+AYmruTLy4+mZPQXsWM0R1JvBFcfLWXFrARLSn1OIw
 AorelDudSKvl7zzwqM9PKZVz65gbep73/wRsH6qElTlNYGedJ4X5fnj+K
 bJk0fZ28Nu5bJA4YRw5O2b3tI+NgHP9EfgO+3mjq4UTN44A4ofSrnEws4 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="270058782"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="270058782"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 03:59:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="672923446"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga001.fm.intel.com with SMTP; 21 Jan 2022 03:59:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 13:59:50 +0200
Date: Fri, 21 Jan 2022 13:59:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <YeqgNrP+6fa+Oi9n@intel.com>
References: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
 <20220121080615.9936-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220121080615.9936-4-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Use wm0 only during async
 flips for DG2
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

On Fri, Jan 21, 2022 at 10:06:14AM +0200, Stanislav Lisovskiy wrote:
> This optimization allows to achieve higher perfomance
> during async flips.
> For the first async flip we have to still temporarily
> switch to sync flip, in order to reprogram plane
> watermarks, so this requires taking into account
> old plane state's do_async_flip flag.
> 
> v2: - Removed redundant new_plane_state->do_async_flip
>       check from needs_async_flip_wm_override condition
>       (Ville Syrjälä)
>     - Extract dg2_async_flip_optimization to separate
>       function(Ville Syrjälä)
>     - Check for plane->async_flip instead of plane_id
>       (Ville Syrjälä)
> 
> v3: - Rename "needs_async_flip_wm_override" to
>       "intel_plane_do_async_flip" and move all the required
>       checks there (Ville Syrjälä)
>     - Rename "dg2_async_flip_optimization" to
>       "use_minimal_wm0_only" (Ville Syrjälä)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++++++-
>  drivers/gpu/drm/i915/intel_pm.c              | 12 +++++++++-
>  2 files changed, 34 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9996daa036a0..3b86ede01b57 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4910,6 +4910,28 @@ static bool needs_scaling(const struct intel_plane_state *state)
>  	return (src_w != dst_w || src_h != dst_h);
>  }
>  
> +static bool intel_plane_do_async_flip(struct intel_plane *plane,
> +				      const struct intel_crtc_state *new_crtc_state,
> +				      const struct intel_crtc_state *old_crtc_state)

I think typically we put the old state before the new state.
Sadly the compiler can't help us with these so we should try
to be consistent to avoid accidental mishaps.

> +{
> +	struct drm_i915_private *i915 = to_i915(new_crtc_state->uapi.crtc->dev);

Would be a bit shorter to grab this from plane->base.dev

> +
> +	if (!plane->async_flip)
> +		return false;
> +
> +	if (!new_crtc_state->uapi.async_flip)
> +		return false;
> +
> +	/*
> +	 * In platforms after DISPLAY13, we might need to override
> +	 * first async flip in order to change watermark levels
> +	 * as part of optimization.
> +	 * So for those, we are checking if this is a first async flip.
> +	 * For platforms earlier than DISPLAY13 we always do async flip.
> +	 */
> +	return DISPLAY_VER(i915) < 13 || old_crtc_state->uapi.async_flip;
> +}
> +
>  int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_state,
>  				    struct intel_crtc_state *new_crtc_state,
>  				    const struct intel_plane_state *old_plane_state,
> @@ -5029,7 +5051,7 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
>  			 needs_scaling(new_plane_state))))
>  		new_crtc_state->disable_lp_wm = true;
>  
> -	if (new_crtc_state->uapi.async_flip && plane->async_flip)
> +	if (intel_plane_do_async_flip(plane, new_crtc_state, old_crtc_state))
>  		new_plane_state->do_async_flip = true;
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 35d0bd8c6e57..5fb022a2a4d7 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5510,6 +5510,15 @@ static int skl_wm_max_lines(struct drm_i915_private *dev_priv)
>  		return 31;
>  }
>  
> +static bool use_minimal_wm0_only(struct drm_i915_private *i915,

We can dig out 'i915' from eg. the plane, so no need for the
caller to pass it in.

> +				 const struct intel_crtc_state *crtc_state,
> +				 const struct intel_plane *plane)
> +{

Atypical 'const' still on the plane pointer here.

Apart from those lgtm
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	return DISPLAY_VER(i915) >= 13 &&
> +	       crtc_state->uapi.async_flip &&
> +	       plane->async_flip;
> +}
> +
>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  				 const struct intel_plane *plane,
>  				 int level,
> @@ -5523,7 +5532,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  	uint_fixed_16_16_t selected_result;
>  	u32 blocks, lines, min_ddb_alloc = 0;
>  
> -	if (latency == 0) {
> +	if (latency == 0 ||
> +	    (use_minimal_wm0_only(dev_priv, crtc_state, plane) && level > 0)) {
>  		/* reject it */
>  		result->min_ddb_alloc = U16_MAX;
>  		return;
> -- 
> 2.24.1.485.gad05a3d8e5

-- 
Ville Syrjälä
Intel
