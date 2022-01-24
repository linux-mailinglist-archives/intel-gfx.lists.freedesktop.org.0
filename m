Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9B1497BB9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 10:18:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3666710EDED;
	Mon, 24 Jan 2022 09:18:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2E4110EDEF
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 09:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643015885; x=1674551885;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1N4YHhEcBNCkxqXsCA0OWkLx/CjHFd9MOtdEsSgEmpY=;
 b=K5EVsM43+CoeCgx6YDrgRTeFq/iCbobRG4EKkcGT7kJWNWyHhhUcUfde
 3KpshuIypNbycfNrxf+nY0Qwbdaao1HbV+z/SWaqQblvvNsDnTrShN8ew
 BJNXFZLYpG7kWwM1UCMZ2XaZpyKjxFPGAcdUMk6LqM899Tmwi68ftB67Z
 gi0HRQV6zmUSBiPpgvanqHNyBP+sdSwyy6ds4r2iA1sv5UylYOBTfMtFU
 RwNGXmMNbP8eY9qaODUQMYqwk1rBXDyKL7oOKOpnXa84ULScMnJQL00S9
 CIOSrqHfzdXquMMCQz4rbL238/yzpsLFZ9sI2UpJ5Yv+4dhG8a0usSUHd A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="309323738"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="309323738"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 01:16:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="494558438"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga002.jf.intel.com with SMTP; 24 Jan 2022 01:16:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jan 2022 11:16:36 +0200
Date: Mon, 24 Jan 2022 11:16:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Ye5udHkBQFzPzEmY@intel.com>
References: <20220124090653.14547-1-stanislav.lisovskiy@intel.com>
 <20220124090653.14547-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220124090653.14547-5-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Don't allocate extra ddb
 during async flip for DG2
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

On Mon, Jan 24, 2022 at 11:06:53AM +0200, Stanislav Lisovskiy wrote:
> In terms of async flip optimization we don't to allocate
> extra ddb space, so lets skip it.
> 
> v2: - Extracted min ddb async flip check to separate function
>       (Ville Syrjälä)
>     - Used this function to prevent false positive WARN
>       to be triggered(Ville Syrjälä)
> 
> v3: - Renamed dg2_need_min_ddb to need_min_ddb thus making
>       it more universal.
>     - Also used DISPLAY_VER instead of IS_DG2(Ville Syrjälä)
>     - Use rate = 0 instead of just setting extra = 0, thus
>       letting other planes to use extra ddb and avoiding WARN
>       (Ville Syrjälä)
> 
> v4: - Renamed needs_min_ddb as s/needs/use/ to match
>       the wm0 counterpart(Ville Syrjälä)
>     - Added plane->async_flip check to use_min_ddb(now
>       passing plane as a parameter to do that)(Ville Syrjälä)
>     - Account for use_min_ddb also when calculating total data rate
>       (Ville Syrjälä)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
>  .../gpu/drm/i915/display/intel_atomic_plane.h |  3 +-
>  drivers/gpu/drm/i915/intel_pm.c               | 53 ++++++++++++++-----
>  3 files changed, 44 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index b20cf2c16691..9d79ab987b2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -374,7 +374,7 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
>  					       old_plane_state, new_plane_state);
>  }
>  
> -static struct intel_plane *
> +struct intel_plane *
>  intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
>  {
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> index ead789709477..aaddcc636f98 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -23,7 +23,8 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
>  				 unsigned int rate);
>  unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
>  				    const struct intel_plane_state *plane_state);
> -
> +struct intel_plane *intel_crtc_get_plane(struct intel_crtc *crtc,
> +					  enum plane_id plane_id);
>  unsigned int intel_plane_data_rate(const struct intel_crtc_state *crtc_state,
>  				   const struct intel_plane_state *plane_state);
>  void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 8269f1e9c784..fbe6a45801bc 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4988,6 +4988,25 @@ skl_get_total_relative_data_rate(struct intel_atomic_state *state,
>  	return total_data_rate;
>  }
>  
> +static bool use_min_ddb(struct intel_crtc_state *crtc_state,
> +			struct intel_plane *plane)
> +{
> +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> +
> +	return DISPLAY_VER(i915) >= 13 && crtc_state->uapi.async_flip &&
> +	       plane->async_flip;
> +}
> +
> +static bool use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
> +				 struct intel_plane *plane)

Please put this function into the right spot to begin with.
Avoids polluting this patch with unrelated code movement.

> +{
> +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> +
> +	return DISPLAY_VER(i915) >= 13 &&
> +	       crtc_state->uapi.async_flip &&
> +	       plane->async_flip;

Line wrapping is different between the two functions despite the
identical contents, which looks a bit weird.

> +}
> +
>  static u64
>  icl_get_total_relative_data_rate(struct intel_atomic_state *state,
>  				 struct intel_crtc *crtc)
> @@ -5033,8 +5052,15 @@ icl_get_total_relative_data_rate(struct intel_atomic_state *state,
>  		}
>  	}
>  
> -	for_each_plane_id_on_crtc(crtc, plane_id)
> -		total_data_rate += crtc_state->plane_data_rate[plane_id];
> +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {

for_each_intel_plane_on_crtc() otherwise we miss all
the planes not in the state.

> +		/*
> +		 * We calculate extra ddb based on ratio plane rate/total data rate
> +		 * in case, in some cases we should not allocate extra ddb for the plane,
> +		 * so do not count its data rate, if this is the case.
> +		 */
> +		if (!use_min_ddb(crtc_state, plane))
> +			total_data_rate += crtc_state->plane_data_rate[plane->id];
> +	}
>  
>  	return total_data_rate;
>  }
> @@ -5199,6 +5225,8 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  	for_each_plane_id_on_crtc(crtc, plane_id) {

for_each_intel_plane_on_crtc()...

>  		const struct skl_plane_wm *wm =
>  			&crtc_state->wm.skl.optimal.planes[plane_id];
> +		struct intel_plane *plane =
> +			intel_crtc_get_plane(crtc, plane_id);

... avoids needing that function.

>  		u64 rate;
>  		u16 extra;
>  
> @@ -5213,9 +5241,14 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  			break;
>  
>  		rate = crtc_state->plane_data_rate[plane_id];
> +
> +		if (use_min_ddb(crtc_state, plane))
> +			rate = 0;

else
	rate = crtc_state->plane_data_rate[plane_id];

is how I'd write that probably.

> +
>  		extra = min_t(u16, alloc_size,
>  			      DIV64_U64_ROUND_UP(alloc_size * rate,
>  						 total_data_rate));
> +
>  		total[plane_id] = wm->wm[level].min_ddb_alloc + extra;
>  		alloc_size -= extra;
>  		total_data_rate -= rate;
> @@ -5224,13 +5257,19 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  			break;
>  
>  		rate = crtc_state->uv_plane_data_rate[plane_id];
> +
> +		if (use_min_ddb(crtc_state, plane))
> +			rate = 0;
> +
>  		extra = min_t(u16, alloc_size,
>  			      DIV64_U64_ROUND_UP(alloc_size * rate,
>  						 total_data_rate));
> +
>  		uv_total[plane_id] = wm->uv_wm[level].min_ddb_alloc + extra;
>  		alloc_size -= extra;
>  		total_data_rate -= rate;
>  	}
> +
>  	drm_WARN_ON(&dev_priv->drm, alloc_size != 0 || total_data_rate != 0);
>  
>  	/* Set the actual DDB start/end points for each plane */
> @@ -5497,16 +5536,6 @@ static int skl_wm_max_lines(struct drm_i915_private *dev_priv)
>  		return 31;
>  }
>  
> -static bool use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
> -				 struct intel_plane *plane)
> -{
> -	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> -
> -	return DISPLAY_VER(i915) >= 13 &&
> -	       crtc_state->uapi.async_flip &&
> -	       plane->async_flip;
> -}
> -
>  static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  				 struct intel_plane *plane,
>  				 int level,
> -- 
> 2.24.1.485.gad05a3d8e5

-- 
Ville Syrjälä
Intel
