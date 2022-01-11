Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 094E848B287
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 17:45:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19B5810E7FA;
	Tue, 11 Jan 2022 16:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AD8610E7FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 16:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641919543; x=1673455543;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=ZH8YaOJezUZH2LmK7L43jTXWU2ZPlU/PCL8L+HGMhDY=;
 b=EGuMhR5SPmhg66n2hfoZt7uW/EsLjtbWf46wAuHsfwS7N3vykjwHuUqo
 EsyoYBuc4odVrUtzKd1DrRU+vXOhdln0O/ctizoZzxxQd63p7wwZ0W92X
 +aslntMLGjVnwwE0YLTgCAtnHi5uiZdo1bMzGThIDhaDI6vFusiqVRxl+
 vn3/5qZW3UEb9L+9Xb/PCKKh6lBgGnBBZvlkk0M/uZKo6JxOX/vgdpepG
 5C2YUnep8BJeWZGJUzg3z7+OgzoNgYfgZ09qO0UpsDn6SOQllJxE0GKXU
 rj3Q5+KdGantU+7jisouB7ebHqTetJf4oaVVDnnlj1jCnIyTnMRud6I2W g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="306883520"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="306883520"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 08:45:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="528807738"
Received: from sjobrien-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.25.241])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 08:45:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220111160812.21344-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220111160812.21344-1-stanislav.lisovskiy@intel.com>
Date: Tue, 11 Jan 2022 18:45:31 +0200
Message-ID: <87wnj66x1w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Recalculate CDCLK if plane
 scaling ratio changes
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

On Tue, 11 Jan 2022, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> Currently we only recalculate CDCLK if active plane mask changes
> or if we do a full modeset, however according to BSpec
> required Dbuf bandwidth calculations also depend on pipe/plane
> scaling ratio, which means that CDCLK must be recalculated
> everytime plane scaling ratio changes, because it affects
> display buffer bandwidth requirements.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 63 +++++++++++++++++++-
>  1 file changed, 60 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index bf7ce684dd8e..2c616348e993 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7499,13 +7499,65 @@ static int intel_bigjoiner_add_affected_planes(struct intel_atomic_state *state)
>  	return 0;
>  }
>  
> +static bool scaling_affects_cdclk(struct intel_plane_state *old_plane_state,
> +				  struct intel_plane_state *new_plane_state)
> +{
> +	int old_src_w = drm_rect_width(&old_plane_state->uapi.src) >> 16;
> +	int old_src_h = drm_rect_height(&old_plane_state->uapi.src) >> 16;
> +	int old_dst_w = drm_rect_width(&old_plane_state->uapi.dst);
> +	int old_dst_h = drm_rect_height(&old_plane_state->uapi.dst);
> +	int new_src_w = drm_rect_width(&new_plane_state->uapi.src) >> 16;
> +	int new_src_h = drm_rect_height(&new_plane_state->uapi.src) >> 16;
> +	int new_dst_w = drm_rect_width(&new_plane_state->uapi.dst);
> +	int new_dst_h = drm_rect_height(&new_plane_state->uapi.dst);
> +	int old_hscale_ratio, new_hscale_ratio;
> +	int old_vscale_ratio, new_vscale_ratio;
> +
> +	if (needs_scaling(old_plane_state) != needs_scaling(new_plane_state))
> +		return true;
> +
> +	if (!old_dst_w || !old_dst_h)
> +		return true;
> +
> +	DRM_DEBUG_KMS("old_dst_w %d old_dst_h %d\n", old_dst_w, old_dst_h);
> +
> +	old_hscale_ratio = DIV_ROUND_UP(old_src_w, old_dst_w);
> +	old_vscale_ratio = DIV_ROUND_UP(old_src_h, old_dst_h);
> +
> +	if (!new_dst_w || !new_dst_h)
> +		return true;
> +
> +	DRM_DEBUG_KMS("new_dst_w %d new_dst_h %d\n", new_dst_w, new_dst_h);
> +
> +	new_hscale_ratio = DIV_ROUND_UP(new_src_w, new_dst_w);
> +	new_vscale_ratio = DIV_ROUND_UP(new_src_h, new_dst_h);
> +
> +	DRM_DEBUG_KMS("new_hscale_ratio %d new_vscale_ratio %d "
> +		      "old_hscale_ratio %d old_vscale_ratio %d\n",
> +		      new_hscale_ratio, new_vscale_ratio,
> +		      old_hscale_ratio, old_vscale_ratio);

All of the debug logging seem excessive? Also, please use drm_dbg_atomic
or drm_dbg_kms instead of DRM_DEBUG_KMS for the ones that need to stay.

BR,
Jani.

> +
> +	if ((old_hscale_ratio != new_hscale_ratio) ||
> +	    (old_vscale_ratio != new_vscale_ratio)) {
> +		DRM_DEBUG_KMS("Scaling ratios changed from %dx%d"
> +			      " to %dx%d - need cdclk recalc\n",
> +			      old_hscale_ratio, old_vscale_ratio,
> +			      new_hscale_ratio, new_vscale_ratio);
> +		return true;
> +	}
> +
> +	return false;
> +}
> +
>  static int intel_atomic_check_planes(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
>  	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
>  	struct intel_plane_state *plane_state;
> +	struct intel_plane_state *old_plane_state;
>  	struct intel_plane *plane;
>  	struct intel_crtc *crtc;
> +	bool need_cdclk_calc = false;
>  	int i, ret;
>  
>  	ret = icl_add_linked_planes(state);
> @@ -7516,7 +7568,7 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
>  	if (ret)
>  		return ret;
>  
> -	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> +	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state, plane_state, i) {
>  		ret = intel_plane_atomic_check(state, plane);
>  		if (ret) {
>  			drm_dbg_atomic(&dev_priv->drm,
> @@ -7524,6 +7576,9 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
>  				       plane->base.base.id, plane->base.name);
>  			return ret;
>  		}
> +
> +		if (scaling_affects_cdclk(old_plane_state, plane_state))
> +			need_cdclk_calc = true;
>  	}
>  
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> @@ -7539,18 +7594,20 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
>  		 * the planes' minimum cdclk calculation. Add such planes
>  		 * to the state before we compute the minimum cdclk.
>  		 */
> -		if (!active_planes_affects_min_cdclk(dev_priv))
> +		if (!active_planes_affects_min_cdclk(dev_priv) && !need_cdclk_calc)
>  			continue;
>  
>  		old_active_planes = old_crtc_state->active_planes & ~BIT(PLANE_CURSOR);
>  		new_active_planes = new_crtc_state->active_planes & ~BIT(PLANE_CURSOR);
>  
> -		if (hweight8(old_active_planes) == hweight8(new_active_planes))
> +		if ((hweight8(old_active_planes) == hweight8(new_active_planes)) && !need_cdclk_calc)
>  			continue;
>  
>  		ret = intel_crtc_add_planes_to_state(state, crtc, new_active_planes);
>  		if (ret)
>  			return ret;
> +
> +
>  	}
>  
>  	return 0;

-- 
Jani Nikula, Intel Open Source Graphics Center
