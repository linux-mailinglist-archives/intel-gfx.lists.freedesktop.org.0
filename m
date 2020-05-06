Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 078A71C6BE0
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 10:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20BA06E830;
	Wed,  6 May 2020 08:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1E6F6E830
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 08:35:25 +0000 (UTC)
IronPort-SDR: Hkt75coHaYuGENpFzWAXqz1AJO7jr1/4K/R0F0/AydctY0NddTzyzNOobyaXVOuJYZpjgCKWKu
 pc4N5nyYzBuw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 01:35:25 -0700
IronPort-SDR: p0uz4bm8z5WKnBQrcx/3oibxiZyygAsfLcgp3DjhpA8pIQNH6cEVlL0a4/5kmRNNYjCW2eTvX2
 d6Aik07BR1Pg==
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="434802277"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 01:35:23 -0700
Date: Wed, 6 May 2020 11:31:05 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200506083105.GA16959@intel.com>
References: <20200505102247.32452-1-stanislav.lisovskiy@intel.com>
 <20200505102247.32452-4-stanislav.lisovskiy@intel.com>
 <20200505105911.GG6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505105911.GG6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v27 3/6] drm/i915: Add TGL+ SAGV support
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 05, 2020 at 01:59:11PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, May 05, 2020 at 01:22:44PM +0300, Stanislav Lisovskiy wrote:
> > Starting from TGL we need to have a separate wm0
> > values for SAGV and non-SAGV which affects
> > how calculations are done.
> > =

> > v2: Remove long lines
> > v3: Removed COLOR_PLANE enum references
> > v4, v5, v6: Fixed rebase conflict
> > =

> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
> >  .../drm/i915/display/intel_display_types.h    |   3 +
> >  drivers/gpu/drm/i915/intel_pm.c               | 128 +++++++++++++++++-
> >  3 files changed, 130 insertions(+), 9 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index fd6d63b03489..be5741cb7595 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -13961,7 +13961,9 @@ static void verify_wm_state(struct intel_crtc *=
crtc,
> >  		/* Watermarks */
> >  		for (level =3D 0; level <=3D max_level; level++) {
> >  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > -						&sw_plane_wm->wm[level]))
> > +						&sw_plane_wm->wm[level]) ||
> > +			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
> > +							       &sw_plane_wm->sagv_wm0)))
> >  				continue;
> >  =

> >  			drm_err(&dev_priv->drm,
> > @@ -14016,7 +14018,9 @@ static void verify_wm_state(struct intel_crtc *=
crtc,
> >  		/* Watermarks */
> >  		for (level =3D 0; level <=3D max_level; level++) {
> >  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> > -						&sw_plane_wm->wm[level]))
> > +						&sw_plane_wm->wm[level]) ||
> > +			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
> > +							       &sw_plane_wm->sagv_wm0)))
> >  				continue;
> >  =

> >  			drm_err(&dev_priv->drm,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index 9488449e4b94..32cbbf7dddc6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -688,11 +688,14 @@ struct skl_plane_wm {
> >  	struct skl_wm_level wm[8];
> >  	struct skl_wm_level uv_wm[8];
> >  	struct skl_wm_level trans_wm;
> > +	struct skl_wm_level sagv_wm0;
> > +	struct skl_wm_level uv_sagv_wm0;
> =

> As mentioned before uv_wm is not a thing on icl+, so nuke this.

This is used in skl_plane_wm_level accessor, which is used for all
platforms, not just icl+. I remember we had agreed that for all platforms
before tgl I simply copy sagv_wm0 values from regular wm0, so that this
behaviour is unified(remember that your comment about memcpy which I changed
to assignment, see skl_compute_sagv_wm). =


So if I remove it and this is called for pre-icl platforms, guess this woul=
d still
need wm_uv data?


Stan

> =

> >  	bool is_planar;
> >  };
> >  =

> >  struct skl_pipe_wm {
> >  	struct skl_plane_wm planes[I915_MAX_PLANES];
> > +	bool can_sagv;
> =

> I would call it use_sagv_wm or somesuch to make it actually clear what
> it does.
> =

> >  };
> >  =

> >  enum vlv_wm_level {
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
> > index c7d726a656b2..1b9925b6672c 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -3871,6 +3871,9 @@ static bool icl_crtc_can_enable_sagv(const struct=
 intel_crtc_state *crtc_state)
> >  	return intel_crtc_can_enable_sagv(crtc_state);
> >  }
> >  =

> > +static bool
> > +tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state);
> > +
> >  bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
> >  {
> >  	if (bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes))
> > @@ -3884,7 +3887,7 @@ static int intel_compute_sagv_mask(struct intel_a=
tomic_state *state)
> >  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> >  	int ret;
> >  	struct intel_crtc *crtc;
> > -	const struct intel_crtc_state *new_crtc_state;
> > +	struct intel_crtc_state *new_crtc_state;
> >  	struct intel_bw_state *new_bw_state =3D NULL;
> >  	const struct intel_bw_state *old_bw_state =3D NULL;
> >  	int i;
> > @@ -3899,7 +3902,9 @@ static int intel_compute_sagv_mask(struct intel_a=
tomic_state *state)
> >  =

> >  		old_bw_state =3D intel_atomic_get_old_bw_state(state);
> >  =

> > -		if (INTEL_GEN(dev_priv) >=3D 11)
> > +		if (INTEL_GEN(dev_priv) >=3D 12)
> > +			can_sagv =3D tgl_crtc_can_enable_sagv(new_crtc_state);
> > +		else if (INTEL_GEN(dev_priv) >=3D 11)
> >  			can_sagv =3D icl_crtc_can_enable_sagv(new_crtc_state);
> >  		else
> >  			can_sagv =3D skl_crtc_can_enable_sagv(new_crtc_state);
> > @@ -3921,6 +3926,24 @@ static int intel_compute_sagv_mask(struct intel_=
atomic_state *state)
> >  			return ret;
> >  	}
> >  =

> > +	for_each_new_intel_crtc_in_state(state, crtc,
> > +					 new_crtc_state, i) {
> > +		struct skl_pipe_wm *pipe_wm =3D &new_crtc_state->wm.skl.optimal;
> > +
> > +		/*
> > +		 * Due to drm limitation at commit state, when
> > +		 * changes are written the whole atomic state is
> > +		 * zeroed away =3D> which prevents from using it,
> > +		 * so just sticking it into pipe wm state for
> > +		 * keeping it simple - anyway this is related to wm.
> > +		 * Proper way in ideal universe would be of course not
> > +		 * to lose parent atomic state object from child crtc_state,
> > +		 * and stick to OOP programming principles, which had been
> > +		 * scientifically proven to work.
> =

> Seems like random ramblings. I'd just nuke the comment.
> =

> > +		 */
> > +		pipe_wm->can_sagv =3D intel_can_enable_sagv(new_bw_state);
> > +	}
> > +
> >  	if (intel_can_enable_sagv(new_bw_state) !=3D intel_can_enable_sagv(ol=
d_bw_state)) {
> >  		ret =3D intel_atomic_serialize_global_state(&new_bw_state->base);
> >  		if (ret)
> > @@ -4664,12 +4687,39 @@ skl_plane_wm_level(const struct intel_crtc_stat=
e *crtc_state,
> >  		   int level,
> >  		   int color_plane)
> >  {
> > -	const struct skl_plane_wm *wm =3D
> > -		&crtc_state->wm.skl.optimal.planes[plane_id];
> > +	const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> > +	const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> > +
> > +	if (!level) {
> > +		if (pipe_wm->can_sagv)
> > +			return color_plane =3D=3D 0 ? &wm->sagv_wm0 : &wm->uv_sagv_wm0;
> > +	}
> >  =

> >  	return color_plane =3D=3D 0 ? &wm->wm[level] : &wm->uv_wm[level];
> >  }
> >  =

> > +static bool
> > +tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	enum plane_id plane_id;
> > +
> > +	if (!crtc_state->hw.active)
> > +		return true;
> > +
> > +	for_each_plane_id_on_crtc(crtc, plane_id) {
> > +		const struct skl_ddb_entry *plane_alloc =3D
> > +			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> > +		const struct skl_plane_wm *wm =3D
> > +			&crtc_state->wm.skl.optimal.planes[plane_id];
> > +
> > +		if (skl_ddb_entry_size(plane_alloc) < wm->sagv_wm0.min_ddb_alloc)
> > +			return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >  static int
> >  skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
> >  {
> > @@ -5251,10 +5301,17 @@ static void skl_compute_plane_wm(const struct i=
ntel_crtc_state *crtc_state,
> >  static void
> >  skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
> >  		      const struct skl_wm_params *wm_params,
> > -		      struct skl_wm_level *levels)
> > +		      struct skl_plane_wm *plane_wm,
> > +		      int color_plane)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->=
dev);
> >  	int level, max_level =3D ilk_wm_max_level(dev_priv);
> > +	/*
> > +	 * Check which kind of plane is it and based on that calculate
> > +	 * correspondent WM levels.
> > +	 */
> > +	struct skl_wm_level *levels =3D color_plane =3D=3D 1 ?
> > +				      plane_wm->uv_wm : plane_wm->wm;
> >  	struct skl_wm_level *result_prev =3D &levels[0];
> >  =

> >  	for (level =3D 0; level <=3D max_level; level++) {
> > @@ -5268,6 +5325,40 @@ skl_compute_wm_levels(const struct intel_crtc_st=
ate *crtc_state,
> >  	}
> >  }
> >  =

> > +static void skl_compute_sagv_wm(const struct intel_crtc_state *crtc_st=
ate,
> > +				const struct skl_wm_params *wm_params,
> > +				struct skl_plane_wm *plane_wm,
> > +				int color_plane)
> > +{
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->=
dev);
> > +	struct skl_wm_level *sagv_wm =3D color_plane =3D=3D 1 ?
> > +				&plane_wm->uv_sagv_wm0 : &plane_wm->sagv_wm0;
> > +	struct skl_wm_level *levels =3D color_plane =3D=3D 1 ?
> > +				plane_wm->uv_wm : plane_wm->wm;
> > +
> > +	/*
> > +	 * For Gen12 if it is an L0 we need to also
> > +	 * consider sagv_block_time when calculating
> > +	 * L0 watermark - we will need that when making
> > +	 * a decision whether enable SAGV or not.
> > +	 * For older gens we agreed to copy L0 value for
> > +	 * compatibility.
> > +	 */
> > +	if ((INTEL_GEN(dev_priv) >=3D 12)) {
> > +		u32 latency =3D dev_priv->wm.skl_latency[0];
> > +
> > +		latency +=3D dev_priv->sagv_block_time_us;
> > +		skl_compute_plane_wm(crtc_state, 0, latency,
> > +				     wm_params, &levels[0],
> > +				     sagv_wm);
> > +		DRM_DEBUG_KMS("%d L0 blocks required for SAGV vs %d for non-SAGV\n",
> > +			      sagv_wm->min_ddb_alloc, levels[0].min_ddb_alloc);
> > +	} else {
> > +		/* Since all members are POD */
> > +		*sagv_wm =3D levels[0];
> > +	}
> > +}
> > +
> >  static void skl_compute_transition_wm(const struct intel_crtc_state *c=
rtc_state,
> >  				      const struct skl_wm_params *wp,
> >  				      struct skl_plane_wm *wm)
> > @@ -5344,7 +5435,8 @@ static int skl_build_plane_wm_single(struct intel=
_crtc_state *crtc_state,
> >  	if (ret)
> >  		return ret;
> >  =

> > -	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
> > +	skl_compute_wm_levels(crtc_state, &wm_params, wm, 0);
> > +	skl_compute_sagv_wm(crtc_state, &wm_params, wm, 0);
> >  	skl_compute_transition_wm(crtc_state, &wm_params, wm);
> >  =

> >  	return 0;
> > @@ -5366,7 +5458,8 @@ static int skl_build_plane_wm_uv(struct intel_crt=
c_state *crtc_state,
> >  	if (ret)
> >  		return ret;
> >  =

> > -	skl_compute_wm_levels(crtc_state, &wm_params, wm->uv_wm);
> > +	skl_compute_wm_levels(crtc_state, &wm_params, wm, 1);
> > +	skl_compute_sagv_wm(crtc_state, &wm_params, wm, 1);
> >  =

> >  	return 0;
> >  }
> > @@ -5751,6 +5844,12 @@ skl_print_wm_changes(struct intel_atomic_state *=
state)
> >  				    enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].plane_res_l,
> >  				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_r=
es_l);
> >  =

> > +			drm_dbg_kms(&dev_priv->drm,
> > +				    "[PLANE:%d:%s] sagv wm0 lines %4d -> %4d\n",
> > +				    plane->base.base.id, plane->base.name,
> > +				    old_wm->sagv_wm0.plane_res_l,
> > +				    new_wm->sagv_wm0.plane_res_l);
> > +
> >  			drm_dbg_kms(&dev_priv->drm,
> >  				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
> >  				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
> > @@ -5766,6 +5865,12 @@ skl_print_wm_changes(struct intel_atomic_state *=
state)
> >  				    new_wm->wm[6].plane_res_b, new_wm->wm[7].plane_res_b,
> >  				    new_wm->trans_wm.plane_res_b);
> >  =

> > +			drm_dbg_kms(&dev_priv->drm,
> > +				    "[PLANE:%d:%s] sagv wm0 blocks %4d -> %4d\n",
> > +				    plane->base.base.id, plane->base.name,
> > +				    old_wm->sagv_wm0.plane_res_b,
> > +				    new_wm->sagv_wm0.plane_res_b);
> > +
> >  			drm_dbg_kms(&dev_priv->drm,
> >  				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
> >  				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
> > @@ -5780,6 +5885,12 @@ skl_print_wm_changes(struct intel_atomic_state *=
state)
> >  				    new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
> >  				    new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,
> >  				    new_wm->trans_wm.min_ddb_alloc);
> > +
> > +			drm_dbg_kms(&dev_priv->drm,
> > +				    "[PLANE:%d:%s] sagv wm0 min ddb %4d -> %4d\n",
> > +				    plane->base.base.id, plane->base.name,
> > +				    old_wm->sagv_wm0.min_ddb_alloc,
> > +				    new_wm->sagv_wm0.min_ddb_alloc);
> >  		}
> >  	}
> >  }
> > @@ -6072,6 +6183,9 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *=
crtc,
> >  			skl_wm_level_from_reg_val(val, &wm->wm[level]);
> >  		}
> >  =

> > +		memcpy(&wm->sagv_wm0, &wm->wm[0],
> > +		       sizeof(struct skl_wm_level));
> > +
> >  		if (plane_id !=3D PLANE_CURSOR)
> >  			val =3D I915_READ(PLANE_WM_TRANS(pipe, plane_id));
> >  		else
> > -- =

> > 2.24.1.485.gad05a3d8e5
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
