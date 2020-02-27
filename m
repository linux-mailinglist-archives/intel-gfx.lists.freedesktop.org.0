Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F0D172285
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 16:52:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 130FD6E91C;
	Thu, 27 Feb 2020 15:52:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D63886E91C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 15:52:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 07:51:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="285366678"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 27 Feb 2020 07:51:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Feb 2020 17:51:52 +0200
Date: Thu, 27 Feb 2020 17:51:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200227155152.GP13686@intel.com>
References: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
 <20200224153240.9047-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224153240.9047-3-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v18 2/8] drm/i915: Introduce
 skl_plane_wm_level accessor.
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

On Mon, Feb 24, 2020 at 05:32:34PM +0200, Stanislav Lisovskiy wrote:
> For future Gen12 SAGV implementation we need to
> seemlessly alter wm levels calculated, depending
> on whether we are allowed to enable SAGV or not.
> =

> So this accessor will give additional flexibility
> to do that.
> =

> Currently this accessor is still simply working
> as "pass-through" function. This will be changed
> in next coming patches from this series.
> =

> v2: - plane_id -> plane->id(Ville Syrj=E4l=E4)

When did I say that? Can't find a previous review of this patch.
Anywyas, that change seems to cause a lot of needless noise into the
patch, and atm I can't see why we'd require it.

>     - Moved wm_level var to have more local scope
>       (Ville Syrj=E4l=E4)
>     - Renamed yuv to color_plane(Ville Syrj=E4l=E4) in
>       skl_plane_wm_level
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 120 +++++++++++++++++++++-----------
>  1 file changed, 81 insertions(+), 39 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index d6933e382657..e1d167429489 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4548,6 +4548,18 @@ icl_get_total_relative_data_rate(struct intel_crtc=
_state *crtc_state,
>  	return total_data_rate;
>  }
>  =

> +static const struct skl_wm_level *
> +skl_plane_wm_level(struct intel_plane *plane,
> +		   const struct intel_crtc_state *crtc_state,

nit: I'd put the crtc_state as the first parameter as that's the thing
we're operating on. The other stuff just specifies which piece we want
to dig out.

> +		   int level,
> +		   int color_plane)
> +{
> +	const struct skl_plane_wm *wm =3D
> +		&crtc_state->wm.skl.optimal.planes[plane->id];
> +
> +	return color_plane ? &wm->uv_wm[level] : &wm->wm[level];
> +}
> +
>  static int
>  skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
>  {
> @@ -4560,7 +4572,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state)
>  	u16 total[I915_MAX_PLANES] =3D {};
>  	u16 uv_total[I915_MAX_PLANES] =3D {};
>  	u64 total_data_rate;
> -	enum plane_id plane_id;
> +	struct intel_plane *plane;
>  	int num_active;
>  	u64 plane_data_rate[I915_MAX_PLANES] =3D {};
>  	u64 uv_plane_data_rate[I915_MAX_PLANES] =3D {};
> @@ -4612,22 +4624,28 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>  	 */
>  	for (level =3D ilk_wm_max_level(dev_priv); level >=3D 0; level--) {
>  		blocks =3D 0;
> -		for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> -			const struct skl_plane_wm *wm =3D
> -				&crtc_state->wm.skl.optimal.planes[plane_id];
>  =

> -			if (plane_id =3D=3D PLANE_CURSOR) {
> -				if (wm->wm[level].min_ddb_alloc > total[PLANE_CURSOR]) {
> +		for_each_intel_plane_on_crtc(&dev_priv->drm, intel_crtc, plane) {
> +			const struct skl_wm_level *wm_level;
> +			const struct skl_wm_level *wm_uv_level;
> +
> +			wm_level =3D skl_plane_wm_level(plane, crtc_state,
> +						      level, false);
> +			wm_uv_level =3D skl_plane_wm_level(plane, crtc_state,
> +							 level, true);

false/true aren't particularly sensible color plane indices.

> +
> +			if (plane->id =3D=3D PLANE_CURSOR) {
> +				if (wm_level->min_ddb_alloc > total[PLANE_CURSOR]) {
>  					drm_WARN_ON(&dev_priv->drm,
> -						    wm->wm[level].min_ddb_alloc !=3D U16_MAX);
> +						    wm_level->min_ddb_alloc !=3D U16_MAX);
>  					blocks =3D U32_MAX;
>  					break;
>  				}
>  				continue;
>  			}
>  =

> -			blocks +=3D wm->wm[level].min_ddb_alloc;
> -			blocks +=3D wm->uv_wm[level].min_ddb_alloc;
> +			blocks +=3D wm_level->min_ddb_alloc;
> +			blocks +=3D wm_uv_level->min_ddb_alloc;
>  		}
>  =

>  		if (blocks <=3D alloc_size) {
> @@ -4649,13 +4667,18 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>  	 * watermark level, plus an extra share of the leftover blocks
>  	 * proportional to its relative data rate.
>  	 */
> -	for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> -		const struct skl_plane_wm *wm =3D
> -			&crtc_state->wm.skl.optimal.planes[plane_id];
> +	for_each_intel_plane_on_crtc(&dev_priv->drm, intel_crtc, plane) {
> +		const struct skl_wm_level *wm_level;
> +		const struct skl_wm_level *wm_uv_level;
>  		u64 rate;
>  		u16 extra;
>  =

> -		if (plane_id =3D=3D PLANE_CURSOR)
> +		wm_level =3D skl_plane_wm_level(plane, crtc_state,
> +					      level, false);
> +		wm_uv_level =3D skl_plane_wm_level(plane, crtc_state,
> +						 level, true);
> +
> +		if (plane->id =3D=3D PLANE_CURSOR)
>  			continue;
>  =

>  		/*
> @@ -4665,22 +4688,22 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>  		if (total_data_rate =3D=3D 0)
>  			break;
>  =

> -		rate =3D plane_data_rate[plane_id];
> +		rate =3D plane_data_rate[plane->id];
>  		extra =3D min_t(u16, alloc_size,
>  			      DIV64_U64_ROUND_UP(alloc_size * rate,
>  						 total_data_rate));
> -		total[plane_id] =3D wm->wm[level].min_ddb_alloc + extra;
> +		total[plane->id] =3D wm_level->min_ddb_alloc + extra;
>  		alloc_size -=3D extra;
>  		total_data_rate -=3D rate;
>  =

>  		if (total_data_rate =3D=3D 0)
>  			break;
>  =

> -		rate =3D uv_plane_data_rate[plane_id];
> +		rate =3D uv_plane_data_rate[plane->id];
>  		extra =3D min_t(u16, alloc_size,
>  			      DIV64_U64_ROUND_UP(alloc_size * rate,
>  						 total_data_rate));
> -		uv_total[plane_id] =3D wm->uv_wm[level].min_ddb_alloc + extra;
> +		uv_total[plane->id] =3D wm_uv_level->min_ddb_alloc + extra;
>  		alloc_size -=3D extra;
>  		total_data_rate -=3D rate;
>  	}
> @@ -4688,29 +4711,29 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>  =

>  	/* Set the actual DDB start/end points for each plane */
>  	start =3D alloc->start;
> -	for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> +	for_each_intel_plane_on_crtc(&dev_priv->drm, intel_crtc, plane) {
>  		struct skl_ddb_entry *plane_alloc =3D
> -			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +			&crtc_state->wm.skl.plane_ddb_y[plane->id];
>  		struct skl_ddb_entry *uv_plane_alloc =3D
> -			&crtc_state->wm.skl.plane_ddb_uv[plane_id];
> +			&crtc_state->wm.skl.plane_ddb_uv[plane->id];
>  =

> -		if (plane_id =3D=3D PLANE_CURSOR)
> +		if (plane->id =3D=3D PLANE_CURSOR)
>  			continue;
>  =

>  		/* Gen11+ uses a separate plane for UV watermarks */
>  		drm_WARN_ON(&dev_priv->drm,
> -			    INTEL_GEN(dev_priv) >=3D 11 && uv_total[plane_id]);
> +			    INTEL_GEN(dev_priv) >=3D 11 && uv_total[plane->id]);
>  =

>  		/* Leave disabled planes at (0,0) */
> -		if (total[plane_id]) {
> +		if (total[plane->id]) {
>  			plane_alloc->start =3D start;
> -			start +=3D total[plane_id];
> +			start +=3D total[plane->id];
>  			plane_alloc->end =3D start;
>  		}
>  =

> -		if (uv_total[plane_id]) {
> +		if (uv_total[plane->id]) {
>  			uv_plane_alloc->start =3D start;
> -			start +=3D uv_total[plane_id];
> +			start +=3D uv_total[plane->id];
>  			uv_plane_alloc->end =3D start;
>  		}
>  	}
> @@ -4722,9 +4745,16 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state)
>  	 * that aren't actually possible.
>  	 */
>  	for (level++; level <=3D ilk_wm_max_level(dev_priv); level++) {
> -		for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> +		for_each_intel_plane_on_crtc(&dev_priv->drm, intel_crtc, plane) {
> +			const struct skl_wm_level *wm_level;
> +			const struct skl_wm_level *wm_uv_level;
>  			struct skl_plane_wm *wm =3D
> -				&crtc_state->wm.skl.optimal.planes[plane_id];
> +				&crtc_state->wm.skl.optimal.planes[plane->id];
> +
> +			wm_level =3D skl_plane_wm_level(plane, crtc_state,
> +						      level, false);
> +			wm_uv_level =3D skl_plane_wm_level(plane, crtc_state,
> +							 level, true);
>  =

>  			/*
>  			 * We only disable the watermarks for each plane if
> @@ -4738,9 +4768,10 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state)
>  			 *  planes must be enabled before the level will be used."
>  			 * So this is actually safe to do.
>  			 */
> -			if (wm->wm[level].min_ddb_alloc > total[plane_id] ||
> -			    wm->uv_wm[level].min_ddb_alloc > uv_total[plane_id])
> -				memset(&wm->wm[level], 0, sizeof(wm->wm[level]));
> +			if (wm_level->min_ddb_alloc > total[plane->id] ||
> +			    wm_uv_level->min_ddb_alloc > uv_total[plane->id])
> +				memset(&wm->wm[level], 0,
> +				       sizeof(struct skl_wm_level));
>  =

>  			/*
>  			 * Wa_1408961008:icl, ehl
> @@ -4748,9 +4779,14 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state)
>  			 */
>  			if (IS_GEN(dev_priv, 11) &&
>  			    level =3D=3D 1 && wm->wm[0].plane_en) {
> -				wm->wm[level].plane_res_b =3D wm->wm[0].plane_res_b;
> -				wm->wm[level].plane_res_l =3D wm->wm[0].plane_res_l;
> -				wm->wm[level].ignore_lines =3D wm->wm[0].ignore_lines;
> +				wm_level =3D skl_plane_wm_level(plane, crtc_state,
> +							      0, false);
> +				wm->wm[level].plane_res_b =3D
> +					wm_level->plane_res_b;
> +				wm->wm[level].plane_res_l =3D
> +					wm_level->plane_res_l;
> +				wm->wm[level].ignore_lines =3D
> +					wm_level->ignore_lines;
>  			}
>  		}
>  	}
> @@ -4759,11 +4795,11 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>  	 * Go back and disable the transition watermark if it turns out we
>  	 * don't have enough DDB blocks for it.
>  	 */
> -	for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> +	for_each_intel_plane_on_crtc(&dev_priv->drm, intel_crtc, plane) {
>  		struct skl_plane_wm *wm =3D
> -			&crtc_state->wm.skl.optimal.planes[plane_id];
> +			&crtc_state->wm.skl.optimal.planes[plane->id];
>  =

> -		if (wm->trans_wm.plane_res_b >=3D total[plane_id])
> +		if (wm->trans_wm.plane_res_b >=3D total[plane->id])
>  			memset(&wm->trans_wm, 0, sizeof(wm->trans_wm));
>  	}
>  =

> @@ -5354,10 +5390,13 @@ void skl_write_plane_wm(struct intel_plane *plane,
>  		&crtc_state->wm.skl.plane_ddb_y[plane_id];
>  	const struct skl_ddb_entry *ddb_uv =3D
>  		&crtc_state->wm.skl.plane_ddb_uv[plane_id];
> +	const struct skl_wm_level *wm_level;

These can be in tighter scope.
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
> +		wm_level =3D skl_plane_wm_level(plane, crtc_state, level, false);
> +
>  		skl_write_wm_level(dev_priv, PLANE_WM(pipe, plane_id, level),
> -				   &wm->wm[level]);
> +				   wm_level);
>  	}
>  	skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
>  			   &wm->trans_wm);
> @@ -5388,10 +5427,13 @@ void skl_write_cursor_wm(struct intel_plane *plan=
e,
>  		&crtc_state->wm.skl.optimal.planes[plane_id];
>  	const struct skl_ddb_entry *ddb =3D
>  		&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +	const struct skl_wm_level *wm_level;
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
> +		wm_level =3D skl_plane_wm_level(plane, crtc_state, level, false);
> +
>  		skl_write_wm_level(dev_priv, CUR_WM(pipe, level),
> -				   &wm->wm[level]);
> +				   wm_level);
>  	}
>  	skl_write_wm_level(dev_priv, CUR_WM_TRANS(pipe), &wm->trans_wm);
>  =

> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
