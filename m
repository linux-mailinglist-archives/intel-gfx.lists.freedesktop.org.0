Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E49B21D15FF
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 15:41:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 520126EA2F;
	Wed, 13 May 2020 13:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 424466EA2F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 13:41:33 +0000 (UTC)
IronPort-SDR: ebNyRkgCaXrDsmfBdWlmxpRS6sPsR709/Q3HuguwMF7JZ90/mwLR8WV3c4e3YYizVOOeMbLAMb
 MaDxdEbV/RVg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 06:41:32 -0700
IronPort-SDR: WAIBw0fcHqgLxwabqYQMdSQtq5kDfDFYJxx9ioEkPf6psBNTSTVSKFfTNCLV1Xuvg4US/8jhUP
 uPMH1Es5L2BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="253197911"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 13 May 2020 06:41:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 May 2020 16:41:29 +0300
Date: Wed, 13 May 2020 16:41:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200513134129.GF6112@intel.com>
References: <20200513093816.11466-1-stanislav.lisovskiy@intel.com>
 <20200513093816.11466-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513093816.11466-5-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v29 4/6] drm/i915: Add TGL+ SAGV support
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

On Wed, May 13, 2020 at 12:38:14PM +0300, Stanislav Lisovskiy wrote:
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

> v8: - Moved tgl_crtc_can_enable_sagv function up(Ville)
>     - Changed comment regarding pipe_wm usage(Ville)
>     - Call intel_can_enable_sagv and tgl_compute_sagv_wm only
>       for Gen12(Ville)
>     - Some sagv debugs removed(Ville)
>     - skl_print_wm_changes improvements(Ville)
>     - Do assignment instead of memcpy in
>       skl_pipe_wm_get_hw_state(Ville)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  drivers/gpu/drm/i915/intel_pm.c               | 112 +++++++++++++++---
>  3 files changed, 103 insertions(+), 19 deletions(-)
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
> index de0f8cede59c..1f253db3b7c0 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3853,9 +3853,39 @@ static bool skl_crtc_can_enable_sagv(const struct =
intel_crtc_state *crtc_state)
>  	return true;
>  }
>  =

> +static bool tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc=
_state)
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
>  static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *cr=
tc_state)
>  {
> -	return skl_crtc_can_enable_sagv(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	bool can_sagv;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		can_sagv =3D tgl_crtc_can_enable_sagv(crtc_state);
> +	else
> +		can_sagv =3D skl_crtc_can_enable_sagv(crtc_state);
> +
> +	return can_sagv;

nit: pointless variable. Just

if (gen>=3D12)
	return tgl...();
else
	return skl...()

would do.

>  }
>  =

>  bool intel_can_enable_sagv(struct drm_i915_private *dev_priv,
> @@ -3873,7 +3903,7 @@ static int intel_compute_sagv_mask(struct intel_ato=
mic_state *state)
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	int ret;
>  	struct intel_crtc *crtc;
> -	const struct intel_crtc_state *new_crtc_state;
> +	struct intel_crtc_state *new_crtc_state;
>  	struct intel_bw_state *new_bw_state =3D NULL;
>  	const struct intel_bw_state *old_bw_state =3D NULL;
>  	int i;
> @@ -3904,6 +3934,20 @@ static int intel_compute_sagv_mask(struct intel_at=
omic_state *state)
>  			return ret;
>  	}
>  =

> +	for_each_new_intel_crtc_in_state(state, crtc,
> +					 new_crtc_state, i) {
> +		struct skl_pipe_wm *pipe_wm =3D &new_crtc_state->wm.skl.optimal;
> +
> +		/*
> +		 * We store use_sagv_wm in the crtc state rather than relying on
> +		 * that bw state since we have no convenient way to get at the
> +		 * latter from the plane commit hooks (especially in the legacy
> +		 * cursor case)
> +		 */
> +		pipe_wm->use_sagv_wm =3D INTEL_GEN(dev_priv) >=3D 12 &&
> +				       intel_can_enable_sagv(dev_priv, new_bw_state);
> +	}
> +
>  	if (intel_can_enable_sagv(dev_priv, new_bw_state) !=3D intel_can_enable=
_sagv(dev_priv, old_bw_state)) {
>  		ret =3D intel_atomic_serialize_global_state(&new_bw_state->base);
>  		if (ret)
> @@ -4646,8 +4690,11 @@ skl_plane_wm_level(const struct intel_crtc_state *=
crtc_state,
>  		   enum plane_id plane_id,
>  		   int level)
>  {
> -	const struct skl_plane_wm *wm =3D
> -		&crtc_state->wm.skl.optimal.planes[plane_id];
> +	const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> +	const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> +
> +	if (level =3D=3D 0 && pipe_wm->use_sagv_wm)
> +		return &wm->sagv_wm0;
>  =

>  	return &wm->wm[level];
>  }
> @@ -4688,7 +4735,6 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state)
>  							 plane_data_rate,
>  							 uv_plane_data_rate);
>  =

> -
>  	skl_ddb_get_pipe_allocation_limits(dev_priv, crtc_state, total_data_rat=
e,
>  					   alloc, &num_active);
>  	alloc_size =3D skl_ddb_entry_size(alloc);
> @@ -5223,6 +5269,22 @@ skl_compute_wm_levels(const struct intel_crtc_stat=
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

Spurious empty line.

> +	u32 latency =3D dev_priv->wm.skl_latency[0];

A few more nits here:

I think we went with 'unsigned int 'in most places?

> +
> +	latency +=3D dev_priv->sagv_block_time_us;

Single statement

unsigned int latency =3D a + b;

would be less confusing imo.


> +	skl_compute_plane_wm(crtc_state, 0, latency,
> +			     wm_params, &levels[0],

Hmm. Wonder if we should pass this or sagv_wm itself
as result_prev. I guess in theory we should never hit
the relevant checks since sagv_wm should get a higher
watermark than wm0 anyway. So probably fine this way.

> +			     sagv_wm);
> +}
> +
>  static void skl_compute_transition_wm(const struct intel_crtc_state *crt=
c_state,
>  				      const struct skl_wm_params *wp,
>  				      struct skl_plane_wm *wm)
> @@ -5290,6 +5352,8 @@ static int skl_build_plane_wm_single(struct intel_c=
rtc_state *crtc_state,
>  				     const struct intel_plane_state *plane_state,
>  				     enum plane_id plane_id, int color_plane)
>  {
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.optimal.planes[plane_id=
];
>  	struct skl_wm_params wm_params;
>  	int ret;
> @@ -5300,6 +5364,10 @@ static int skl_build_plane_wm_single(struct intel_=
crtc_state *crtc_state,
>  		return ret;
>  =

>  	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
> +
> +	if (INTEL_GEN(dev_priv) >=3D 12)
> +		tgl_compute_sagv_wm(crtc_state, &wm_params, wm);
> +
>  	skl_compute_transition_wm(crtc_state, &wm_params, wm);
>  =

>  	return 0;
> @@ -5666,23 +5734,25 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>  				continue;
>  =

>  			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6=
,%cwm7,%ctwm"
> -				    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm\n",
> +				    "[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6=
,%cwm7,%ctwm,%cswm"
> +				    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm=
\n",
>  				    plane->base.base.id, plane->base.name,
>  				    enast(old_wm->wm[0].plane_en), enast(old_wm->wm[1].plane_en),
>  				    enast(old_wm->wm[2].plane_en), enast(old_wm->wm[3].plane_en),
>  				    enast(old_wm->wm[4].plane_en), enast(old_wm->wm[5].plane_en),
>  				    enast(old_wm->wm[6].plane_en), enast(old_wm->wm[7].plane_en),
>  				    enast(old_wm->trans_wm.plane_en),
> +				    enast(old_wm->sagv_wm0.plane_en),
>  				    enast(new_wm->wm[0].plane_en), enast(new_wm->wm[1].plane_en),
>  				    enast(new_wm->wm[2].plane_en), enast(new_wm->wm[3].plane_en),
>  				    enast(new_wm->wm[4].plane_en), enast(new_wm->wm[5].plane_en),
>  				    enast(new_wm->wm[6].plane_en), enast(new_wm->wm[7].plane_en),
> -				    enast(new_wm->trans_wm.plane_en));
> +				    enast(new_wm->trans_wm.plane_en),
> +				    enast(new_wm->sagv_wm0.plane_en));
>  =

>  			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d=
,%c%3d,%c%3d"
> -				      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d\n",
> +				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d=
,%c%3d,%c%3d,%c%3d"
> +				      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%=
3d\n",
>  				    plane->base.base.id, plane->base.name,
>  				    enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].plane_res_l,
>  				    enast(old_wm->wm[1].ignore_lines), old_wm->wm[1].plane_res_l,
> @@ -5693,6 +5763,7 @@ skl_print_wm_changes(struct intel_atomic_state *sta=
te)
>  				    enast(old_wm->wm[6].ignore_lines), old_wm->wm[6].plane_res_l,
>  				    enast(old_wm->wm[7].ignore_lines), old_wm->wm[7].plane_res_l,
>  				    enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.plane_res=
_l,
> +				    enast(old_wm->sagv_wm0.ignore_lines), old_wm->sagv_wm0.plane_res=
_l,
>  =

>  				    enast(new_wm->wm[0].ignore_lines), new_wm->wm[0].plane_res_l,
>  				    enast(new_wm->wm[1].ignore_lines), new_wm->wm[1].plane_res_l,
> @@ -5702,37 +5773,42 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>  				    enast(new_wm->wm[5].ignore_lines), new_wm->wm[5].plane_res_l,
>  				    enast(new_wm->wm[6].ignore_lines), new_wm->wm[6].plane_res_l,
>  				    enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].plane_res_l,
> -				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res=
_l);
> +				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res=
_l,
> +				    enast(new_wm->sagv_wm0.ignore_lines), new_wm->sagv_wm0.plane_res=
_l);
>  =

>  			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
> -				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
> +				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
> +				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
>  				    plane->base.base.id, plane->base.name,
>  				    old_wm->wm[0].plane_res_b, old_wm->wm[1].plane_res_b,
>  				    old_wm->wm[2].plane_res_b, old_wm->wm[3].plane_res_b,
>  				    old_wm->wm[4].plane_res_b, old_wm->wm[5].plane_res_b,
>  				    old_wm->wm[6].plane_res_b, old_wm->wm[7].plane_res_b,
>  				    old_wm->trans_wm.plane_res_b,
> +				    old_wm->sagv_wm0.plane_res_b,
>  				    new_wm->wm[0].plane_res_b, new_wm->wm[1].plane_res_b,
>  				    new_wm->wm[2].plane_res_b, new_wm->wm[3].plane_res_b,
>  				    new_wm->wm[4].plane_res_b, new_wm->wm[5].plane_res_b,
>  				    new_wm->wm[6].plane_res_b, new_wm->wm[7].plane_res_b,
> -				    new_wm->trans_wm.plane_res_b);
> +				    new_wm->trans_wm.plane_res_b,
> +				    new_wm->sagv_wm0.plane_res_b);
>  =

>  			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
> -				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
> +				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
> +				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d\n",
>  				    plane->base.base.id, plane->base.name,
>  				    old_wm->wm[0].min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
>  				    old_wm->wm[2].min_ddb_alloc, old_wm->wm[3].min_ddb_alloc,
>  				    old_wm->wm[4].min_ddb_alloc, old_wm->wm[5].min_ddb_alloc,
>  				    old_wm->wm[6].min_ddb_alloc, old_wm->wm[7].min_ddb_alloc,
>  				    old_wm->trans_wm.min_ddb_alloc,
> +				    old_wm->sagv_wm0.min_ddb_alloc,
>  				    new_wm->wm[0].min_ddb_alloc, new_wm->wm[1].min_ddb_alloc,
>  				    new_wm->wm[2].min_ddb_alloc, new_wm->wm[3].min_ddb_alloc,
>  				    new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
>  				    new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,
> -				    new_wm->trans_wm.min_ddb_alloc);
> +				    new_wm->trans_wm.min_ddb_alloc,
> +				    new_wm->sagv_wm0.min_ddb_alloc);
>  		}
>  	}
>  }
> @@ -6025,6 +6101,8 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *cr=
tc,
>  			skl_wm_level_from_reg_val(val, &wm->wm[level]);
>  		}
>  =

> +		wm->sagv_wm0 =3D wm->wm[0];

This should probably have a gen>=3D12 check too since we only compute
it for tgl+ now.

If nothing else it should work as a good reminder that we need to
adjust this code again in the near future for the next gen.

Apart from that, and the small nits above, the rest looks nice.

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
