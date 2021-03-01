Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9358E327A95
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 10:20:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D462589FCE;
	Mon,  1 Mar 2021 09:19:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B59C189FCE
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 09:19:56 +0000 (UTC)
IronPort-SDR: EfLQJcyH4BbQkEoTnyQQHSGG4HYFQW00Q4CwA4EgVBVxrqnQ/GgPKpx/gfeANfURpoaQgqLKHP
 8mySpV2GJ78w==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="166283075"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="166283075"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 01:19:56 -0800
IronPort-SDR: M2O6b+3uJGNd2ZHrGfycNNSa3WuCL4Jfpm5272AeY2XMj9AIx9eNXv5rl1aqvM3o4Oj3dB/7Od
 VswjDFT4o7fg==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="595357900"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 01:19:55 -0800
Date: Mon, 1 Mar 2021 11:21:41 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210301092141.GB22174@intel.com>
References: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
 <20210226153204.1270-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210226153204.1270-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Introduce SAGV transtion
 watermark
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

On Fri, Feb 26, 2021 at 05:32:02PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Seems to me that if we calculate WM0 using the bumped up SAGV latency
> we need to calculate the transition watermark accordingly. Track it
> alongside the other watermarks.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/intel_pm.c               | 94 ++++++++++++-------
>  3 files changed, 65 insertions(+), 34 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 718e66f49332..e34e5a9da5c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9459,7 +9459,9 @@ static void verify_wm_state(struct intel_crtc *crtc,
>  		}
>  =

>  		if (!skl_wm_level_equals(&hw_plane_wm->trans_wm,
> -					 &sw_plane_wm->trans_wm)) {
> +					 &sw_plane_wm->trans_wm) &&
> +		    !skl_wm_level_equals(&hw_plane_wm->trans_wm,
> +					 &sw_plane_wm->sagv.trans_wm)) {
>  			drm_err(&dev_priv->drm,
>  				"mismatch in trans WM pipe %c cursor (expected e=3D%d b=3D%u l=3D%u,=
 got e=3D%d b=3D%u l=3D%u)\n",
>  				pipe_name(pipe),
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 6321cd3df81e..e2365f2d07cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -734,6 +734,7 @@ struct skl_plane_wm {
>  	struct skl_wm_level trans_wm;
>  	struct {
>  		struct skl_wm_level wm0;
> +		struct skl_wm_level trans_wm;
>  	} sagv;
>  	bool is_planar;
>  };
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index a1591d9189a0..9d9ba63fc395 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4758,6 +4758,18 @@ skl_plane_wm_level(const struct skl_pipe_wm *pipe_=
wm,
>  	return &wm->wm[level];
>  }
>  =

> +static const struct skl_wm_level *
> +skl_plane_trans_wm(const struct skl_pipe_wm *pipe_wm,
> +		   enum plane_id plane_id)
> +{
> +	const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> +
> +	if (pipe_wm->use_sagv_wm)
> +		return &wm->sagv.trans_wm;
> +
> +	return &wm->trans_wm;
> +}
> +
>  static int
>  skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  		       struct intel_crtc *crtc)
> @@ -4967,6 +4979,9 @@ skl_allocate_plane_ddb(struct intel_atomic_state *s=
tate,
>  =

>  		if (wm->sagv.wm0.plane_res_b >=3D total[plane_id])
>  			memset(&wm->sagv.wm0, 0, sizeof(wm->sagv.wm0));
> +
> +		if (wm->sagv.trans_wm.plane_res_b >=3D total[plane_id])
> +			memset(&wm->sagv.trans_wm, 0, sizeof(wm->sagv.trans_wm));
>  	}
>  =

>  	return 0;
> @@ -5325,12 +5340,11 @@ static void tgl_compute_sagv_wm(const struct inte=
l_crtc_state *crtc_state,
>  			     sagv_wm);
>  }
>  =

> -static void skl_compute_transition_wm(const struct intel_crtc_state *crt=
c_state,
> -				      const struct skl_wm_params *wp,
> -				      struct skl_plane_wm *wm)
> +static void skl_compute_transition_wm(struct drm_i915_private *dev_priv,
> +				      struct skl_wm_level *trans_wm,
> +				      const struct skl_wm_level *wm0,
> +				      const struct skl_wm_params *wp)
>  {
> -	struct drm_device *dev =3D crtc_state->uapi.crtc->dev;
> -	const struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	u16 trans_min, trans_amount, trans_y_tile_min;
>  	u16 wm0_sel_res_b, trans_offset_b, res_blocks;
>  =

> @@ -5368,7 +5382,7 @@ static void skl_compute_transition_wm(const struct =
intel_crtc_state *crtc_state,
>  	 * Result Blocks is Result Blocks minus 1 and it should work for the
>  	 * current platforms.
>  	 */
> -	wm0_sel_res_b =3D wm->wm[0].plane_res_b - 1;
> +	wm0_sel_res_b =3D wm0->plane_res_b - 1;
>  =

>  	if (wp->y_tiled) {
>  		trans_y_tile_min =3D
> @@ -5384,8 +5398,8 @@ static void skl_compute_transition_wm(const struct =
intel_crtc_state *crtc_state,
>  	 * computing the DDB we'll come back and disable it if that
>  	 * assumption turns out to be false.
>  	 */
> -	wm->trans_wm.plane_res_b =3D res_blocks + 1;
> -	wm->trans_wm.plane_en =3D true;
> +	trans_wm->plane_res_b =3D res_blocks + 1;
> +	trans_wm->plane_en =3D true;
>  }
>  =

>  static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
> @@ -5405,10 +5419,15 @@ static int skl_build_plane_wm_single(struct intel=
_crtc_state *crtc_state,
>  =

>  	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 12)
> +	skl_compute_transition_wm(dev_priv, &wm->trans_wm,
> +				  &wm->wm[0], &wm_params);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 12) {
>  		tgl_compute_sagv_wm(crtc_state, &wm_params, wm);
>  =

> -	skl_compute_transition_wm(crtc_state, &wm_params, wm);
> +		skl_compute_transition_wm(dev_priv, &wm->sagv.trans_wm,
> +					  &wm->sagv.wm0, &wm_params);
> +	}
>  =

>  	return 0;
>  }
> @@ -5584,7 +5603,7 @@ void skl_write_plane_wm(struct intel_plane *plane,
>  				   skl_plane_wm_level(pipe_wm, plane_id, level));
>  =

>  	skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
> -			   &wm->trans_wm);
> +			   skl_plane_trans_wm(pipe_wm, plane_id));
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 11) {
>  		skl_ddb_entry_write(dev_priv,
> @@ -5609,7 +5628,6 @@ void skl_write_cursor_wm(struct intel_plane *plane,
>  	enum plane_id plane_id =3D plane->id;
>  	enum pipe pipe =3D plane->pipe;
>  	const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> -	const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
>  	const struct skl_ddb_entry *ddb =3D
>  		&crtc_state->wm.skl.plane_ddb_y[plane_id];
>  =

> @@ -5617,7 +5635,8 @@ void skl_write_cursor_wm(struct intel_plane *plane,
>  		skl_write_wm_level(dev_priv, CUR_WM(pipe, level),
>  				   skl_plane_wm_level(pipe_wm, plane_id, level));
>  =

> -	skl_write_wm_level(dev_priv, CUR_WM_TRANS(pipe), &wm->trans_wm);
> +	skl_write_wm_level(dev_priv, CUR_WM_TRANS(pipe),
> +			   skl_plane_trans_wm(pipe_wm, plane_id));
>  =

>  	skl_ddb_entry_write(dev_priv, CUR_BUF_CFG(pipe), ddb);
>  }
> @@ -5648,7 +5667,8 @@ static bool skl_plane_wm_equals(struct drm_i915_pri=
vate *dev_priv,
>  	}
>  =

>  	return skl_wm_level_equals(&wm1->trans_wm, &wm2->trans_wm) &&
> -		skl_wm_level_equals(&wm1->sagv.wm0, &wm2->sagv.wm0);
> +		skl_wm_level_equals(&wm1->sagv.wm0, &wm2->sagv.wm0) &&
> +		skl_wm_level_equals(&wm1->sagv.trans_wm, &wm2->sagv.trans_wm);
>  }
>  =

>  static bool skl_ddb_entries_overlap(const struct skl_ddb_entry *a,
> @@ -5878,8 +5898,8 @@ skl_print_wm_changes(struct intel_atomic_state *sta=
te)
>  				continue;
>  =

>  			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6=
,%cwm7,%ctwm,%cswm"
> -				    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm=
\n",
> +				    "[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6=
,%cwm7,%ctwm,%cswm,%cstwm"
> +				    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm=
,%cstwm\n",
>  				    plane->base.base.id, plane->base.name,
>  				    enast(old_wm->wm[0].plane_en), enast(old_wm->wm[1].plane_en),
>  				    enast(old_wm->wm[2].plane_en), enast(old_wm->wm[3].plane_en),
> @@ -5887,16 +5907,18 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>  				    enast(old_wm->wm[6].plane_en), enast(old_wm->wm[7].plane_en),
>  				    enast(old_wm->trans_wm.plane_en),
>  				    enast(old_wm->sagv.wm0.plane_en),
> +				    enast(old_wm->sagv.trans_wm.plane_en),
>  				    enast(new_wm->wm[0].plane_en), enast(new_wm->wm[1].plane_en),
>  				    enast(new_wm->wm[2].plane_en), enast(new_wm->wm[3].plane_en),
>  				    enast(new_wm->wm[4].plane_en), enast(new_wm->wm[5].plane_en),
>  				    enast(new_wm->wm[6].plane_en), enast(new_wm->wm[7].plane_en),
>  				    enast(new_wm->trans_wm.plane_en),
> -				    enast(new_wm->sagv.wm0.plane_en));
> +				    enast(new_wm->sagv.wm0.plane_en),
> +				    enast(new_wm->sagv.trans_wm.plane_en));
>  =

>  			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d=
,%c%3d,%c%3d,%c%3d"
> -				      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%=
3d\n",
> +				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d=
,%c%3d,%c%3d,%c%3d,%c%4d"
> +				      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%=
3d,%c%4d\n",
>  				    plane->base.base.id, plane->base.name,
>  				    enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].plane_res_l,
>  				    enast(old_wm->wm[1].ignore_lines), old_wm->wm[1].plane_res_l,
> @@ -5908,7 +5930,7 @@ skl_print_wm_changes(struct intel_atomic_state *sta=
te)
>  				    enast(old_wm->wm[7].ignore_lines), old_wm->wm[7].plane_res_l,
>  				    enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.plane_res=
_l,
>  				    enast(old_wm->sagv.wm0.ignore_lines), old_wm->sagv.wm0.plane_res=
_l,
> -
> +				    enast(old_wm->sagv.trans_wm.ignore_lines), old_wm->sagv.trans_wm=
.plane_res_l,
>  				    enast(new_wm->wm[0].ignore_lines), new_wm->wm[0].plane_res_l,
>  				    enast(new_wm->wm[1].ignore_lines), new_wm->wm[1].plane_res_l,
>  				    enast(new_wm->wm[2].ignore_lines), new_wm->wm[2].plane_res_l,
> @@ -5918,11 +5940,12 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>  				    enast(new_wm->wm[6].ignore_lines), new_wm->wm[6].plane_res_l,
>  				    enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].plane_res_l,
>  				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res=
_l,
> -				    enast(new_wm->sagv.wm0.ignore_lines), new_wm->sagv.wm0.plane_res=
_l);
> +				    enast(new_wm->sagv.wm0.ignore_lines), new_wm->sagv.wm0.plane_res=
_l,
> +				    enast(new_wm->sagv.trans_wm.ignore_lines), new_wm->sagv.trans_wm=
.plane_res_l);
>  =

>  			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
> -				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
> +				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%=
5d"
> +				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
>  				    plane->base.base.id, plane->base.name,
>  				    old_wm->wm[0].plane_res_b, old_wm->wm[1].plane_res_b,
>  				    old_wm->wm[2].plane_res_b, old_wm->wm[3].plane_res_b,
> @@ -5930,16 +5953,18 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>  				    old_wm->wm[6].plane_res_b, old_wm->wm[7].plane_res_b,
>  				    old_wm->trans_wm.plane_res_b,
>  				    old_wm->sagv.wm0.plane_res_b,
> +				    old_wm->sagv.trans_wm.plane_res_b,
>  				    new_wm->wm[0].plane_res_b, new_wm->wm[1].plane_res_b,
>  				    new_wm->wm[2].plane_res_b, new_wm->wm[3].plane_res_b,
>  				    new_wm->wm[4].plane_res_b, new_wm->wm[5].plane_res_b,
>  				    new_wm->wm[6].plane_res_b, new_wm->wm[7].plane_res_b,
>  				    new_wm->trans_wm.plane_res_b,
> -				    new_wm->sagv.wm0.plane_res_b);
> +				    new_wm->sagv.wm0.plane_res_b,
> +				    new_wm->sagv.trans_wm.plane_res_b);
>  =

>  			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
> -				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
> +				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%=
5d"
> +				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
>  				    plane->base.base.id, plane->base.name,
>  				    old_wm->wm[0].min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
>  				    old_wm->wm[2].min_ddb_alloc, old_wm->wm[3].min_ddb_alloc,
> @@ -5947,12 +5972,14 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>  				    old_wm->wm[6].min_ddb_alloc, old_wm->wm[7].min_ddb_alloc,
>  				    old_wm->trans_wm.min_ddb_alloc,
>  				    old_wm->sagv.wm0.min_ddb_alloc,
> +				    old_wm->sagv.trans_wm.min_ddb_alloc,
>  				    new_wm->wm[0].min_ddb_alloc, new_wm->wm[1].min_ddb_alloc,
>  				    new_wm->wm[2].min_ddb_alloc, new_wm->wm[3].min_ddb_alloc,
>  				    new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
>  				    new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,
>  				    new_wm->trans_wm.min_ddb_alloc,
> -				    new_wm->sagv.wm0.min_ddb_alloc);
> +				    new_wm->sagv.wm0.min_ddb_alloc,
> +				    new_wm->sagv.trans_wm.min_ddb_alloc);
>  		}
>  	}
>  }
> @@ -5961,8 +5988,6 @@ static bool skl_plane_selected_wm_equals(struct int=
el_plane *plane,
>  					 const struct skl_pipe_wm *old_pipe_wm,
>  					 const struct skl_pipe_wm *new_pipe_wm)
>  {
> -	const struct skl_plane_wm *old_wm =3D &old_pipe_wm->planes[plane->id];
> -	const struct skl_plane_wm *new_wm =3D &new_pipe_wm->planes[plane->id];
>  	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>  	int level, max_level =3D ilk_wm_max_level(i915);
>  =

> @@ -5977,7 +6002,8 @@ static bool skl_plane_selected_wm_equals(struct int=
el_plane *plane,
>  			return false;
>  	}
>  =

> -	return skl_wm_level_equals(&old_wm->trans_wm, &new_wm->trans_wm);
> +	return skl_wm_level_equals(skl_plane_trans_wm(old_pipe_wm, plane->id),
> +				   skl_plane_trans_wm(new_pipe_wm, plane->id));
>  }
>  =

>  /*
> @@ -6188,15 +6214,17 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *=
crtc,
>  			skl_wm_level_from_reg_val(val, &wm->wm[level]);
>  		}
>  =

> -		if (INTEL_GEN(dev_priv) >=3D 12)
> -			wm->sagv.wm0 =3D wm->wm[0];
> -
>  		if (plane_id !=3D PLANE_CURSOR)
>  			val =3D intel_uncore_read(&dev_priv->uncore, PLANE_WM_TRANS(pipe, pla=
ne_id));
>  		else
>  			val =3D intel_uncore_read(&dev_priv->uncore, CUR_WM_TRANS(pipe));
>  =

>  		skl_wm_level_from_reg_val(val, &wm->trans_wm);
> +
> +		if (INTEL_GEN(dev_priv) >=3D 12) {
> +			wm->sagv.wm0 =3D wm->wm[0];
> +			wm->sagv.trans_wm =3D wm->trans_wm;
> +		}
>  	}
>  }
>  =

> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
