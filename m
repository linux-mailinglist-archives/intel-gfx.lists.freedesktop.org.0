Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B314B4939EC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 12:51:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05EAB10EFE9;
	Wed, 19 Jan 2022 11:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 130B910EFD8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 11:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642593067; x=1674129067;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=igqphNEELb6iL4apjt0zM5Mk/FCeA1c8aRQ/+TWjz1I=;
 b=J9avngAUUCqNpotT2ikCMN07rqJIl5rl2Mhjt2yMbqd8O2B4sLVJhwOf
 Qru8aZMRbKUdfKPXcM7C22J4yGrXAA0PjYBzluSWaqJ2oHa7vnkSsf8DI
 ki240GF2g8xWZD6tb4o34TqabWEviA4ALGtwIaXkJpsnPb7YOmPyDKTNb
 hzuJwRjCOYhjPfkieGpoT73o00YhFAQ1++dC24/eYu+2RXdegNFsMS/tn
 +EB6zDpb8G0PHwaFbO48ACXdaBY0jcGitZcmzYHEU/YC/7ME1InNs1E8N
 XU/Aa0MabsgiCtoH7Zq2Exr/xnXerxJn3l08VJ7YHfxtbbXH2d8v1uSWY A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="225721371"
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="225721371"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 03:51:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="672155804"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga001.fm.intel.com with SMTP; 19 Jan 2022 03:51:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jan 2022 13:51:03 +0200
Date: Wed, 19 Jan 2022 13:51:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Yef7JwQPKu7iEEOx@intel.com>
References: <20220118104839.6654-1-stanislav.lisovskiy@intel.com>
 <20220118104839.6654-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220118104839.6654-4-stanislav.lisovskiy@intel.com>
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

On Tue, Jan 18, 2022 at 12:48:38PM +0200, Stanislav Lisovskiy wrote:
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
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++++-
>  drivers/gpu/drm/i915/intel_pm.c              | 12 +++++++++++-
>  2 files changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f3ce29c42bc3..9a5126310014 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4908,6 +4908,15 @@ static bool needs_scaling(const struct intel_plane_state *state)
>  	return (src_w != dst_w || src_h != dst_h);
>  }
>  
> +static bool needs_async_flip_wm_override(struct intel_plane *plane,
> +					 const struct intel_plane_state *new_plane_state,
> +					 const struct intel_plane_state *old_plane_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);

I'd probably put all the require logic into this one function.

Perhaps somehting like?

intel_plane_do_async_flip()
{
	if (!plane->async_flip)
		return false;

	if (!new_crtc_state->uapi.async_flip)
		return false;

	/* some explanation what's going on here */
	return DISPLAY_VER < 13 || old_crtc_state->uapi.async_flip;
}

>+
> +	return DISPLAY_VER(dev_priv) >= 13 && !old_plane_state->do_async_flip;
> +}
> +
>  int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_state,
>  				    struct intel_crtc_state *new_crtc_state,
>  				    const struct intel_plane_state *old_plane_state,
> @@ -5027,7 +5036,8 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
>  			 needs_scaling(new_plane_state))))
>  		new_crtc_state->disable_lp_wm = true;
>  
> -	if (new_crtc_state->uapi.async_flip && plane->async_flip)
> +	if (new_crtc_state->uapi.async_flip &&
> +	    !needs_async_flip_wm_override(plane, new_plane_state, old_plane_state))
>  		new_plane_state->do_async_flip = true;
>  	else
>  		new_plane_state->do_async_flip = false;
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index dc1203d21c46..5d350ddc447f 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5510,6 +5510,15 @@ static int skl_wm_max_lines(struct drm_i915_private *dev_priv)
>  		return 31;
>  }
>  
> +bool dg2_async_flip_optimization(struct drm_i915_private *i915,
> +				 const struct intel_crtc_state *crtc_state,
> +				 const struct intel_plane *plane)

I'd drop the platform specific suffix from this since it's more of
a policy quesion rather than really a platform specific question.
We may or may not want to extend this to other platforms too if we
figure out that it can actually help (although my initial quick
tests did show a potentially negative impact for some unknown reason).

In fact maybe it should be just called use_minimal_wm0_only() 
or something since the callers don't really need to know why it's
being done, only that we want to limit to just wm0 with minimal ddb
allocation?

> +{
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
> +	    (dg2_async_flip_optimization(dev_priv, crtc_state, plane) && level > 0)) {
>  		/* reject it */
>  		result->min_ddb_alloc = U16_MAX;
>  		return;
> -- 
> 2.24.1.485.gad05a3d8e5

-- 
Ville Syrjälä
Intel
