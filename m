Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DE41CF3EE
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 14:03:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0542A6E0E8;
	Tue, 12 May 2020 12:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61D866E906
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 12:03:30 +0000 (UTC)
IronPort-SDR: zIAIAwoWPaxMJQepdbZl9zFrPigGOLV8ht9OSkg9BcEC2D8OEaNtIkGmveUCAjwm6ei96E3a5P
 epTZL0vziIJQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 05:03:29 -0700
IronPort-SDR: Mv4Vexo6ghKsKD6P5X8XzzjayEkOu2Wx6e66E4Ja+o7FFUS/JQlmNXVXj85O/dQe9naLzS1dxj
 oB8auj+AxyMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,383,1583222400"; d="scan'208";a="265481173"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 12 May 2020 05:03:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 May 2020 15:03:26 +0300
Date: Tue, 12 May 2020 15:03:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200512120326.GO6112@intel.com>
References: <20200507144503.15506-1-stanislav.lisovskiy@intel.com>
 <20200507144503.15506-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507144503.15506-5-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v28 4/6] drm/i915: Add TGL+ SAGV support
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

On Thu, May 07, 2020 at 05:45:01PM +0300, Stanislav Lisovskiy wrote:
> Starting from TGL we need to have a separate wm0
> values for SAGV and non-SAGV which affects
> how calculations are done.
> =

> v2: Remove long lines
> v3: Removed COLOR_PLANE enum references
> v4, v5, v6: Fixed rebase conflict
> v7: - Removed skl_plane_wm_level accessor from skl_allocate_pipe_ddb(Vill=
e)
>     - Removed sagv_uv_wm0(Ville)
>     - can_sagv->use_sagv_wm(Ville)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  drivers/gpu/drm/i915/intel_pm.c               | 118 +++++++++++++++++-
>  3 files changed, 121 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index fd6d63b03489..be5741cb7595 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13961,7 +13961,9 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  		/* Watermarks */
>  		for (level =3D 0; level <=3D max_level; level++) {
>  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> -						&sw_plane_wm->wm[level]))
> +						&sw_plane_wm->wm[level]) ||
> +			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
> +							       &sw_plane_wm->sagv_wm0)))
>  				continue;
>  =

>  			drm_err(&dev_priv->drm,
> @@ -14016,7 +14018,9 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  		/* Watermarks */
>  		for (level =3D 0; level <=3D max_level; level++) {
>  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> -						&sw_plane_wm->wm[level]))
> +						&sw_plane_wm->wm[level]) ||
> +			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
> +							       &sw_plane_wm->sagv_wm0)))
>  				continue;
>  =

>  			drm_err(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 9488449e4b94..8cede29c9562 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -688,11 +688,13 @@ struct skl_plane_wm {
>  	struct skl_wm_level wm[8];
>  	struct skl_wm_level uv_wm[8];
>  	struct skl_wm_level trans_wm;
> +	struct skl_wm_level sagv_wm0;
>  	bool is_planar;
>  };
>  =

>  struct skl_pipe_wm {
>  	struct skl_plane_wm planes[I915_MAX_PLANES];
> +	bool use_sagv_wm;
>  };
>  =

>  enum vlv_wm_level {
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index db188efee21e..934a686342ad 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3863,25 +3863,35 @@ bool intel_can_enable_sagv(struct drm_i915_privat=
e *dev_priv,
>  	return bw_state->pipe_sagv_reject =3D=3D 0;
>  }
>  =

> +static bool
> +tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state);

Just put the function here instead of adding fwd decalrations.

> +
>  static int intel_compute_sagv_mask(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	int ret;
>  	struct intel_crtc *crtc;
> -	const struct intel_crtc_state *new_crtc_state;
> +	struct intel_crtc_state *new_crtc_state;
>  	struct intel_bw_state *new_bw_state =3D NULL;
>  	const struct intel_bw_state *old_bw_state =3D NULL;
>  	int i;
>  =

>  	for_each_new_intel_crtc_in_state(state, crtc,
>  					 new_crtc_state, i) {
> +		bool can_sagv;
> +
>  		new_bw_state =3D intel_atomic_get_bw_state(state);
>  		if (IS_ERR(new_bw_state))
>  			return PTR_ERR(new_bw_state);
>  =

>  		old_bw_state =3D intel_atomic_get_old_bw_state(state);
>  =

> -		if (skl_crtc_can_enable_sagv(new_crtc_state))
> +		if (INTEL_GEN(dev_priv) >=3D 12)
> +			can_sagv =3D tgl_crtc_can_enable_sagv(new_crtc_state);
> +		else
> +			can_sagv =3D skl_crtc_can_enable_sagv(new_crtc_state);
> +
> +		if (can_sagv)
>  			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
>  		else
>  			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> @@ -3899,6 +3909,24 @@ static int intel_compute_sagv_mask(struct intel_at=
omic_state *state)
>  			return ret;
>  	}
>  =

> +	for_each_new_intel_crtc_in_state(state, crtc,
> +					 new_crtc_state, i) {
> +		struct skl_pipe_wm *pipe_wm =3D &new_crtc_state->wm.skl.optimal;
> +
> +		/*
> +		 * Due to drm limitation at commit state, when
> +		 * changes are written the whole atomic state is
> +		 * zeroed away =3D> which prevents from using it,
> +		 * so just sticking it into pipe wm state for
> +		 * keeping it simple - anyway this is related to wm.
> +		 * Proper way in ideal universe would be of course not
> +		 * to lose parent atomic state object from child crtc_state,
> +		 * and stick to OOP programming principles, which had been
> +		 * scientifically proven to work.
> +		 */

More ramblings. Just drop this comment too imo.

> +		pipe_wm->use_sagv_wm =3D intel_can_enable_sagv(dev_priv, new_bw_state);

I think this should be =

gen >=3D 12 && intel_can_enable_sagv();

> +	}
> +
>  	if (intel_can_enable_sagv(dev_priv, new_bw_state) !=3D intel_can_enable=
_sagv(dev_priv, old_bw_state)) {
>  		ret =3D intel_atomic_serialize_global_state(&new_bw_state->base);
>  		if (ret)
> @@ -4642,12 +4670,39 @@ skl_plane_wm_level(const struct intel_crtc_state =
*crtc_state,
>  		   int level,
>  		   int color_plane)
>  {
> -	const struct skl_plane_wm *wm =3D
> -		&crtc_state->wm.skl.optimal.planes[plane_id];
> +	const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> +	const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> +
> +	if (!level) {
> +		if (pipe_wm->use_sagv_wm)
> +			return &wm->sagv_wm0;
> +	}

if (level =3D=3D 0 && use_sagv_wm)
	return sagv_wm0;

>  =

>  	return color_plane =3D=3D 0 ? &wm->wm[level] : &wm->uv_wm[level];
>  }
>  =

> +static bool
> +tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	enum plane_id plane_id;
> +
> +	if (!crtc_state->hw.active)
> +		return true;
> +
> +	for_each_plane_id_on_crtc(crtc, plane_id) {
> +		const struct skl_ddb_entry *plane_alloc =3D
> +			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +		const struct skl_plane_wm *wm =3D
> +			&crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +		if (skl_ddb_entry_size(plane_alloc) < wm->sagv_wm0.min_ddb_alloc)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
>  static int
>  skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
>  {
> @@ -4684,7 +4739,6 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state)
>  							 plane_data_rate,
>  							 uv_plane_data_rate);
>  =

> -
>  	skl_ddb_get_pipe_allocation_limits(dev_priv, crtc_state, total_data_rat=
e,
>  					   alloc, &num_active);
>  	alloc_size =3D skl_ddb_entry_size(alloc);
> @@ -5219,6 +5273,37 @@ skl_compute_wm_levels(const struct intel_crtc_stat=
e *crtc_state,
>  	}
>  }
>  =

> +static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_stat=
e,
> +				const struct skl_wm_params *wm_params,
> +				struct skl_plane_wm *plane_wm)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	struct skl_wm_level *sagv_wm =3D &plane_wm->sagv_wm0;
> +	struct skl_wm_level *levels =3D plane_wm->wm;
> +
> +	/*
> +	 * For Gen12 if it is an L0 we need to also
> +	 * consider sagv_block_time when calculating
> +	 * L0 watermark - we will need that when making
> +	 * a decision whether enable SAGV or not.
> +	 * For older gens we agreed to copy L0 value for
> +	 * compatibility.
> +	 */
> +	if ((INTEL_GEN(dev_priv) >=3D 12)) {

Drop this if-else and only call tgl_compute_sagv_wm() on tgl+.
The comment can then go as well I think.

> +		u32 latency =3D dev_priv->wm.skl_latency[0];
> +
> +		latency +=3D dev_priv->sagv_block_time_us;
> +		skl_compute_plane_wm(crtc_state, 0, latency,
> +				     wm_params, &levels[0],
> +				     sagv_wm);
> +		DRM_DEBUG_KMS("%d L0 blocks required for SAGV vs %d for non-SAGV\n",
> +			      sagv_wm->min_ddb_alloc, levels[0].min_ddb_alloc);

Leftover debugs. Pls remove.

> +	} else {
> +		/* Since all members are POD */
> +		*sagv_wm =3D levels[0];
> +	}
> +}
> +
>  static void skl_compute_transition_wm(const struct intel_crtc_state *crt=
c_state,
>  				      const struct skl_wm_params *wp,
>  				      struct skl_plane_wm *wm)
> @@ -5296,6 +5381,8 @@ static int skl_build_plane_wm_single(struct intel_c=
rtc_state *crtc_state,
>  		return ret;
>  =

>  	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
> +	if (color_plane =3D=3D 0)

We do want this for both the Y plane and UV plane.

> +		tgl_compute_sagv_wm(crtc_state, &wm_params, wm);
>  	skl_compute_transition_wm(crtc_state, &wm_params, wm);
>  =

>  	return 0;
> @@ -5702,6 +5789,12 @@ skl_print_wm_changes(struct intel_atomic_state *st=
ate)
>  				    enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].plane_res_l,
>  				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res=
_l);
>  =

> +			drm_dbg_kms(&dev_priv->drm,
> +				    "[PLANE:%d:%s] sagv wm0 lines %4d -> %4d\n",
> +				    plane->base.base.id, plane->base.name,
> +				    old_wm->sagv_wm0.plane_res_l,
> +				    new_wm->sagv_wm0.plane_res_l);
> +

IIRC I already suggested just slapping these onto the existing debug
prints instead of bloating the debug output with extra lines.

Ie instead of =

wms ... -> ...
sagv wm ... -> ...

we just get
wms ...,old_sagv_wm0 -> ...,new_sagv_wm0

just like we already do for eg. the transition wm.

>  			drm_dbg_kms(&dev_priv->drm,
>  				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
>  				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
> @@ -5717,6 +5810,12 @@ skl_print_wm_changes(struct intel_atomic_state *st=
ate)
>  				    new_wm->wm[6].plane_res_b, new_wm->wm[7].plane_res_b,
>  				    new_wm->trans_wm.plane_res_b);
>  =

> +			drm_dbg_kms(&dev_priv->drm,
> +				    "[PLANE:%d:%s] sagv wm0 blocks %4d -> %4d\n",
> +				    plane->base.base.id, plane->base.name,
> +				    old_wm->sagv_wm0.plane_res_b,
> +				    new_wm->sagv_wm0.plane_res_b);
> +
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
>  				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
> @@ -5731,6 +5830,12 @@ skl_print_wm_changes(struct intel_atomic_state *st=
ate)
>  				    new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
>  				    new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,
>  				    new_wm->trans_wm.min_ddb_alloc);
> +
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "[PLANE:%d:%s] sagv wm0 min ddb %4d -> %4d\n",
> +				    plane->base.base.id, plane->base.name,
> +				    old_wm->sagv_wm0.min_ddb_alloc,
> +				    new_wm->sagv_wm0.min_ddb_alloc);
>  		}
>  	}
>  }
> @@ -6023,6 +6128,9 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *cr=
tc,
>  			skl_wm_level_from_reg_val(val, &wm->wm[level]);
>  		}
>  =

> +		memcpy(&wm->sagv_wm0, &wm->wm[0],
> +		       sizeof(struct skl_wm_level));

A simple assignment should suffice?

> +
>  		if (plane_id !=3D PLANE_CURSOR)
>  			val =3D I915_READ(PLANE_WM_TRANS(pipe, plane_id));
>  		else
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
