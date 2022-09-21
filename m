Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5195C00B7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 17:07:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A499610E2B2;
	Wed, 21 Sep 2022 15:07:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3315610E2B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 15:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663772837; x=1695308837;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kLaUdJGp4fJZtRiuse3AOsOUR9daUHXPKWA4oR+ZFbk=;
 b=OVPYfJvLFkq0Nb12uu3AtJzj/vyeRxJJVmSDxhFLtop+uxB9ud2iNFos
 McNgeW5F92AQJubqUlbErC/GtnJZK1u65gYy/G8Z8JDc8unuhwVN6sd1c
 a6Bv9z7XkuJhCh2JMIjTWfFvl9cgd6pcG0nr56jheZfcxSTwCGBck4CaO
 EfRYptcgb56z5+uFfSm+MwOBbtR44T+g8luXeC630MSt3LUnywTufoqfE
 Ce3MlnYmjtAH5jWAcxouzMX9oKOCIB+ate8EQbPu3wbhpYp7vTK0T+3OW
 GJbqMf8WwC0/sYG+Ozun5OcZ71SFef2vV3SA8/vUi0Rmm8bJlgJ+4EWet A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="287100758"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="287100758"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 08:07:13 -0700
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="864462322"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 08:07:12 -0700
Date: Wed, 21 Sep 2022 18:07:59 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YysozyslzdzLvYSW@intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
 <20220622155452.32587-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220622155452.32587-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/9] drm/i915: Split
 vlv_compute_pipe_wm() into two
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

On Wed, Jun 22, 2022 at 06:54:45PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Split vlv_compute_pipe_wm() into two halves. The first half computes
> the new raw watermarks, and the second half munges those up into real
> watermarks for the particular pipe.
> 
> We can reuse the second half for watermark sanitation as well.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanslav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 114 ++++++++++++++++++--------------
>  1 file changed, 64 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 395ed3c832d6..4ea43fa73075 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -1904,64 +1904,17 @@ static bool vlv_raw_crtc_wm_is_valid(const struct intel_crtc_state *crtc_state,
>  		vlv_raw_plane_wm_is_valid(crtc_state, PLANE_CURSOR, level);
>  }
>  
> -static int vlv_compute_pipe_wm(struct intel_atomic_state *state,
> -			       struct intel_crtc *crtc)
> +static int _vlv_compute_pipe_wm(struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	struct intel_crtc_state *crtc_state =
> -		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct vlv_wm_state *wm_state = &crtc_state->wm.vlv.optimal;
>  	const struct vlv_fifo_state *fifo_state =
>  		&crtc_state->wm.vlv.fifo_state;
>  	u8 active_planes = crtc_state->active_planes & ~BIT(PLANE_CURSOR);
>  	int num_active_planes = hweight8(active_planes);
> -	bool needs_modeset = drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
> -	const struct intel_plane_state *old_plane_state;
> -	const struct intel_plane_state *new_plane_state;
> -	struct intel_plane *plane;
>  	enum plane_id plane_id;
> -	int level, ret, i;
> -	unsigned int dirty = 0;
> -
> -	for_each_oldnew_intel_plane_in_state(state, plane,
> -					     old_plane_state,
> -					     new_plane_state, i) {
> -		if (new_plane_state->hw.crtc != &crtc->base &&
> -		    old_plane_state->hw.crtc != &crtc->base)
> -			continue;
> -
> -		if (vlv_raw_plane_wm_compute(crtc_state, new_plane_state))
> -			dirty |= BIT(plane->id);
> -	}
> -
> -	/*
> -	 * DSPARB registers may have been reset due to the
> -	 * power well being turned off. Make sure we restore
> -	 * them to a consistent state even if no primary/sprite
> -	 * planes are initially active.
> -	 */
> -	if (needs_modeset)
> -		crtc_state->fifo_changed = true;
> -
> -	if (!dirty)
> -		return 0;
> -
> -	/* cursor changes don't warrant a FIFO recompute */
> -	if (dirty & ~BIT(PLANE_CURSOR)) {
> -		const struct intel_crtc_state *old_crtc_state =
> -			intel_atomic_get_old_crtc_state(state, crtc);
> -		const struct vlv_fifo_state *old_fifo_state =
> -			&old_crtc_state->wm.vlv.fifo_state;
> -
> -		ret = vlv_compute_fifo(crtc_state);
> -		if (ret)
> -			return ret;
> -
> -		if (needs_modeset ||
> -		    memcmp(old_fifo_state, fifo_state,
> -			   sizeof(*fifo_state)) != 0)
> -			crtc_state->fifo_changed = true;
> -	}
> +	int level;
>  
>  	/* initially allow all levels */
>  	wm_state->num_levels = intel_wm_num_levels(dev_priv);
> @@ -2008,6 +1961,67 @@ static int vlv_compute_pipe_wm(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> +static int vlv_compute_pipe_wm(struct intel_atomic_state *state,
> +			       struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	bool needs_modeset = drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
> +	const struct intel_plane_state *old_plane_state;
> +	const struct intel_plane_state *new_plane_state;
> +	struct intel_plane *plane;
> +	unsigned int dirty = 0;
> +	int i;
> +
> +	for_each_oldnew_intel_plane_in_state(state, plane,
> +					     old_plane_state,
> +					     new_plane_state, i) {
> +		if (new_plane_state->hw.crtc != &crtc->base &&
> +		    old_plane_state->hw.crtc != &crtc->base)
> +			continue;
> +
> +		if (vlv_raw_plane_wm_compute(crtc_state, new_plane_state))
> +			dirty |= BIT(plane->id);
> +	}
> +
> +	/*
> +	 * DSPARB registers may have been reset due to the
> +	 * power well being turned off. Make sure we restore
> +	 * them to a consistent state even if no primary/sprite
> +	 * planes are initially active. We also force a FIFO
> +	 * recomputation so that we are sure to sanitize the
> +	 * FIFO setting we took over from the BIOS even if there
> +	 * are no active planes on the crtc.
> +	 */
> +	if (needs_modeset)
> +		dirty = ~0;
> +
> +	if (!dirty)
> +		return 0;
> +
> +	/* cursor changes don't warrant a FIFO recompute */
> +	if (dirty & ~BIT(PLANE_CURSOR)) {
> +		const struct intel_crtc_state *old_crtc_state =
> +			intel_atomic_get_old_crtc_state(state, crtc);
> +		const struct vlv_fifo_state *old_fifo_state =
> +			&old_crtc_state->wm.vlv.fifo_state;
> +		const struct vlv_fifo_state *new_fifo_state =
> +			&crtc_state->wm.vlv.fifo_state;
> +		int ret;
> +
> +		ret = vlv_compute_fifo(crtc_state);
> +		if (ret)
> +			return ret;
> +
> +		if (needs_modeset ||
> +		    memcmp(old_fifo_state, new_fifo_state,
> +			   sizeof(*new_fifo_state)) != 0)
> +			crtc_state->fifo_changed = true;
> +	}
> +
> +	return _vlv_compute_pipe_wm(crtc_state);
> +}
> +
>  #define VLV_FIFO(plane, value) \
>  	(((value) << DSPARB_ ## plane ## _SHIFT_VLV) & DSPARB_ ## plane ## _MASK_VLV)
>  
> -- 
> 2.35.1
> 
