Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEC448C51A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 14:50:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB50510E572;
	Wed, 12 Jan 2022 13:50:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0EA310E572
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 13:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641995409; x=1673531409;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LmxZRst5lntIPApAKzydu1cqIi6qm45GbbCfdjb/VMc=;
 b=UQAyTxUxwnFWVLuCQiJrcI/O1uIU8qb3zsIT9aBER9XjmDE0CKrtGNeP
 rDdMYlqtW+SEdrLJ9TbIq2NU2oc4w1RmADxwYHNAJiBO2feEDFOMAEweM
 JydLnCaOZ8tZ5sUsTRcOvBVHoRLM620mrOKUKr3Nyx5MwzCnlNu6u4NPU
 kipiXn3BnbVEg4JRl2tQ9lpgQmPV9c6eRVSPN8M6m4/302YBD2vPW41vm
 0JLWIsMkNSq8O8D//bh8KdgbVA6hXql5xBJF5vpDBE7IrNYpxJ52PtS+e
 iOCP7/L3w7+CaxfsrJ8aJJrvQS2hcvJvjOFMDkE+zcnBaY9EzaBEy6KKb g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="242553475"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="242553475"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 05:50:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="515490069"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga007.jf.intel.com with SMTP; 12 Jan 2022 05:50:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Jan 2022 15:50:05 +0200
Date: Wed, 12 Jan 2022 15:50:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Yd7cjQM8F8zjucb3@intel.com>
References: <20220111160812.21344-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220111160812.21344-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 11, 2022 at 06:08:12PM +0200, Stanislav Lisovskiy wrote:
> Currently we only recalculate CDCLK if active plane mask changes
> or if we do a full modeset, however according to BSpec
> required Dbuf bandwidth calculations also depend on pipe/plane
> scaling ratio, which means that CDCLK must be recalculated
> everytime plane scaling ratio changes,

Already handled by the plane min_cdclk stuff.

> because it affects
> display buffer bandwidth requirements.

Yes, the dbuf bw code is borked. I have old patches on the list that 
started to fix up all the data rate related stuff, but IIRC I didn't
finish it because I ran out of time at the time. I think I have a
branch that has a bit more but I'll need to check how far along I
actually got in fixing it all...

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
> -- 
> 2.24.1.485.gad05a3d8e5

-- 
Ville Syrjälä
Intel
