Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6155B4BA84D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 19:33:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91BD410E684;
	Thu, 17 Feb 2022 18:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D56310E684
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 18:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645122785; x=1676658785;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=O/XldIyHEjwbyg0N9XDZY2l7r6SmesGufS1za0k/NV8=;
 b=YMDOBrh9Q0nXd1K/sN6qhiPPqASP6pJB8IT7d2Lc0lzu6/YwGvvC+o/5
 3UbwOABwvcg6d9C9dobxwjd/BVoUsurD4HAeluM2BePbT8Gnyq0/JUbCf
 3FoaC2H6rNTERJ2Z5SACpemdxo56V5BpfyPSL6mg2vOt8QQFnzVdrRgQa
 jXgTw2WH9/Qs0PC4Mk74l76626QVOapqmvHHjUDXGblLZVJLTq/U1f6Vp
 SUrnLeZtHvWtyqKGFdSjSPDkib2w1lFKYAL7UcpVffLS6quT2oEph63Yr
 f99IkaMOub15VZ40bPimHVDjZuzOa1rEnegFKuDS4vUMaXYZByc5qOSYa A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="251142603"
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="251142603"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 10:33:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="503049896"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 10:33:03 -0800
Date: Thu, 17 Feb 2022 20:33:23 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220217183323.GC3823@intel.com>
References: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
 <20220216174250.4449-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220216174250.4449-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm/i915: Extract
 intel_bw_check_data_rate()
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

On Wed, Feb 16, 2022 at 07:42:50PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Extract the data rate calculation loop out from
> intel_bw_atomic_check() to make it a bit less confusing.
> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 63 +++++++++++++++----------
>  1 file changed, 37 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index fa03f0935b6d..963b99d3557c 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -835,31 +835,12 @@ static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
>  	return mask;
>  }
>  
> -int intel_bw_atomic_check(struct intel_atomic_state *state)
> +static int intel_bw_check_data_rate(struct intel_atomic_state *state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> -	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> -	struct intel_bw_state *new_bw_state = NULL;
> -	const struct intel_bw_state *old_bw_state = NULL;
> -	unsigned int data_rate;
> -	unsigned int num_active_planes;
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>  	struct intel_crtc *crtc;
> -	int i, ret;
> -	u32 allowed_points = 0;
> -	unsigned int max_bw_point = 0, max_bw = 0;
> -	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
> -	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
> -
> -	/* FIXME earlier gens need some checks too */
> -	if (DISPLAY_VER(dev_priv) < 11)
> -		return 0;
> -
> -	/*
> -	 * If we already have the bw state then recompute everything
> -	 * even if pipe data_rate / active_planes didn't change.
> -	 * Other things (such as SAGV) may have changed.
> -	 */
> -	new_bw_state = intel_atomic_get_new_bw_state(state);
> +	int i;
>  
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
> @@ -871,6 +852,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  			intel_bw_crtc_num_active_planes(old_crtc_state);
>  		unsigned int new_active_planes =
>  			intel_bw_crtc_num_active_planes(new_crtc_state);
> +		struct intel_bw_state *new_bw_state;
>  
>  		/*
>  		 * Avoid locking the bw state when
> @@ -887,13 +869,42 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  		new_bw_state->data_rate[crtc->pipe] = new_data_rate;
>  		new_bw_state->num_active_planes[crtc->pipe] = new_active_planes;
>  
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "pipe %c data rate %u num active planes %u\n",
> -			    pipe_name(crtc->pipe),
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s] data rate %u num active planes %u\n",
> +			    crtc->base.base.id, crtc->base.name,
>  			    new_bw_state->data_rate[crtc->pipe],
>  			    new_bw_state->num_active_planes[crtc->pipe]);
>  	}
>  
> +	return 0;
> +}
> +
> +int intel_bw_atomic_check(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	const struct intel_bw_state *old_bw_state;
> +	struct intel_bw_state *new_bw_state;
> +	unsigned int data_rate;
> +	unsigned int num_active_planes;
> +	int i, ret;
> +	u32 allowed_points = 0;
> +	unsigned int max_bw_point = 0, max_bw = 0;
> +	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
> +	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
> +
> +	/* FIXME earlier gens need some checks too */
> +	if (DISPLAY_VER(dev_priv) < 11)
> +		return 0;
> +
> +	ret = intel_bw_check_data_rate(state);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * If we don't have a bw_state by now then none of the
> +	 * inputs to the QGV mask computation may have changed.
> +	 */
> +	new_bw_state = intel_atomic_get_new_bw_state(state);
>  	if (!new_bw_state)
>  		return 0;
>  
> -- 
> 2.34.1
> 
